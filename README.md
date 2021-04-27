# GHFollwers
You can search anyone with a github username to see one's followers, and checck on one's user detail page.
 
## Screenshots
<img src="GHPreviewAssets/GHF-Search.gif" width=200 align=left>
<img src="GHPreviewAssets/GHF-SearchWithNoFollower.gif" width=200 align=left>
<img src="GHPreviewAssets/GHF-UserInfo.gif" width=200 align=left>
<img src="GHPreviewAssets/GHF-Favorites(add).gif" width=200>


### Flow(what Github Follwers will do)
  1. search a github user and display his/her all followers
  2. show the follower's detail infomation:
      - username, name, location, bio
      - public repos, gists, and the link to profile
      - follwers, follering, and his/her followers
  3. Display/Manage user's favorite github users
      - user can add(store) their own favorite after searched
      - user can also delete them from favorites :(

### Tech
#### MVC
  - Basic MVC design to separate view and viewContorller
  
#### CollectionView
  - Utilizing custom UICollectionViewFlowLayout to layout UICollectionView.
  
#### Search
  - Use UISearchController combine with NSDiffableDataSourceSnapshot to achieve a smooth animation search expirence.
