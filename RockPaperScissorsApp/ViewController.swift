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
    
    @IBAction func whenTapped(_ sender: UITapGestureRecognizer) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        rockButoon.isHidden = true
        paperButoon.isHidden = true
        scissorsButoon.isHidden = true
    }


}

