//
//  SettingsViewController.swift
//  Tip Calculater
//
//  Created by Tejas Patil on 3/5/17.
//  Copyright © 2017 Tejas Patil. All rights reserved.
//

import UIKit


class SettingsViewController: UIViewController {

    @IBOutlet weak var defaultTip: UITextField!
    @IBOutlet weak var defaultSplit: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    override func viewWillAppear(_ animated: Bool) {
        let defaults = UserDefaults.standard
        
        let percentIndex = defaults.string(forKey: "default_tip_percent")
        defaultTip.text = percentIndex

        let splitIndex = defaults.string(forKey: "default_split")
        defaultSplit.text = splitIndex
        
    }
    
    @IBAction func SetDefaut(_ sender: Any) {
        
        let defaults = UserDefaults.standard
        let value1 = defaultTip.text
        defaults.set(value1, forKey: "default_tip_percent")
        
        let value2 = defaultSplit.text
        defaults.set(value2, forKey: "default_split")
        
        defaults.synchronize()
    }

    
}
