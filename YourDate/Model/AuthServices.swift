//
//  AuthServices.swift
//  YourDate
//
//  Created by Samuel Esposito on /272/20.
//  Copyright © 2020 Samuel Esposito. All rights reserved.
//

import Foundation
import Firebase
import FirebaseAuth
import FirebaseDatabase

class AuthServices{
    
    static var shared = AuthServices()
    
    func signUp(email: String, password: String, fullName: String, onSuccess: @escaping () -> Void, onError: @escaping (_ error: String) -> Void) -> Void {
        
        //1: Authenticate User
        Auth.auth().createUser(withEmail: email, password: password) { (user, error) in
            if(error != nil){
                //2: If The Authentication Isn't Succesful, Escape
                onError(error!.localizedDescription)
                return
            }else{
                //3: If The Authentication Is Correct Save User To Database
                UserServices.shared.registerUser(UID: user!.user.uid, email: email, fullName: fullName)
                onSuccess()
            }
            
        }
        
        /*func signIn(){
            
            Auth.auth().sign
            
            
        }*/
        
        
    }
    
    
    
    
    
    
    
}