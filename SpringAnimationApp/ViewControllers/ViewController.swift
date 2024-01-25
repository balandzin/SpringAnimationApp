//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by Антон Баландин on 25.01.24.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {

    @IBOutlet var springAnimationView: SpringView!
        
    @IBOutlet var presetLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    var animation = Animation.getAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateLabel()
    }
    
    @IBAction func startSpringAnimation(_ sender: SpringButton) {
        updateLabel()
        
        springAnimationView.animation = animation.preset
        springAnimationView.curve = animation.curve
        springAnimationView.force = animation.force
        springAnimationView.delay = animation.delay
        springAnimationView.duration = animation.duration
        
        springAnimationView.animate()
        
        animation = Animation.getAnimation()
        
        sender.setTitle("Run \(animation.preset)", for: .normal)
    }
    
    private func updateLabel() {
        presetLabel.text = "present: \(animation.preset)"
        curveLabel.text = "curve: \(animation.curve)"
        forceLabel.text = "force: \(animation.force)"
        durationLabel.text = "duration: \(animation.duration)"
        delayLabel.text = " delay: \(animation.delay)"
    }
}
