//
//  ViewController.swift
//  RockPaperScissorsApp
//
//  Created by isa fontana on 4/4/22.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {
    
    @IBOutlet weak var rockImage: UIImageView!
    
    @IBOutlet weak var paperImage: UIImageView!
    
    @IBOutlet weak var scissorsImage: UIImageView!
    
//UPLOAD PHOTO:
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let image = info[UIImagePickerController.InfoKey(rawValue: "UIImagePickerControllerEditedImage")] as? UIImage {
            
            rockImage.image = image
            paperImage.image = image
            scissorsImage.image = image
        }
        
        picker.dismiss(animated: true, completion: nil)
    }
    
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
//UPLOAD PHOTO BUTTON FUNCTIONS:
    @IBAction func rockButton1(_ sender: UIButton) {
        
        let vc = UIImagePickerController()
        vc.sourceType = .photoLibrary
        vc.delegate = self
        vc.allowsEditing = true
        present(vc, animated: true)
    }
    
    @IBAction func paperButton1(_ sender: UIButton) {
        
        let pc = UIImagePickerController()
        pc.sourceType = .photoLibrary
        pc.delegate = self
        pc.allowsEditing = true
        present(pc, animated: true)
    }
    
    @IBAction func scissorsButton1(_ sender: UIButton) {
        
        let sc = UIImagePickerController()
        sc.sourceType = .photoLibrary
        sc.delegate = self
        sc.allowsEditing = true
        present(sc, animated: true)
    }
    
    
    
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
        
        rockButoon.isHidden = false
        paperButoon.isHidden = false
        scissorsButoon.isHidden = false
    
    }
    
    
}
