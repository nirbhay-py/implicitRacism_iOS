//
//  testViewController.swift
//  implicitRacismTest
//
//  Created by Nirbhay Singh on 16/06/20.
//  Copyright © 2020 Nirbhay Singh. All rights reserved.
//

import UIKit

class testViewController: UIViewController {
    @IBOutlet weak var wrongLbl: UILabel!
    @IBOutlet weak var faceImg: UIImageView!
    var count = 1
    lazy var start = Date()
    var answers:[String]=["A","A","A","A","A","A","E","E","E","E","E","E"]
    var trialTimes:[Double]=[]
    var images:[String]=["bf1","bf2","bf3","bm1","bm2","bm3","wf1","wf2","wf3","wm1","wm2","wm3"]
    override func viewDidLoad() {
        super.viewDidLoad()
        faceImg.image = UIImage(named: "faces/bf1_nc.jpg")
        wrongLbl.isHidden = true
        start=Date()
    }
    @IBAction func A_pressed(_ sender: Any) {
        wrongLbl.isHidden = true
        if(count<=6){
            proceed()
            trialTimes.append(start.timeIntervalSinceNow * -1)
        }else{
            wrongLbl.isHidden = false
        }
        count+=1
        self.start = Date()
    }
    @IBAction func E_pressed(_ sender: Any) {
        wrongLbl.isHidden = true
        if(count>6){
            proceed()
            trialTimes.append(start.timeIntervalSinceNow * -1)
        }else{
            wrongLbl.isHidden = false
        }
        count+=1
        self.start = Date()
    }
    func proceed(){
        if(count==12){
            let alert=UIAlertController(title: "Done", message: "You have reached the end of the test", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Cool", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
            print(self.trialTimes)
        }else{
            self.faceImg.image = UIImage(named: "faces/"+images[self.count]+"_nc.jpg")
        }
    }
}
