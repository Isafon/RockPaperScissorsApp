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
    
    @IBOutlet weak var rockImageView: UIImageView!
    
    @IBOutlet weak var paperImageView: UIImageView!
    
    @IBOutlet weak var scissorsImageView: UIImageView!
    
//SCORES:
    @IBOutlet weak var computerScoreLabel: UILabel!
    
    var computerScore: Int = 0
    
    
    @IBOutlet weak var myScoreLabel: UILabel!
    
    var myScore: Int = 0
    
//BUTTONS:
    @IBAction func onRockButtonTapped(_ sender: UIButton) {
        
    }
    
    @IBAction func onPaperButtonTapped(_ sender: UIButton) {
    }
    
    @IBAction func onScissorsButtonTapped(_ sender: UIButton) {
    }
    
    var icons: [UIImage] = [UIImage(named: "rock")!, UIImage(named: "paper")!, UIImage(named:  "scissors")!
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

