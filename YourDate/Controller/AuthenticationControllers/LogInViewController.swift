//
//  LogInViewController.swift
//  YourDate
//
//  Created by Samuel Esposito on /262/20.
//  Copyright © 2020 Samuel Esposito. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    @IBOutlet weak var logInWithEmailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logInButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "signInSegue", sender: self)
        
    }
    
    @IBAction func signUpButtonPressed(_ sender: Any) {
        
        performSegue(withIdentifier: "signUpSegue", sender: self)
        
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
