//
//  ViewController.swift
//  kennyGame
//
//  Created by Melikşah on 10.07.2019.
//  Copyright © 2019 Dipcin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    
    @IBOutlet weak var square1: UIView!
    @IBOutlet weak var square2: UIView!
    @IBOutlet weak var square3: UIView!
    @IBOutlet weak var square4: UIView!
    @IBOutlet weak var square5: UIView!
    @IBOutlet weak var square6: UIView!
    @IBOutlet weak var square7: UIView!
    @IBOutlet weak var square8: UIView!
    @IBOutlet weak var square9: UIView!
    @IBOutlet weak var square10: UIView!
    @IBOutlet weak var square11: UIView!
    @IBOutlet weak var square12: UIView!
    @IBOutlet weak var square13: UIView!
    @IBOutlet weak var square14: UIView!
    @IBOutlet weak var square15: UIView!
    @IBOutlet weak var square16: UIView!
    @IBOutlet weak var square17: UIView!
    @IBOutlet weak var square18: UIView!
    @IBOutlet weak var square19: UIView!
    @IBOutlet weak var square20: UIView!
    @IBOutlet weak var square21: UIView!
    @IBOutlet weak var square22: UIView!
    @IBOutlet weak var square23: UIView!
    @IBOutlet weak var square24: UIView!
    @IBOutlet weak var square25: UIView!
    @IBOutlet weak var square26: UIView!
    @IBOutlet weak var square27: UIView!
    @IBOutlet weak var square28: UIView!
    @IBOutlet weak var square29: UIView!
    @IBOutlet weak var square30: UIView!
    
    var score = 0
    var timer = Timer()
    var counter = 0
    var squareArray = [UIView]()
    var hideTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storedHighscore = UserDefaults.standard.object(forKey: "highscore")
        if storedHighscore == nil {
            highScoreLabel.text = "0"
        }
        if let newScore = storedHighscore as? Int{
            highScoreLabel.text = String(newScore)
        }
        
        scoreLabel.text = "Score: \(score)"
        
        let recognizer1 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer2 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer3 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer4 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer5 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer6 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer7 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer8 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer9 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer10 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer11 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer12 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer13 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer14 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer15 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer16 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer17 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer18 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer19 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer20 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer21 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer22 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer23 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer24 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer25 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer26 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer27 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer28 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer29 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        let recognizer30 = UITapGestureRecognizer(target: self, action: #selector(ViewController.increaseScore))
        
        square1.isUserInteractionEnabled = true
        square2.isUserInteractionEnabled = true
        square3.isUserInteractionEnabled = true
        square4.isUserInteractionEnabled = true
        square5.isUserInteractionEnabled = true
        square6.isUserInteractionEnabled = true
        square7.isUserInteractionEnabled = true
        square8.isUserInteractionEnabled = true
        square9.isUserInteractionEnabled = true
        square10.isUserInteractionEnabled = true
        square11.isUserInteractionEnabled = true
        square12.isUserInteractionEnabled = true
        square13.isUserInteractionEnabled = true
        square14.isUserInteractionEnabled = true
        square15.isUserInteractionEnabled = true
        square16.isUserInteractionEnabled = true
        square17.isUserInteractionEnabled = true
        square18.isUserInteractionEnabled = true
        square19.isUserInteractionEnabled = true
        square20.isUserInteractionEnabled = true
        square21.isUserInteractionEnabled = true
        square22.isUserInteractionEnabled = true
        square23.isUserInteractionEnabled = true
        square24.isUserInteractionEnabled = true
        square25.isUserInteractionEnabled = true
        square26.isUserInteractionEnabled = true
        square27.isUserInteractionEnabled = true
        square28.isUserInteractionEnabled = true
        square29.isUserInteractionEnabled = true
        square30.isUserInteractionEnabled = true
        
        square1.addGestureRecognizer(recognizer1)
        square2.addGestureRecognizer(recognizer2)
        square3.addGestureRecognizer(recognizer3)
        square4.addGestureRecognizer(recognizer4)
        square5.addGestureRecognizer(recognizer5)
        square6.addGestureRecognizer(recognizer6)
        square7.addGestureRecognizer(recognizer7)
        square8.addGestureRecognizer(recognizer8)
        square9.addGestureRecognizer(recognizer9)
        square10.addGestureRecognizer(recognizer10)
        square11.addGestureRecognizer(recognizer11)
        square12.addGestureRecognizer(recognizer12)
        square13.addGestureRecognizer(recognizer13)
        square14.addGestureRecognizer(recognizer14)
        square15.addGestureRecognizer(recognizer15)
        square16.addGestureRecognizer(recognizer16)
        square17.addGestureRecognizer(recognizer17)
        square18.addGestureRecognizer(recognizer18)
        square19.addGestureRecognizer(recognizer19)
        square20.addGestureRecognizer(recognizer20)
        square21.addGestureRecognizer(recognizer21)
        square22.addGestureRecognizer(recognizer22)
        square23.addGestureRecognizer(recognizer23)
        square24.addGestureRecognizer(recognizer24)
        square25.addGestureRecognizer(recognizer25)
        square26.addGestureRecognizer(recognizer26)
        square27.addGestureRecognizer(recognizer27)
        square28.addGestureRecognizer(recognizer28)
        square29.addGestureRecognizer(recognizer29)
        square30.addGestureRecognizer(recognizer30)
        
        //Timers
        counter = 15
        timeLabel.text = "\(counter)"
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.countDown), userInfo: nil, repeats: true)
        hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(ViewController.hideSquare), userInfo: nil, repeats: true)
        
        //Array
        squareArray.append(square1)
        squareArray.append(square2)
        squareArray.append(square3)
        squareArray.append(square4)
        squareArray.append(square5)
        squareArray.append(square6)
        squareArray.append(square7)
        squareArray.append(square8)
        squareArray.append(square9)
        squareArray.append(square10)
        squareArray.append(square11)
        squareArray.append(square12)
        squareArray.append(square13)
        squareArray.append(square14)
        squareArray.append(square15)
        squareArray.append(square16)
        squareArray.append(square17)
        squareArray.append(square18)
        squareArray.append(square19)
        squareArray.append(square20)
        squareArray.append(square21)
        squareArray.append(square22)
        squareArray.append(square23)
        squareArray.append(square24)
        squareArray.append(square25)
        squareArray.append(square26)
        squareArray.append(square27)
        squareArray.append(square28)
        squareArray.append(square29)
        squareArray.append(square30)
        
        hideSquare()
    }
    
    @objc func hideSquare(){
        for square in squareArray {
            square.isHidden = true
        }
        let random = Int(arc4random_uniform(UInt32(squareArray.count - 1)))
        squareArray[random].isHidden = false
    }
    
    @objc func increaseScore() {
        score = score + 1
        scoreLabel.text = "Score: \(score)"
    }

    @objc func countDown() {
        counter = counter - 1
        timeLabel.text = "\(counter)"
        if counter == 0 {
            timer.invalidate()
            hideTimer.invalidate()
            
            if self.score > Int(highScoreLabel.text!)! {
                UserDefaults.standard.set(self.score, forKey: "highscore")
                highScoreLabel.text = String(self.score)
            }
            
            let alert = UIAlertController(title: "TIME!" , message: "Time Is Up!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
            let replayButton = UIAlertAction(title: "Play Again", style: UIAlertAction.Style.default, handler: { (UIAlertAction) in
                self.score = 0
                self.scoreLabel.text = "Score: \(self.score)"
                self.counter = 15
                self.timeLabel.text = "\(self.counter)"
                self.timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.countDown), userInfo: nil, repeats: true)
                self.hideTimer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(ViewController.hideSquare), userInfo: nil, repeats: true)
            })
            alert.addAction(replayButton)
            alert.addAction(okButton)
            self.present(alert, animated: true, completion: nil)
    }

}

}
