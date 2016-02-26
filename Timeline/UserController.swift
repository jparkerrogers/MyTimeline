//
//  UserController.swift
//  Timeline
//
//  Created by Dylan Slade on 2/23/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class UserController {
    var currentUser: User! = UserController.mockUsers().first // .first is equal to [0]
    static let sharedUserController = UserController()
    
    static func userForIdentifier(identifier: String, completion: (user: User?) -> Void) {
        completion(user: mockUsers().first)
    }
    
    static func fetchAllUsers(completion: (users: [User]) -> Void) {
        completion(users: mockUsers())
    }
    
    static func followUser(user: User, completion: (success: Bool) -> Void) {
        completion(success: true)
         let jordan = "Gordon"
    }
    
    static func unfollowUser(user: User, completion: (success: Bool) -> Void) {
        completion(success: true)
    }
    
    static func userFollowsUser(user1: User, user2: User, completion: (follows: Bool) -> Void) {
        completion(follows: true)
    }
    
    static func followByUser(user: User, completion: (followers: [User]?) -> Void) {
        completion(followers: mockUsers())
    }
    
    static func authenticateUser(email: String, password: String, completion: (success: Bool) -> Void) {
        completion(success: true)
    }
    
    static func createUser(email: String, userName: String, password: String, bio: String?, url: String?, completion: (success: Bool, user: User?) -> Void) {
        completion(success: true, user: mockUsers().first)
    }
    
    static func updateUser(user: User, userName: String, password: String, bio: String?, url: String?, completion: (success: Bool, user: User?) -> Void) {
        completion(success: true, user: mockUsers().first)
    }
    
    static func logoutCurrentUser() {
    }
    
    static func mockUsers() -> [User] {
        let mockUser1 = User(userName: "John", bio: "I like life", URL: nil, identifier: "1234")
        let mockUser2 = User(userName: "MujaHeen", bio: nil, URL: nil, identifier: "4321")
        let mockUser3 = User(userName: "Kellie", bio: "badaz", URL: nil, identifier: "99")
        let arrayOfMockUsers = [mockUser1, mockUser2, mockUser3]
        return arrayOfMockUsers
    }
    
}