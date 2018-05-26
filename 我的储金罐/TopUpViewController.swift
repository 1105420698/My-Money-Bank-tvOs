//
//  TopUpViewController.swift
//  我的储金罐
//
//  Created by Runkai Ken Nico Zhang on 3/24/18.
//  Copyright © 2018 Runkai Ken Nico Zhang. All rights reserved.
//

import UIKit

class TopUpViewController: UIViewController {

    @IBOutlet weak var amount: UILabel!
    
    var chooseAmount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        amount.text = "\(chooseAmount)"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func takeout(_ sender: Any) {
        self.chooseAmount = self.chooseAmount - 1
        amount.text = "\(chooseAmount)"
        print(chooseAmount)
    }
    
    @IBAction func topup(_ sender: Any) {
        self.chooseAmount = self.chooseAmount + 1
        amount.text = "\(chooseAmount)"
        print(chooseAmount)
    }
    
    @IBAction func sure(_ sender: Any) {
        let userDefault = UserDefaults.standard
        var balance = userDefault.integer(forKey: "money")
        balance = balance + chooseAmount
        userDefault.set(balance, forKey: "money")
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
