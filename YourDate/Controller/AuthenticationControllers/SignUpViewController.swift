//
//  SignUpViewController.swift
//  YourDate
//
//  Created by Samuel Esposito on /262/20.
//  Copyright © 2020 Samuel Esposito. All rights reserved.
//

import UIKit
import FirebaseAuth

class SignUpViewController: UIViewController {

    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var fullNameTextField: UITextField!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var confirmPasswordTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var errorTextField: UILabel!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        fullNameTextField.setLeftPaddingPoints(20)
        emailTextField.setLeftPaddingPoints(20)
        passwordTextField.setLeftPaddingPoints(20)
        confirmPasswordTextField.setLeftPaddingPoints(20)
        signUpButton.isEnabled = false
        signUpButton.setTitleColor(UIColor.gray, for: UIControl.State.normal)
        handleTextField()
        handleCorrectPasswords()
    }
    
    func handleTextField(){
        
        fullNameTextField.addTarget(self, action: #selector(textFieldDidChange), for: UIControl.Event.editingChanged)
        emailTextField.addTarget(self, action: #selector(textFieldDidChange), for: UIControl.Event.editingChanged)
        confirmPasswordTextField.addTarget(self, action: #selector(textFieldDidChange), for: UIControl.Event.editingChanged)
        passwordTextField.addTarget(self, action: #selector(textFieldDidChange), for: UIControl.Event.editingChanged)
        
    }
    
    func handleCorrectPasswords(){
        
        passwordTextField.addTarget(self, action: #selector(passwordDidMatch), for: UIControl.Event.editingChanged)
        confirmPasswordTextField.addTarget(self, action: #selector(passwordDidMatch), for: UIControl.Event.editingChanged)
        
    }
    
    @objc func textFieldDidChange(){
        
        guard let fullName = fullNameTextField.text, !fullName.isEmpty,
        let email = emailTextField.text, !email.isEmpty,
        let password = passwordTextField.text, !password.isEmpty,
        let confirmPassword = confirmPasswordTextField.text, !confirmPassword.isEmpty else{
            signUpButton.isEnabled = false
            signUpButton.setTitleColor(UIColor.gray, for: UIControl.State.normal)
            return
        }
        
        signUpButton.isEnabled = true
        signUpButton.setTitleColor(UIColor.black, for: UIControl.State.normal)

        
    }
    
    @objc func passwordDidMatch(){
        
        let password = passwordTextField.text
        let confirmPassword = confirmPasswordTextField.text
        let passBool = !password!.isEmpty
        let confPassBool = !confirmPassword!.isEmpty
        
        if(password==confirmPassword && passBool && confPassBool){
            errorTextField.text = ""
            signUpButton.isEnabled = true
            signUpButton.setTitleColor(UIColor.black, for: UIControl.State.normal)
            
        }else{
            errorTextField.text = "Passwords don't match"
            signUpButton.isEnabled = false
            signUpButton.setTitleColor(UIColor.gray, for: UIControl.State.normal)
        }
        
    }
    
    @IBAction func signUpButtonPressed(_ sender: Any) {
        
        AuthServices.shared.signUp(email: emailTextField.text!, password: passwordTextField.text!, fullName: fullNameTextField.text!, onSuccess: {
            self.performSegue(withIdentifier: "signUpCompletedSegue", sender: self)
        }) { (errorstring) in
            self.errorTextField.text = errorstring
        }
        
    }
    
    @IBAction func signInButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "alreadyUserSegue", sender: self)
        
    }

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
