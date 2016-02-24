//
//  UserController.swift
//  Timeline
//
//  Created by Dylan Slade on 2/23/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class UserController {
    var currentUser: User! = user[0]
    static let user = UserController.mockUsers()
    static let sharedUserController = UserController()
    
    static func userForIdentifier(identifier: String, completion: (user: User?) -> Void) {
        
    }
    
    static func fetchAllUsers(completion: (users: [User]) -> Void) {
        
    }
    
    static func followUser(user: User, completion: (success: Bool) -> Void) {
        
    }
    
    static func unfollowUser(user: User, completion: (success: Bool) -> Void) {
        
    }
    
    static func userFollowsUser(user1: User, user2: User, completion: (follows: Bool) -> Void) {
        
    }
    
    static func followByUser(user: User, completion: (users: [User]?) -> Void) {
        
    }
    
    static func authenticateUser(email: String, password: String, completion: (success: Bool) -> Void) {
        
    }
    
    static func createUser(email: String, userName: String, password: String, bio: String?, url: String?, completion: (success: Bool, user: User?) -> Void) {
        
    }
    
    static func updateUser(user: User, userName: String, password: String, bio: String?, url: String?, completion: (success: Bool, user: User?) -> Void) {
        
    }
    
    static func logoutCurrentUser() {
        
    }
    
    static func mockUsers() -> [User] {
        let mockUser1 = User(userName: "John", bio: "I like life", URL: nil, identifier: nil)
        let mockUser2 = User(userName: "MujaHeen", bio: nil, URL: nil, identifier: nil)
        let mockUser3 = User(userName: "Kellie", bio: "badaz", URL: nil, identifier: nil)
        let arrayOfMockUsers = [mockUser1, mockUser2, mockUser3]
        return arrayOfMockUsers
    }
    
    
    
}

















