//
//  Animation.swift
//  SpringAnimationApp
//
//  Created by Антон Баландин on 25.01.24.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getAnimation() -> Animation {
        let dataStore = DataStore.shared
        
        let preset = dataStore.presets[Int.random(in: 0..<dataStore.presets.count)]
        let curve = dataStore.curves[Int.random(in: 0..<dataStore.curves.count)]
        let force = Double.random(in: 1...3)
        let duration = Double.random(in: 0.5...5)
        let delay = Double.random(in: 0...1)
        
        let animation = Animation(
            preset: preset,
            curve: curve,
            force: force,
            duration: duration,
            delay: delay
        )
        
        return animation
    }
}
