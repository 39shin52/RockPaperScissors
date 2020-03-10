//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Itou Shingo on 2019/06/25.
//  Copyright © 2019 Itou Shingo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var handName = ["Rock","Scissors","Paper"]

    
    @IBOutlet weak var SazaesanLabel: UIImageView!
    @IBOutlet weak var playerHand: UILabel!
    @IBOutlet weak var cpuHand: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func JabkenRock(_ sender: Any) {
        playerHand.text = "Rock"
        cpuHand.text = handName[Int(arc4random()) % handName.count]
        let s = cpuHand.text
        if s == "Scissors"{
            messageLabel.text = "YOU WIN!!"
        } else if s == "Rock"{
            messageLabel.text = "DRAW!!"
        } else {
            messageLabel.text = "YOU LOSE!!"
        }
    }
    
    @IBAction func JankenScissors(_ sender: Any) {
        playerHand.text = "Scissors"
        cpuHand.text = handName[Int(arc4random()) % handName.count]
        let t = cpuHand.text
        if t == "Paper"{
            messageLabel.text = "YOU WIN!!"
        } else if t == "Scissors"{
            messageLabel.text = "DRAW!!"
        } else {
            messageLabel.text = "YOU LOSE!!"
        }
    }
    
    @IBAction func JankenPaper(_ sender: Any) {
        playerHand.text = "Paper"
       cpuHand.text = handName[Int(arc4random()) % handName.count]
        let u = cpuHand.text
        if u == "Rock"{
            messageLabel.text = "YOU WIN!!"
        } else if u == "Paper"{
            messageLabel.text = "DRAW!!"
        } else {
            messageLabel.text = "YOU LOSE!!"
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

