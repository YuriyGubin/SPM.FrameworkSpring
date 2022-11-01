//
//  ViewController.swift
//  SPM.FrameworkSpring
//
//  Created by Юрий Губин on 01.11.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

    
    @IBOutlet var coreAnimationView: UIView!
    @IBOutlet var springAnimationView: SpringView!
    
    private var animationStarted = false
 
    @IBAction func startCoreAnimation(_ sender: UIButton) {
        UIView.animate(
            withDuration: 0.5,
            delay: 0,
            options: [.autoreverse, .repeat]) { [ unowned self ] in
                if !animationStarted {
                    coreAnimationView.frame.origin.x -= 40
                    animationStarted.toggle()
                }
            }
        sender.pulsate()
    }
    
    @IBAction func startSpringAnimation(_ sender: SpringButton) {
        springAnimationView.animation = "shake"
        springAnimationView.curve = "easeOut"
        springAnimationView.force = 2
        springAnimationView.animate()
        
        sender.animation = "squeeze"
        sender.animate()
    }
}

