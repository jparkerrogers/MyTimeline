//
//  UserSearchTableViewController.swift
//  Timeline
//
//  Created by Dylan Slade on 2/23/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation
import UIKit

class UserSearchTableViewController: UITableViewController {
    var usersDataSource: [User] = []
    
    // MARK: - Properties
    @IBOutlet weak var friendSegmentedControl: UISegmentedControl!
    var mode: ViewMode {
        get {
            return ViewMode(rawValue: friendSegmentedControl.selectedSegmentIndex)!
        }
    }
    
    enum ViewMode: Int {
        case Friends
        case AllUsers
        
        func users(completion: (users: [User]?) -> Void) {
            switch self {
            case .Friends:
                UserController.followByUser(UserController.sharedUserController.currentUser, completion: { (followers) -> Void in
                    completion(users: followers)
                })
            case.AllUsers:
                UserController.fetchAllUsers({ (users) -> Void in
                    completion(users: users)
                })
            }
        }
    }
    
    override func viewWillAppear(animated: Bool) {
        print("the raw value of \(mode) is \(mode.rawValue)")
    }
}