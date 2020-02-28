//
//  User.swift
//  YourDate
//
//  Created by Samuel Esposito on /282/20.
//  Copyright © 2020 Samuel Esposito. All rights reserved.
//

import Foundation

class User{
    
    var info: [String:String]
    
    /*
    var UID: String
    var fullName: String
    var email: String
    var birthday: String?
    var about: String?
    var location: String?
    var photo1: String?
    var photo2: String?
    var photo3: String?
    var photo4: String?
    var photo5: String?
    var photo6: String?
     */

    init(UID: String, fullName: String, email: String) {
        info = [:]
        info["UID"] = UID
        info["fullName"] = fullName
        info["email"] = email
    }
    
    /*func editProfile(fullName: String, birthday: String, Location: String, about: String) -> User{
        
        birthday
        
        
        
    }*/
    
    
    
    
}
