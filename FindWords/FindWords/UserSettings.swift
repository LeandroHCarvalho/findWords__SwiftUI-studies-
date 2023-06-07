//
//  UserSettings.swift
//  FindWords
//
//  Created by Leandro Carvalho on 07/06/23.
//

import Foundation

class UserSettings: ObservableObject {
    
    @Published var selectedSegment: Int = UserDefaults.standard.integer(forKey: "selectedSegment") {
        didSet {
            UserDefaults.standard.set(self.selectedSegment, forKey: "selectedSegment")
        }
    }
    
    @Published var englishIsOn: Bool = UserDefaults.standard.bool(forKey: "englishIsOn") {
        didSet {
            UserDefaults.standard.set(self.englishIsOn, forKey: "englishIsOn")
        }
    }
    
    @Published var spanishIsOn: Bool = UserDefaults.standard.bool(forKey: "spanishIsOn") {
        didSet {
            UserDefaults.standard.set(self.spanishIsOn, forKey: "spanishIsOn")
        }
    }
    
    @Published var italianIsOn: Bool = UserDefaults.standard.bool(forKey: "italianIsOn") {
        didSet {
            UserDefaults.standard.set(self.italianIsOn, forKey: "italianIsOn")
        }
    }
    
    
}
