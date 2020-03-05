//
//  GFError.swift
//  GHFollowers
//
//  Created by Shihchiao Chao on 1/12/20.
//  Copyright © 2020 Shihchiao Chao. All rights reserved.
//

import Foundation

enum GFError: String, Error {
    
    case InvalidUsername = "This username created an invalid request. Please try again."
    case UnableToComplete = "Unable to complete your request. Please check your internet connection."
    case InvalidResponse = "Invalid response from the server. Please try again."
    case InvalidData = "The data received from the server was invalid. Please try again."
    case UnableToFavorite = "There was an error favoriting this user. Please try again."
    case AlreadyInFavorites = "You've already favorited this user. You must REALLY like them!"
}
