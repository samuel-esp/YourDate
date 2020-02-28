//
//  LaunchScreenViewController.swift
//  YourDate
//
//  Created by Samuel Esposito on /262/20.
//  Copyright © 2020 Samuel Esposito. All rights reserved.
//

import UIKit
import FirebaseAuth

class LaunchScreenViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        Auth.auth().currentUser
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        if(AuthServices.shared.isUserLogged()){
            print(Auth.auth().currentUser)
            AuthServices.shared.currentUser()
            Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { (timer) in
                self.performSegue(withIdentifier: "autoLoginSegue", sender: self)
        }
        }else{
            print(Auth.auth().currentUser)
            //AuthServices.shared.currentUser()
            Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { (timer) in
            self.performSegue(withIdentifier: "launchScreenSegue", sender: self)
            return
        }
        }
    }


}

