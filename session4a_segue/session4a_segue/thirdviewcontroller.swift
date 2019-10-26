//
//  thirdviewcontroller.swift
//  session4a_segue
//
//  Created by APPLE-6 on 04/08/1941 Saka.
//  Copyright © 1941 VVCE. All rights reserved.
//

import Foundation
import UIKit
class thirdviewcontroller: UIViewController
{
    var numberOnScreen:Double = 0
    var prevNumber:Double = 0
    var performMath = false
    var  result = 0

    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton) {
        if performMath == true
        {
            label.text = String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
            performMath = false
        }else{
            label.text = label.text!+String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
        }
        
    }
    
    
    @IBAction func buttons(_ sender: UIButton) {
        
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            prevNumber = Double(label.text!)!
            if sender.tag == 12
            {
                label.text = "/"
            }
            if sender.tag == 13
            {
                label.text = "*"
            }
            if sender.tag == 14
            {
                label.text = "-"
            }
            if sender.tag == 15
            {
                label.text = "+"
            }
            
            
            result = sender.tag
            performMath = true
        }
        else if sender.tag == 16
        {
            if result == 12
            {
                label.text = String(prevNumber / numberOnScreen)
            }
            if result == 13
            {
                label.text = String(prevNumber * numberOnScreen)
            }
            if result == 14
            {
                label.text = String(prevNumber - numberOnScreen)
            }
            if result == 15
            {
                label.text = String(prevNumber + numberOnScreen)
            }
        }
        else if sender.tag == 11
        {
            label.text = ""
            prevNumber = 0
            numberOnScreen = 0
            result = 0
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

    


