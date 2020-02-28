//
//  HomeViewController.swift
//  YourDate
//
//  Created by Samuel Esposito on /272/20.
//  Copyright © 2020 Samuel Esposito. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {


    @IBOutlet weak var currentUserButton: UIBarButtonItem!
    @IBOutlet weak var logOutButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func currentUserButtonTouched(_ sender: Any) {
        
        AuthServices.shared.currentUser()
        
    }
    
    @IBAction func logOutButtonTouched(_ sender: Any) {

        print("user is logging out")
        
        AuthServices.shared.signOut {
            print("success")
            self.performSegue(withIdentifier: "toLoginPageSegue", sender: self)
        }
        
    }
  
           
        /*AuthServices.shared.signOut {
            print("user not logged")
            self.performSegue(withIdentifier: "toLoginSegue", sender: self)
        }*/
        
    


}
