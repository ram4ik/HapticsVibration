//
//  Haptics.swift
//  HapticsVibration
//
//  Created by ramil on 25.05.2021.
//

import UIKit

class Haptics {
    
    static let shared = Haptics()
    
    let softHammer = UIImpactFeedbackGenerator(style: .light)
    let hardHammer = UIImpactFeedbackGenerator(style: .heavy)
    
    init() {
        softHammer.prepare()
        hardHammer.prepare()
    }
    
    func hit(_ intensity: CGFloat = 1.0) {
        hardHammer.impactOccurred(intensity: intensity)
    }
    
    func softRoll(_ intensity: CGFloat = 1.0) {
        softHammer.impactOccurred(intensity: intensity)
    }
}
