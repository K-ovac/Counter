//
//  ViewController.swift
//  Counter
//
//  Created by Максим Лозебной on 26.04.2025.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var tapButton: UIButton!
    @IBOutlet var scoreLabel: UILabel!
    
    var score: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scoreLabel.text = "Значение счетчика: \(score)"
        
        // Do any additional setup after loading the view.
    }

    @IBAction func tapper(_ sender: Any) {
        score += 1
        scoreLabel.text = "Значение счетчика: \(score)"
    }
}

