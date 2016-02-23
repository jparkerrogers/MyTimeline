//
//  UserController.swift
//  Timeline
//
//  Created by Dylan Slade on 2/23/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation

class UserController {
    var currentUser: User! = nil
    static let sharedUserController = UserController()
    
    static func userForIdentifier(identifier: String, completion: (user: User?) -> Void) {
        
    }
}