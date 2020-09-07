//
//  ViewController.swift
//  Buttons and Stacks
//
//  Created by Jennifer Joseph on 9/7/20.
//  Copyright © 2020 Jennifer Joseph. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorLabel: UILabel!
    
    var colors : [UIColor] = [.red, .orange, .yellow, .green, .blue, .systemIndigo, .systemPurple]
    
    override func viewDidLoad() {
           super.viewDidLoad()
           // Do any additional setup after loading the view.
       }
    
    @IBAction func colorButtonPressed(_ sender: UIButton) {
        print("You clicked tag #: \(sender.tag)")
        
        if sender.tag >= 0 && sender.tag <= 6 {
            colorLabel.text = "You clicked \(sender.currentTitle!)"
            colorLabel.textColor = colors[sender.tag]
        }
        else {
            colorLabel.text = ""
        }
    }
}

