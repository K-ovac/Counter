//
//  ViewController.swift
//  Counter
//
//  Created by Максим Лозебной on 26.04.2025.
//

import UIKit

final class ViewController: UIViewController {
    
    //MARK: - Properties
    private var score: Int = 0 {
        didSet {
            UserDefaultsService.shared.score = score    //сохраняем значение в userdefaults
            updateScoreLabel()  //вызываем метод обновления лейбла
        }
    }

    //MARK: - Outlets
    
    @IBOutlet var scoreLabel: UILabel!
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fetchScore()
        updateScoreLabel()
    }
    
    //MARK: - Factory Mathods
    
    private func updateScoreLabel() {
        scoreLabel.text = String(score) //обновляем лейбл со значением
    }
    
    private func fetchScore() {
        score = UserDefaultsService.shared.score    //загружаем сохраненное значение из user defaults
    }

    //MARK: - Actions
    
    @IBAction func didTapPlusButton(_ sender: Any) {
        score += 1
    }
    
    @IBAction func didTapMinusButton(_ sender: Any) {
        if score > 0 {
            score -= 1
        }
    }
    
    @IBAction func didTapResetButton(_ sender: Any) {
        score = 0
    }
}
