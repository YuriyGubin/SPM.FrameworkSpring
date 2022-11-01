//
//  ViewController.swift
//  SPM.FrameworkSpring
//
//  Created by Юрий Губин on 01.11.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var coreAnimationView: UIView!

    @IBAction func startCoreAnimation(_ sender: UIButton) {
        sender.pulsate()
    }
    
}

