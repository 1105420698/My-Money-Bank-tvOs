//
//  ViewController.swift
//  我的储金罐
//
//  Created by Runkai Ken Nico Zhang on 3/24/18.
//  Copyright © 2018 Runkai Ken Nico Zhang. All rights reserved.
//

import UIKit

struct usernames {
    static let runkai = "runkai"
    static let xinfa = "xinfa"
    static let weiping = "weiping"
}

struct passwords {
    static let runkai = "xiaodada2004"
    static let xinfa = "password"
    static let weiping = "password"
}

struct logOnUser {
    static var user = ""
}

struct userTrueName {
    static let runkai = "章润楷"
    static let xinfa = "章新法"
    static let weiping = "赵伟萍"
}

class ViewController: UIViewController {

    @IBOutlet weak var usrnmeField: UITextField!
    
    @IBOutlet weak var psswdField: UITextField!
    
    @IBOutlet weak var loginError: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        loginError.isHidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func loginBotton(_ sender: Any) {
        let userNameInput = usrnmeField.text
        let passwordInput = psswdField.text
        
        //print("The Username input is \(userNameInput!)")
        //print("The Password input is \(passwordInput!)")
        
        if userNameInput == usernames.runkai {
            if passwordInput == passwords.runkai {
                //print("Welcome Runkai")
                logOnUser.user = usernames.runkai
                loginError.isHidden = true
                performSegue(withIdentifier: "loginSegue", sender: self)
            }
            else {
                //print("The username or password is wrong!")
                loginError.isHidden = false
            }
        }
        else {
            //print("The username or password is wrong!")
            loginError.isHidden = false
        }
        
        if userNameInput == usernames.xinfa {
            if passwordInput == passwords.xinfa {
                //print("Welcome Xinfa")
                logOnUser.user = usernames.xinfa
                loginError.isHidden = true
                performSegue(withIdentifier: "loginSegue", sender: self)
            }
            else {
                //print("The username or password is wrong!")
                loginError.isHidden = false
            }
        }
        else {
            //print("The username or password is wrong!")
            loginError.isHidden = false
        }
        
        if userNameInput == usernames.weiping {
            if passwordInput == passwords.weiping {
                //print("Welcome Weiping")
                logOnUser.user = usernames.weiping
                loginError.isHidden = true
                performSegue(withIdentifier: "loginSegue", sender: self)
            }
            else {
                //print("The username or password is wrong!")
                loginError.isHidden = false
            }
        }
        else {
            //print("The username or password is wrong!")
            loginError.isHidden = false
        }
        //print(logOnUser.user)
    }
    
}

