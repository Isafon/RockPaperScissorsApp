//
//  ViewController.swift
//  RockPaperScissorsApp
//
//  Created by isa fontana on 4/4/22.
//

import UIKit

class ViewController: UIViewController {
    
//IMAGE VIEWS:

    @IBOutlet weak var computerOutputImageView: UIImageView!

    @IBOutlet weak var myOutputImageView: UIImageView!

    @IBOutlet var rockPaperScissorsImageViews: [UIImageView]!
    
    
//STACK VIEW ROCK, PAPER, SCISSORS:
    @IBOutlet weak var stackView: UIStackView!
    
    
//SCORES:
    @IBOutlet weak var computerScoreLabel: UILabel!
    
    var computerScore: Int = 0
    
    
    @IBOutlet weak var myScoreLabel: UILabel!
    
    var myScore: Int = 0
    
    
//BUTTONS:
    @IBOutlet weak var rockButoon: UIButton!
    @IBOutlet weak var paperButoon: UIButton!
    @IBOutlet weak var scissorsButoon: UIButton!
    
    
    
    var icons: [UIImage] = [UIImage(named: "rock")!, UIImage(named: "paper")!, UIImage(named:  "scissors")!
    ]
    
    
    var index = 3
    
    
    @IBAction func whenTapped(_ sender: UITapGestureRecognizer) {
        
        let selectedPoint = sender.location(in: stackView)
        
        for barn in rockPaperScissorsImageViews {
            
            if barn.frame.contains(selectedPoint) {
                index = barn.tag
                myOutputImageView.image = icons[index]
            }
            
            let randomIcon = Int.random(in: 0...2)
            computerOutputImageView.image = icons[randomIcon]
        }
        
        decideWinner()
        
        myScoreLabel.text = "\(myScore)"
        computerScoreLabel.text = "\(computerScore)"
        
    }
    

/* note to self:
randomIcon = computer choice
icons = player choice */

    @IBOutlet weak var decidingWinnerLabel: UILabel!

    
    
func decideWinner(){

    if myOutputImageView.image == computerOutputImageView.image {
        
        decidingWinnerLabel.text = "DRAW"
        
    }else if myOutputImageView.image == UIImage(named: "rock") && computerOutputImageView.image == UIImage(named: "scissors"){
        
        decidingWinnerLabel.text = "Player Wins"
        
        myScore += 1
        
    }else if myOutputImageView.image == UIImage(named: "paper") && computerOutputImageView.image == UIImage(named: "rock") {
        
        decidingWinnerLabel.text = "Player Wins"
        
        myScore += 1
        
    }else if myOutputImageView.image == UIImage(named: "scissors") && computerOutputImageView.image == UIImage(named: "paper") {
        
        decidingWinnerLabel.text = "Player Wins"
        myScore += 1
        
    } else {
        decidingWinnerLabel.text = "Computer Wins"
        computerScore += 1
    }
    
   // print(myOutputImageView.image)
    
    }
    
    
//HOW TO PLAY:
    @IBAction func onHowToTapped(_ sender: UIButton) {
        UIApplication.shared.openURL((NSURL(string: "https://www.wikihow.com/Play-Rock,-Paper,-Scissors")! as URL))
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        rockButoon.isHidden = true
        paperButoon.isHidden = true
        scissorsButoon.isHidden = true
    
    }
    
    
}
