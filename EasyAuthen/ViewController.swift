//
//  ViewController.swift
//  EasyAuthen
//
//  Created by MasterUNG on 19/5/2561 BE.
//  Copyright © 2561 MasterUNG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    Explicit
    var userString: String?
    var passwordString: String?
    
    var authenDictionary = ["user1": "p123", "user2": "p223", "user3": "p323", "user4": "p423" ]
    
    var alertString = ["User False", "Password False", "Welcome"]
    
    
    
    
    
    @IBOutlet weak var userTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func loginButton(_ sender: Any) {
        
//        Get Value From TextField
        userString = userTextField.text
        passwordString = passwordTextField.text
        
        print("User ==> \(userString)")
        print("Password ==> \(passwordString)")
        
        var resultString = authenDictionary[userString!]
        print("resultString ==> \(resultString)")
        
        if resultString == nil {
            print("User False")
            resultLabel.text = alertString[0]
        } else if (passwordString != resultString) {
            resultLabel.text = alertString[1]
        } else {
            resultLabel.text = alertString[2]
        }
        
        
    }   // loginButton
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

