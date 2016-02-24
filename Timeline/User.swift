//
//  User.swift
//  Timeline
//
//  Created by Dylan Slade on 2/23/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

struct User: Equatable {
    var userName: String
    var bio: String?
    var URL: String?
    var identifier: String?
    
    init(userName: String, bio: String? = nil, URL: String? = nil, identifier: String) {
        self.userName = userName
        self.bio = bio
        self.URL = URL
        self.identifier = identifier
    }
}
func ==(lhs: User, rhs: User) -> Bool {
    return (lhs.userName == rhs.userName) && (lhs.identifier == rhs.identifier)
}