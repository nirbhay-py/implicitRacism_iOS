//
//  testViewController.swift
//  implicitRacismTest
//
//  Created by Nirbhay Singh on 16/06/20.
//  Copyright © 2020 Nirbhay Singh. All rights reserved.
//

import UIKit

class testViewController: UIViewController {
    @IBOutlet weak var wordLbl: UILabel!
    @IBOutlet weak var wrongLbl: UILabel!
    @IBOutlet weak var faceImg: UIImageView!
    @IBOutlet weak var prompt: UILabel!
    var tcount = 0
    var t2count = 0
    var t3count = 0
    var t5count = 0
    var t6count = 0
    var t6Times:[Double]=[]
    var t4count_img = 0
    var t4count_word = 0
    var t7count_img = 0
    var t7count_word = 0
    var t7Times:[Double]=[]
    var round = 1
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    var images:[String]=["bf1","wf2","wf3","bm1","bm3","wf1","bf3","wm1","bm2","wm2","wm3","bf2"].shuffled()
    let posWords:[String] = ["love","cheer","friend","pleasure","excellent","glad"]
    let negWords:[String] = ["abuse","grief","poison","despise","failure","angry"]
    var words:[String]!
    var state:Int!
    var start:Date!
    var t3Times:[Double]=[]
    var t4Times:[Double]=[]
    override func viewDidLoad() {
        state = Int.random(in: 0...1)
        wordLbl.isHidden = true
        super.viewDidLoad()
        var initImg = images[tcount]
        initImg = "faces/"+initImg+"_nc.jpg"
        print(initImg)
        faceImg.image = UIImage(named: initImg)
        wrongLbl.isHidden = true
        words = posWords + negWords
        words = words.shuffled()
    }
    @IBAction func A_pressed(_ sender: Any) {
        wrongLbl.isHidden = true
        if(round==1){
            wrongLbl.isHidden = true
            print(images[tcount])
            if(images[tcount].hasPrefix("b")){
                print("black_corr")
                proceed()
            }else{
                wrongLbl.isHidden = false
            }
        }else if(round==2){
            if(posWords.contains(words[t2count])){
                proceed2()
            }else{
                 wrongLbl.isHidden = false
            }
        }else if(round==3){
            print("round3")
            print(words[t3count])
            if(self.state==0){
                if(negWords.contains(words[t3count])){
                    proceed3()
                    t3Times.append(start.timeIntervalSinceNow * -1)
                    self.start = Date()
                }else{
                     wrongLbl.isHidden = false
                }
            }else{
                if(images[t3count].hasPrefix("b")){
                    proceed3()
                    t3Times.append(start.timeIntervalSinceNow * -1)
                    self.start = Date()
                }else{
                    wrongLbl.isHidden = false
                }
            }
        }else if(round==4){
            print("round4")
            if(self.state==0){
                if(negWords.contains(words[t4count_word])){
                    proceed4()
                    t3Times.append(start.timeIntervalSinceNow * -1)
                    self.start = Date()
                }else{
                     wrongLbl.isHidden = false
                }
            }else{
                if(images[t4count_img].hasPrefix("b")){
                    proceed4()
                    t3Times.append(start.timeIntervalSinceNow * -1)
                    self.start = Date()
                }else{
                    wrongLbl.isHidden = false
                }
            }
        }else if(round==5){
            wrongLbl.isHidden = true
            if(images[t5count].hasPrefix("w")){
                print("white_corr")
                proceed5()
            }else{
                wrongLbl.isHidden = false
            }
        }else if(round==6){
            print("round6")
            print(words[t6count])
            if(self.state==0){
                if(posWords.contains(words[t6count])){
                    proceed6()
                    t6Times.append(start.timeIntervalSinceNow * -1)
                    self.start = Date()
                }else{
                     wrongLbl.isHidden = false
                }
            }else{
                if(images[t6count].hasPrefix("w")){
                    proceed6()
                    t6Times.append(start.timeIntervalSinceNow * -1)
                    self.start = Date()
                }else{
                    wrongLbl.isHidden = false
                }
            }
        }else if(round==7){
            print("round7")
            if(self.state==0){
                if(posWords.contains(words[t4count_word])){
                    proceed7()
                    t7Times.append(start.timeIntervalSinceNow * -1)
                    self.start = Date()
                }else{
                     wrongLbl.isHidden = false
                }
            }else{
                if(images[t7count_img].hasPrefix("b")){
                    proceed7()
                    t7Times.append(start.timeIntervalSinceNow * -1)
                    self.start = Date()
                }else{
                    wrongLbl.isHidden = false
                }
            }
        }
        
        
    }
    @IBAction func E_pressed(_ sender: Any) {
        wrongLbl.isHidden = true
        if(round==1){
            print(images[tcount])
            if(images[tcount].hasPrefix("w")){
                print("white_corr")
                proceed()
            }else{
                wrongLbl.isHidden = false
            }
        }else if(round==2){
            if(negWords.contains(words[t2count])){
                proceed2()
            }else{
                 wrongLbl.isHidden = false
            }
        }else if(round==3){
            print("round3")
            if(self.state==0){
                if(posWords.contains(words[t3count])){
                    proceed3()
                }else{
                     wrongLbl.isHidden = false
                }
            }else{
                if(images[t3count].hasPrefix("w")){
                    proceed3()
                }else{
                    wrongLbl.isHidden = false
                }
            }
        }else if(round==4){
            print("round4")
            if(self.state==0){
                if(posWords.contains(words[t4count_word])){
                    proceed4()
                    t4Times.append(start.timeIntervalSinceNow * -1)
                    self.start = Date()
                }else{
                     wrongLbl.isHidden = false
                }
            }else{
                if(images[t4count_img].hasPrefix("w")){
                    proceed4()
                    t4Times.append(start.timeIntervalSinceNow * -1)
                    self.start = Date()
                }else{
                    wrongLbl.isHidden = false
                }
            }
        }else if(round==5){
            wrongLbl.isHidden = true
            if(images[t5count].hasPrefix("b")){
                print("white_corr")
                proceed5()
            }else{
                wrongLbl.isHidden = false
            }
        }
        else if(round==6){
            print("round6")
            print(words[t6count])
            if(self.state==0){
                if(negWords.contains(words[t6count])){
                    proceed6()
                    t6Times.append(start.timeIntervalSinceNow * -1)
                    self.start = Date()
                }else{
                     wrongLbl.isHidden = false
                }
            }else{
                if(images[t6count].hasPrefix("b")){
                    proceed6()
                    t6Times.append(start.timeIntervalSinceNow * -1)
                    self.start = Date()
                }else{
                    wrongLbl.isHidden = false
                }
            }
        }else if(round==7){
            print("round7")
            if(self.state==0){
                if(posWords.contains(words[t4count_word])){
                    proceed7()
                    t7Times.append(start.timeIntervalSinceNow * -1)
                    self.start = Date()
                }else{
                     wrongLbl.isHidden = false
                }
            }else{
                if(images[t7count_img].hasPrefix("b")){
                    proceed7()
                    t7Times.append(start.timeIntervalSinceNow * -1)
                    self.start = Date()
                }else{
                    wrongLbl.isHidden = false
                }
            }
        }
    }
    func proceed(){
        tcount+=1
        print("called")
        if(tcount>11){
            print("t1over")
            self.faceImg.isHidden = true
            wordLbl.isHidden = false
            self.wordLbl.text = words[t2count]
            self.prompt.text = "Press P if the word below seems positive or N if it seems negative."
            btn1.setTitle("P", for: .normal)
            btn2.setTitle("N", for: .normal)
            round = 2
            
        }else{
            self.faceImg.image = UIImage(named: "faces/"+images[self.tcount]+"_nc.jpg")
        }
    }
    func proceed2(){
        t2count+=1
        if(t2count>11){
            print("t2over")
            let alert = UIAlertController(title: "Alert", message: "Press N/A if the word below seems negative or if the face shown below looks African-American, or P/E if the word below seems positive or if the face shown below looks European-American. You will be timed!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Start the timer!", style: UIAlertAction.Style.default, handler: { action in
                self.start = Date()
            }))
            self.present(alert,animated: true)
            self.round = 3
            self.prompt.text = "Press N/A if the word below seems negative or if the face shown below looks African-American, or P/E if the word below seems positive or if the face shown below looks European-American"
            btn1.setTitle("N/A", for: .normal)
            btn2.setTitle("P/E", for: .normal)
            if (self.state==0){
                self.faceImg.isHidden = true
                self.wordLbl.isHidden = false
                self.wordLbl.text = words[t3count]
            }else{
                self.faceImg.isHidden = false
                self.wordLbl.isHidden = true
                var initImg = images[t3count]
                initImg = "faces/"+initImg+"_nc.jpg"
                print(initImg)
                faceImg.image = UIImage(named: initImg)
            }
        }else{
            self.wordLbl.text = words[t2count]
        }
    }
    func proceed3(){
        t3count+=1
        state = Int.random(in: 0...1)
        if(t3count>11){
            print("t3over")
            let alert = UIAlertController(title: "Alert", message: "This round is a repeat of the previous round, you will be timed!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Start the timer!", style: UIAlertAction.Style.default, handler: { action in
                self.start = Date()
            }))
            self.present(alert,animated: true)
            print(t3Times)
            self.round = 4
            if (self.state==0){
                self.faceImg.isHidden = true
                self.wordLbl.isHidden = false
                self.wordLbl.text = words[t4count_word]
            }else{
                self.faceImg.isHidden = false
                self.wordLbl.isHidden = true
                var initImg = images[t4count_img]
                initImg = "faces/"+initImg+"_nc.jpg"
                print(initImg)
                faceImg.image = UIImage(named: initImg)
            }
        }else{
            if(state==0){
                self.faceImg.isHidden = true
                self.wordLbl.isHidden = false
                self.wordLbl.text = words[t3count]
            }else{
                self.faceImg.isHidden = false
                self.wordLbl.isHidden = true
                self.faceImg.image = UIImage(named: "faces/"+images[self.t3count]+"_nc.jpg")
            }
        }
    }
    func proceed4(){
        print(t4count_word,t4count_img)
        if(t4count_img>11||t4count_word>11){
            print("t4over")
            print(t4Times)
            let alert = UIAlertController(title: "Alert", message: "This round will consist of classifying faces into one of two categories, like in the first stage. Be careful, the positions of the buttons have now been swapped.", preferredStyle: .alert)
            self.prompt.text = "Press A if the person seems African-American or E if they seem European-American"
            self.round = 5
            self.wordLbl.isHidden = true
            self.faceImg.isHidden = false
            self.btn1.setTitle("E", for: .normal)
            self.btn2.setTitle("A", for: .normal)
            alert.addAction(UIAlertAction(title: "Okay, proceed", style: UIAlertAction.Style.default, handler: { action in
                self.start = Date()
            }))
            self.present(alert,animated: true)
        }else{
            if(state==0){ t4count_word+=1}
            else {t4count_img+=1}
            state = Int.random(in: 0...1)
            if(state==0){
                if(t4count_word>11){
                    print("words-exhausted")
                    state=1
                }else{
                    self.faceImg.isHidden = true
                    self.wordLbl.isHidden = false
                    self.wordLbl.text = words[t4count_word]
                }
            }else if(state==1){
                if(t4count_img>11){
                    print("imgs-exhausted")
                    print("t4over")
                    print(t4Times)
                    let alert = UIAlertController(title: "Alert", message: "This round will consist of classifying faces into one of two categories, like in the first stage. Be careful, the positions of the buttons have now been swapped.", preferredStyle: .alert)
                    self.prompt.text = "Press A if the person seems African-American or E if they seem European-American"
                    self.round = 5
                    self.wordLbl.isHidden = true
                    self.faceImg.isHidden = false
                    self.btn1.setTitle("E", for: .normal)
                    self.btn2.setTitle("A", for: .normal)
                    alert.addAction(UIAlertAction(title: "Okay, proceed", style: UIAlertAction.Style.default, handler: { action in
                        self.start = Date()
                    }))
                    self.present(alert,animated: true)
                }else{
                    self.faceImg.isHidden = false
                    self.wordLbl.isHidden = true
                    self.faceImg.image = UIImage(named: "faces/"+images[self.t4count_img]+"_nc.jpg")
                }
            }
        }
    }
    func proceed5(){
        t5count+=1
        print("called")
        if(t5count>11){
            print("t5over")
            self.round = 6
            let alert = UIAlertController(title: "Alert", message: "Press N/A if the word below seems negative or if the face shown below looks African-American, or P/E if the word below seems positive or if the face shown below looks European-American. You will be timed! Be careful, the positions of the buttons have now been swapped.", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Start the timer!", style: UIAlertAction.Style.default, handler: { action in
                self.start = Date()
            }))
            self.btn1.setTitle("P/E", for: .normal)
            self.btn2.setTitle("N/A", for: .normal)
            self.present(alert,animated: true)
            self.prompt.text = "Press N/A if the word below seems negative or if the face shown below looks African-American, or P/E if the word below seems positive or if the face shown below looks European-American."
        }else{
            self.faceImg.image = UIImage(named: "faces/"+images[self.t5count]+"_nc.jpg")
        }
    }
    func proceed6(){
        t6count+=1
        state = Int.random(in: 0...1)
        if(t6count>11){
            print("t6over")
            let alert = UIAlertController(title: "Alert", message: "This round is a repeat of the previous round, you will be timed!", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Start the timer!", style: UIAlertAction.Style.default, handler: { action in
                self.start = Date()
            }))
            self.present(alert,animated: true)
            print(t6Times)
            self.round = 7
            if (self.state==0){
                self.faceImg.isHidden = true
                self.wordLbl.isHidden = false
                self.wordLbl.text = words[t7count_word]
            }else{
                self.faceImg.isHidden = false
                self.wordLbl.isHidden = true
                var initImg = images[t7count_img]
                initImg = "faces/"+initImg+"_nc.jpg"
                print(initImg)
                faceImg.image = UIImage(named: initImg)
            }
        }else{
            if(state==0){
                self.faceImg.isHidden = true
                self.wordLbl.isHidden = false
                self.wordLbl.text = words[t6count]
            }else{
                self.faceImg.isHidden = false
                self.wordLbl.isHidden = true
                self.faceImg.image = UIImage(named: "faces/"+images[self.t6count]+"_nc.jpg")
            }
        }
    }
    func proceed7(){
        print(t7count_word,t7count_img)
        if(t7count_img>11||t7count_word>11){
            print("t7over")
            print(t7Times)
            let alert = UIAlertController(title: "Alert", message: "Test over.", preferredStyle: .alert)
            self.prompt.text = "Congratulations on finishing the test!"
            self.round = 8
            self.wordLbl.isHidden = true
            self.faceImg.isHidden = true
            self.btn1.isHidden = true
            self.btn2.isHidden = true
            alert.addAction(UIAlertAction(title: "Great!", style: UIAlertAction.Style.default, handler: { action in
                print("performseguehere")
            }))
            self.present(alert,animated: true)
        }else{
            if(state==0){ t7count_word+=1}
            else {t7count_img+=1}
            state = Int.random(in: 0...1)
            if(state==0){
                if(t7count_word>11){
                    print("words-exhausted")
                    state=1
                }else{
                    self.faceImg.isHidden = true
                    self.wordLbl.isHidden = false
                    self.wordLbl.text = words[t7count_word]
                }
            }else if(state==1){
                if(t7count_img>11){
                    print("imgs-exhausted")
                   print("t7over")
                    print(t7Times)
                    let alert = UIAlertController(title: "Alert", message: "Test over.", preferredStyle: .alert)
                    self.prompt.text = "Congratulations on finishing the test!"
                    self.round = 8
                    self.wordLbl.isHidden = true
                    self.faceImg.isHidden = true
                    self.btn1.isHidden = true
                    self.btn2.isHidden = true
                    alert.addAction(UIAlertAction(title: "Great!", style: UIAlertAction.Style.default, handler: { action in
                        print("performseguehere")
                    }))
                    self.present(alert,animated: true)
                }else{
                    self.faceImg.isHidden = false
                    self.wordLbl.isHidden = true
                    self.faceImg.image = UIImage(named: "faces/"+images[self.t7count_img]+"_nc.jpg")
                }
            }
        }
    }
}
