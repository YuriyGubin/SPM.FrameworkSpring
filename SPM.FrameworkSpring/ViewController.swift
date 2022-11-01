//
//  ViewController.swift
//  SPM.FrameworkSpring
//
//  Created by Юрий Губин on 01.11.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var coreAnimationView: UIView!
    
    private var animationStarted = false
 
    @IBAction func startCoreAnimation(_ sender: UIButton) {
        UIView.animate(
            withDuration: 0.5,
            delay: 0,
            options: [.autoreverse, .repeat]
        ) { [ unowned self ] in
            if !animationStarted {
                coreAnimationView.frame.origin.x -= 40
                animationStarted.toggle()
            }
        }
        sender.pulsate()
    }
    
}

