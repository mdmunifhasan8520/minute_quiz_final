//
//  SettingsViewController.swift
//  minute_quiz
//
//  Created by MacBook Pro on 8/3/18.
//  Copyright © 2018 Code Drizzlers. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController,UIPickerViewDataSource, UIPickerViewDelegate {
    //create instance of UserDefaults
    let userDefaults = UserDefaults.standard
    
    
    @IBOutlet weak var pickerTime: UIPickerView!
    @IBOutlet weak var pickerTimeSelectionLabel: UILabel!
    
    var timerArray:[String] = Array()
    
    var mySelectedTime = 0
    
    @IBAction func RESET(_ sender: Any) {
        UserDefaults.standard.set([], forKey: "name")
        UserDefaults.standard.set(0, forKey: "hscore")
        UserDefaults.standard.set([], forKey: "scaarr")
        UserDefaults.standard.set(0, forKey: "gameTimer")
        
        //print("hello")
    }

    @IBAction func backToHomeScreen(_ sender: Any) {
         //print("settings:\(highestScore)")
        print("back to home")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timerArray.append("1")
        timerArray.append("2")
        timerArray.append("3")
        timerArray.append("4")
        
        pickerTime.dataSource = self
        pickerTime.delegate = self
        //print("This iss my asda selected time \(mySelectedTime)")
    }
    
    //UIPickerView Datasource function
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return timerArray.count
    }
    
    //UIPickerView delegate function
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return timerArray[row]
    }
     func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickerTimeSelectionLabel.text = "You want \(timerArray[row]) minutes to play"
        mySelectedTime = Int(timerArray[row])!
        UserDefaults.standard.set(mySelectedTime, forKey: "gameTimer")
        print("This iss my selected time \(mySelectedTime)")
    }
}




