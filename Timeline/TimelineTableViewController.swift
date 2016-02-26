//
//  TimelineTableViewController.swift
//  Timeline
//
//  Created by Dylan Slade on 2/23/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation
import UIKit

class TimelineTableViewController: UITableViewController {
    var posts: [Post] = []
    
    override func viewWillAppear(animated: Bool) {
        guard let currentUser = UserController.sharedUserController.currentUser else {
            tabBarController?.performSegueWithIdentifier("toLoginOrSignup", sender: nil)
            return
        }
        if posts.count > 0 {
            //Here we would load the timeline
        }
        // Here we would do nothing since we don't need to load any views because the user does not have any posts
    }
    
}