//
//  MainViewController.swift
//  我的储金罐
//
//  Created by Runkai Ken Nico Zhang on 3/24/18.
//  Copyright © 2018 Runkai Ken Nico Zhang. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    @IBOutlet weak var balance: UILabel!

    @IBOutlet weak var throwed: UILabel!
    
    let userDefault = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        if logOnUser.user == usernames.runkai {
            welcomeLabel.text = "你好, \(userTrueName.runkai)!"
        }
        
        if logOnUser.user == usernames.xinfa {
            welcomeLabel.text = "你好, \(userTrueName.xinfa)!"
        }
        
        if logOnUser.user == usernames.weiping {
            welcomeLabel.text = "你好, \(userTrueName.weiping)!"
        }
        
        let balances = userDefault.integer(forKey: "money")
        balance.text = "\(balances)"
        let throwedMoney = userDefault.integer(forKey: "throwedMoney")
        throwed.text = "\(throwedMoney)"

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func throwing(_ sender: Any) {
        let moneyLeft = userDefault.integer(forKey: "money")
        if moneyLeft != 0 {
            var balances = userDefault.integer(forKey: "money")
            balances = balances - 1
            userDefault.set(balances, forKey: "money")
            balance.text = "\(balances)"
            var throwedMoney = userDefault.integer(forKey: "throwedMoney")
            throwedMoney = throwedMoney + 1
            userDefault.set(throwedMoney, forKey: "throwedMoney")
            throwed.text = "\(throwedMoney)"
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
