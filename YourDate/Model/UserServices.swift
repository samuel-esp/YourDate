//
//  UserServices.swift
//  YourDate
//
//  Created by Samuel Esposito on /272/20.
//  Copyright © 2020 Samuel Esposito. All rights reserved.
//

import Foundation
import FirebaseDatabase
import FirebaseCore

class UserServices{

    static var shared = UserServices()
    lazy var databaseRoot = Database.database().reference()
    lazy var usersRoot = databaseRoot.child("users")
    
    func registerUser(UID: String, email: String, fullName: String) -> Void {

        //1: Create New Instance of User Dictionary
        var newUser: [String:String] = [:]
        newUser["email"] = email
        newUser["fullName"] = fullName
        
        //2: Append User To The Database
        usersRoot.child(UID).setValue(newUser)
        
    }
    
    
    
}
