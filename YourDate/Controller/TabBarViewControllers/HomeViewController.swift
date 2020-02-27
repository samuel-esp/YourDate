//
//  HomeViewController.swift
//  YourDate
//
//  Created by Samuel Esposito on /272/20.
//  Copyright © 2020 Samuel Esposito. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {


    @IBOutlet weak var logOutButton: UIBarButtonItem!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("touched")
        // Do any additional setup after loading the view.
    }
    
    @IBAction func logOutButtonTouched(_ sender: Any) {

        print("touched2")
        AuthServices.shared.signOut {
            print("user not logged")
            self.performSegue(withIdentifier: "toLoginPageSegue", sender: self)
        }
        
    }
  
           
        /*AuthServices.shared.signOut {
            print("user not logged")
            self.performSegue(withIdentifier: "toLoginSegue", sender: self)
        }*/
        
    


}
