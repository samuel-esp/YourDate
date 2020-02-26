//
//  EmailLoginViewController.swift
//  YourDate
//
//  Created by Samuel Esposito on /262/20.
//  Copyright © 2020 Samuel Esposito. All rights reserved.
//

import UIKit

class EmailLoginViewController: UIViewController {

    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.setLeftPaddingPoints(20)
        passwordTextField.setLeftPaddingPoints(20)
        
    }
    
    @IBAction func signInButtonPressed(_ sender: Any) {
        
        
        
        
    }
    
    
    @IBAction func forgotYourPasswordButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "resetPasswordSegue", sender: self)
        
    }
    
    
    @IBAction func signUpButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "signUpSegue2", sender: self)
        
        
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
