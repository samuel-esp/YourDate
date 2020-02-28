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

        //1: Create New Instance of User
        let newUser = User(UID: UID, fullName: fullName, email: email)
        
        //2: Append User Info To The Database
        usersRoot.child(UID).setValue(newUser.info)
        
    }
    
    /*func editUser(UID: String){
        
        usersRoot.
        
        
        
        
    }*/
    
    
    
}
