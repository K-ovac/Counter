//
//  UserDefaultsService.swift
//  Counter
//
//  Created by Максим Лозебной on 07.03.2026.
//
import Foundation

final class UserDefaultsService {
    static let shared = UserDefaultsService()
    
    private init() {}   // запрещаем создание извне
    
    private let storage = UserDefaults.standard
    
    private enum Keys: String {
        case score
        
        var value: String {
            rawValue
        }
    }
    
    var score: Int {
        get { storage.integer(forKey: Keys.score.value) }   //получаем значение
        set { storage.set(newValue, forKey: Keys.score.value) } //записываем значение
    }
}
