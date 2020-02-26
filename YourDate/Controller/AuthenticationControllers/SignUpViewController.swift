//
//  SignUpViewController.swift
//  YourDate
//
//  Created by Samuel Esposito on /262/20.
//  Copyright © 2020 Samuel Esposito. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameTextField.setLeftPaddingPoints(20)
        emailTextField.setLeftPaddingPoints(20)
        passwordTextField.setLeftPaddingPoints(20)
        confirmPasswordTextField.setLeftPaddingPoints(20)
    }
    
    @IBAction func signUpButtonPressed(_ sender: Any) {
        
        
        
    }
    
    @IBAction func signInButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "alreadyUserSegue", sender: self)
        
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

extension UITextField {
    func setLeftPaddingPoints(_ amount:CGFloat){
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    func setRightPaddingPoints(_ amount:CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: self.frame.size.height))
        self.rightView = paddingView
        self.rightViewMode = .always
    }
}
