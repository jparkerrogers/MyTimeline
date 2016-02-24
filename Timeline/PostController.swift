//
//  PostController.swift
//  Timeline
//
//  Created by Dylan Slade on 2/24/16.
//  Copyright © 2016 DevMountain. All rights reserved.
//

import Foundation
import UIKit

class PostController {
    static func fetchTimeLineForUser(user: User, completion: (posts: [Post]) -> Void) {
        completion(posts: mockPosts())
    }
    
    static func addPost(image: UIImage, caption: String?, completion: (success: Bool, post: Post?) -> Void) {
        completion(success: true, post: mockPosts().last)
    }
    
    static func postFromIdentifier(identifier: String, completion: (post: Post?) -> Void) {
        completion(post: mockPosts().last)
    }
    
    static func postsForUser(user: User, completion: (posts: [Post]?) -> Void) {
        completion(posts: mockPosts())
    }
    
    static func deletePost(post: Post) {
        
    }
    
    static func addCommentTextWithPost(string: String, post: Post, completion: (success: Bool, post: Post?) -> Void) {
        completion(success: true, post: mockPosts().last)
    }
    
    static func deleteComment(comment: Comment, completion: (success: Bool, post: Post?) -> Void) {
        completion(success: true, post: mockPosts().last)
    }
    
    static func addLikeToPost(post: Post, completion: (success: Bool, post: Post?) -> Void) {
        completion(success: true, post: mockPosts().last)
    }
    
    static func deleteLike(like: Like, completion: (success: Bool, post: Post?) -> Void) {
        completion(success: true, post: mockPosts().last)
    }
    
    static func orderPosts(posts: [Post]) -> [Post] {
        return []
    }
    
    static func mockPosts() -> [Post] {
        let sampleImageIdentifier = "-K1l4125TYvKMc7rcp5e"
        
        let like1 = Like(userName: "thisguy", postIdentifier: "ayyy")
        let like2 = Like(userName: "cheeky", postIdentifier: "ID")
        
        let comment1 = Comment(userName: "yooo", text: "heyyyy", postIdentifier: "yyyyoy")
        let comment2 = Comment(userName: "Ayyo", text: "yoayy", postIdentifier: "yesyoo")
        
        let post1 = Post(imageEndPoint: sampleImageIdentifier, caption: "Check out this photo", userName: "thiguy")
        let post2 = Post(imageEndPoint: sampleImageIdentifier, caption: "yesa", userName: "imaSexyGuy", comments: [comment1], likes: [like1], identifier: "hello")
        let post3 = Post(imageEndPoint: sampleImageIdentifier, caption: "les", userName: "hmm", comments: [comment1, comment2], likes: [like1, like2], identifier: "yola")
        
        return [post1, post2, post3]
    }
    
}










