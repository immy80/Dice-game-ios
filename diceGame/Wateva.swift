//
//  Wateva.swift
//  diceGame
//
//  Created by codenation on 03/09/2019.
//  Copyright © 2019 codenation. All rights reserved.
//

import Foundation
import UIKit

class Wateva: UIViewController {
    
    //MARK: Variables
    var playerSwitch = true
    var playerOneScore = 0
    var playerTwoScore = 0
    var playerStats = 0
    var winnerLoserCounter = 0
    var randomDiceIndex = 0
    var score = 0
    var dice = [#imageLiteral(resourceName: "Kismet-Ace.png")  ,#imageLiteral(resourceName: "Kismet-Deuce.png") , #imageLiteral(resourceName: "Kismet-Trey.png"), #imageLiteral(resourceName: "Kismet-Four"), #imageLiteral(resourceName: "Kismet-Five"), #imageLiteral(resourceName: "Kismet-Six")]
    //           0    1   2   3   4   5
    
    
    //MARK: Outlets
    @IBOutlet weak var playerIdentificationLabel:
    UILabel!
    @IBOutlet weak var playerOneScoreLabel:
    UILabel!
    @IBOutlet weak var playerTwoScoreLabel:
    UILabel!
    @IBOutlet weak var ruleLabel:
    UILabel!
    @IBOutlet weak var winnerLoserLabel:
    UILabel!
    @IBOutlet weak var diceImage:
    UIImageView!
    @IBOutlet weak var playerStatsButton:
    UIButton!
    @IBOutlet weak var rollButton:
    UIButton!
    @IBOutlet weak var resetButton:
    UIButton!
    @IBOutlet weak var messageLabel:
    UILabel!
 
   
    
    
    //MARK: Functions
    
    @IBAction func playerChange(_ sender:Any) {
        
        if(playerSwitch){
    playerIdentificationLabel.text = "Player One"
            score = 0
            rollButton.isEnabled = true
            playerSwitch = false
        }
        else{
    playerIdentificationLabel.text = "Player Two"
            score = 0
            rollButton.isEnabled = true
            playerSwitch = true
        }
        
    }
    
    
    @IBAction func rollButtonAction(_
        sender: Any) {
            randomDiceIndex = Int.random(in:0...5)
            diceImage.image = dice[randomDiceIndex]
            score += randomDiceIndex + 1
            diceLogic()
        
        
        if(playerSwitch == false){
            playerOneScoreLabel.text = "\(score)"
            }
        
        else{
            playerTwoScoreLabel.text = "\(score)"
        }
    }
        
        @IBAction func resetButtonAction(_
        sender: Any) {
        playerOneScore = 0
        playerTwoScore = 0
        score = 0
        messageLabel.text = "Press roll to start"
        playerOneScoreLabel.text = "\(playerOneScore)"
        playerTwoScoreLabel.text = "\(playerTwoScore)"
        winnerLoserLabel.text = ""
        rollButton.isEnabled = true
        }
    
    func diceLogic(){
        //rules of game:
        //if you roll a one you lose.
        //if you score 21 or more, you win.
        if (randomDiceIndex == 0){
            score = 0
            rollButton.isEnabled = false
            messageLabel.text = "You lost."
            
            
        }
        else if (score >= 21){
            print("You win")
            score = 0
            rollButton.isEnabled = false
            messageLabel.text = "You won!!!"
        }
        else{
            print("The game continues.")
            messageLabel.text = "Keep going."
        }
    
    }
        
//        func winnerLoser(){
//            if (playerOneScore == 0){
//            winnerLoserLabel.text = "Player Two wins"
//            }
//            else{
//            winnerLoserLabel.text = "Player One wins"
//            }
//        }

    
    
    //MARK: Plan for two player
    
    /*
    i need to port over the dice logic function - why?
     the outlets need linking:
     player one score
     player two score
     roll button
     rules label
     back to first page button
     winner/loser
     stats button
     player id
     dice image
     
     the variables needed
     player one score
     player two score
     winner/loser counter
     random dice index
     dice array 0...5
     player switch boolean
 
    */
    




}
