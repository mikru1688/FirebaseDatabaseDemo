//
//  MovieReviewItem.swift
//  FirebaseDatabaseDemo
//
//  Created by Frank.Chen on 2017/4/24.
//  Copyright © 2017年 Frank.Chen. All rights reserved.
//

import Foundation
import Firebase

struct MovieReviewItem {
    
    var childId: String
    var movieId: String
    var movieName: String
    var movieReview: String
    var userId: String
    var userEmail: String    
    var createDate: String
    
    init(snapshot: FIRDataSnapshot) {
        print(snapshot)
        // 取出snapshot的值(JSON)
        
        let snapshotValue: [String: AnyObject] = snapshot.value as! [String: AnyObject]
        self.childId = snapshotValue["childId"] as! String
        self.movieId = snapshotValue["movieId"] as! String
        self.movieName = snapshotValue["movieName"] as! String
        self.movieReview = snapshotValue["movieReview"] as! String
        self.userId = snapshotValue["userId"] as! String
        self.userEmail = snapshotValue["userEmail"] as! String
        self.createDate = snapshotValue["createDate"] as! String
    }

}
