//
//  prequestionsViewController.swift
//  implicitRacismTest
//
//  Created by Nirbhay Singh on 16/06/20.
//  Copyright © 2020 Nirbhay Singh. All rights reserved.
//

import UIKit
var globalGender:String!
var globalRace:String!
class prequestionsViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource{
    
    let races:[String]=["Black or African-American","White","East Asian","South Asian","Pacific Islander","American Indian/Native American","Hispanic or Latino","Multiracial"]

    let genders:[String]=["Male","Female","Non-binary"]
    @IBOutlet weak var genderPicker: UIPickerView!
    @IBOutlet weak var racePicker: UIPickerView!
    override func viewDidLoad() {
        super.viewDidLoad()
        genderPicker.delegate = self
        racePicker.delegate = self
        genderPicker.dataSource = self
        genderPicker.delegate = self
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if(pickerView.tag==0){
            return genders.count
        }else{
            return races.count
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if(pickerView.tag==0){
            return genders[row]
        }else{
            return races[row]
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if(pickerView.tag==0){
            globalGender = genders[row]
        }else{
            globalRace = races[row]
        }
    }
}
