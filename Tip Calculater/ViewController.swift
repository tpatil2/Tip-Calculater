//
//  ViewController.swift
//  Tip Calculater
//
//  Created by Tejas Patil on 3/5/17.
//  Copyright © 2017 Tejas Patil. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var tipBar: UISegmentedControl!
    @IBOutlet weak var tipLable: UILabel!
    @IBOutlet weak var totalLable: UILabel!
    @IBOutlet weak var inputBill: UITextField!
    @IBOutlet weak var pickerview: UIPickerView!
    @IBOutlet weak var picktip: UIPickerView!
    @IBOutlet weak var splitBill: UILabel!
    
    var temptip:Double = 0.0
    
    let tipPercent = ["10", "15", "18", "20", "22", "23", "25"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return tipPercent[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return tipPercent.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        tipLable.text = tipPercent[row]
        temptip = Double(tipLable.text!) ?? 0
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func OnTap(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func CalTip(_ sender: AnyObject) {
        
        let numSplit = [2, 3, 4, 5, 6]
    
        let bill = Double(inputBill.text!) ?? 0
        print(temptip)

        let tip = bill * temptip * 0.01
        let total = bill+tip
        let splitbill = total / Double(numSplit[tipBar.selectedSegmentIndex])

        
        tipLable.text = String(format: "%.2f",tip)
        totalLable.text = String(format: "%.2f",total)
        splitBill.text = String(format: "%.2f",splitbill)


        
    }

}

