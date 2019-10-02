//
//  ViewController.swift
//  diceGame
//
//  Created by codenation on 02/09/2019.
//  Copyright © 2019 codenation. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    //MARK: Variables
    var randomDiceIndex = 0
    var score = 0
    var dice = [#imageLiteral(resourceName: "Kismet-Ace.png")  ,#imageLiteral(resourceName: "Kismet-Deuce.png") , #imageLiteral(resourceName: "Kismet-Trey.png"), #imageLiteral(resourceName: "Kismet-Four"), #imageLiteral(resourceName: "Kismet-Five"), #imageLiteral(resourceName: "Kismet-Six")]
    //           0    1   2   3   4   5
    
    //MARK: Outlets
    @IBOutlet weak var scoreLabel:
        UILabel!
    @IBOutlet weak var messageLabel:
        UILabel!
    @IBOutlet weak var rollButton:
        UIButton!
    @IBOutlet weak var diceImage:
        UIImageView!
    @IBOutlet weak var secondPageButton:
        UIButton!
    //@IBOutlet weak var
    
    
    //MARK: Functions
    
    func diceLogic(){
        //rules of game:
        //if you roll a one you lose.
        //if you score 21 or more, you win.
        if (randomDiceIndex == 0){
            print("you lose")
            score = 0
            messageLabel.text = "You lost"
        }
        else if (score >= 21){
            print("You win")
            score = 0
            messageLabel.text = "You won!!!"
        }
        else{
            print("the game continues")
            messageLabel.text = "Keep going"
        }
    }
    
    
    @IBAction func rollButtonAction(_
        sender: Any) {
        randomDiceIndex = Int.random(in:0...5)
        diceImage.image = dice[randomDiceIndex]
        score += randomDiceIndex + 1
        scoreLabel.text = "\(score)"
        diceLogic()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = "Welcome"
        rollButton.setTitle("Press to roll here", for: .normal)
       // secondPageButton.setTitle("page switch", for: .normal)
        // Do any additional setup after loading the view.
    }


}

