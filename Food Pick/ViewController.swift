//
//  ViewController.swift
//  Food Pick
//
//  Created by Kamil Niemczyk on 07/02/2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var todaysChoiceLabel: UILabel!
    @IBOutlet weak var foodTypeLabel: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    
    @IBOutlet weak var withHintLabel: UILabel!
    @IBOutlet weak var hintTypeLabel: UILabel!
    
    
    override func viewDidLoad() {
        chooseButton.layer.cornerRadius = 0.1 * chooseButton.bounds.size.width
    }
    
    let foodTypes: [String] = ["American", "Mexican", "Italian", "Greek", "Thai", "Chinese"]
    
    
    @IBAction func didTapChooseButton() {
        
        todaysChoiceLabel.isHidden = false
        foodTypeLabel.isHidden = false
        withHintLabel.isHidden = false
        hintTypeLabel.isHidden = false
        
        chooseButton.setTitle("Choose Again", for: .normal)
        
        let randomNumber = Int.random(in: 0 ... foodTypes.count - 1)
        foodTypeLabel.text = foodTypes[randomNumber]
        
        var randomNumber2 = Int.random(in: 0 ... foodTypes.count - 1)
        
        while randomNumber2 == randomNumber {
            randomNumber2 = Int.random(in: 0 ... foodTypes.count - 1)
        }
        hintTypeLabel.text = foodTypes[randomNumber2]
        
    }
}

