//
//  PersistenceManager.swift
//  GHFollowers
//
//  Created by Shihchiao Chao on 1/31/20.
//  Copyright © 2020 Shihchiao Chao. All rights reserved.
//

import Foundation

enum PersistenceActionType {
    case add, remove
}

enum PersistenceManager {
    static private let defaults = UserDefaults.standard
    
    enum  Keys {
        static let favorites = "favorites"
    }
    
    static func updateWith(favorite: Follower, actionType: PersistenceActionType, completion: @escaping (GFError?) -> Void) {
        retrieveFavorites { (result) in
            switch result {
                
            case .success(var favorites):
                switch actionType {
                    
                case .add:
                    guard !favorites.contains(favorite) else {
                        completion(.AlreadyInFavorites)
                        return
                    }
                    
                    favorites.append(favorite)
                    
                case .remove:
                    favorites.removeAll(where: { $0.login == favorite.login })
                }
                
                completion(save(favorites: favorites))
                
            case .failure(let error):
                completion(error)
            }
        }
    }
    
    static func retrieveFavorites(completion: @escaping (Result<[Follower], GFError>) -> Void) {
        guard let favoritesData = defaults.object(forKey: Keys.favorites) as? Data else {
            completion(.success([]))
            return
        }
        
        do {
            let decoder = JSONDecoder()
            let favorites = try decoder.decode([Follower].self, from: favoritesData)
            completion(.success(favorites))
            
        } catch {
            completion(.failure(.UnableToFavorite))
        }
    }
    
    static func save(favorites: [Follower]) -> GFError? {
        
        do {
            let encoder = JSONEncoder()
            let encoderedFavorites = try encoder.encode(favorites)
            defaults.set(encoderedFavorites, forKey: Keys.favorites)
            return nil
            
        } catch {
            return .UnableToFavorite
        }
    }
}
