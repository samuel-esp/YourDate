//
//  ResetPasswordViewController.swift
//  YourDate
//
//  Created by Samuel Esposito on /262/20.
//  Copyright © 2020 Samuel Esposito. All rights reserved.
//

import UIKit

class ResetPasswordViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func goBackToSignInButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "alreadyUserSegue2", sender: self)
        
    }
    
    @IBAction func signUpButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "signUpSegue3", sender: self)
        
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
