//
//  File.swift
//  TestMe
//
//  Created by Raven Weitzel on 11/15/19.
//  Copyright © 2019 Raven Weitzel. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {
    
    @IBOutlet weak var helloWorldLabel: UILabel!
    
    static func instance() -> ContentViewController {
        return UIStoryboard(name: "ContentViewController", bundle: nil).instantiateInitialViewController() as! ContentViewController
    }
    
    @IBAction func scramble() {
        helloWorldLabel.text = Randomizer.randomString()
    }
    
    @IBAction func reset() {
        helloWorldLabel.text = "Hello, World!"
    }
}
