//
//  ViewController.swift
//  session3
//
//  Created by APPLE-6 on 04/08/1941 Saka.
//  Copyright © 1941 VVCE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var flipCount = 0
    
    
    @IBOutlet weak var flipCountLabel: UILabel!
    @IBAction func touchLovelyCard(_ sender: UIButton) {
        flipCountLabel.text = "flip:\(flipCount)"
        flipCount += 1
        flipCard(withEmoji:"🥰" ,onButton: sender)
    }
    
    @IBAction func SecondTouchCard(_ sender: UIButton) {
         flipCountLabel.text = "flip:\(flipCount)"
    flipCount += 1
    
    flipCard(withEmoji:"👻" ,onButton: sender)
    }
    
   func flipCard(withEmoji Emoji: String, onButton:UIButton){
    print("flipcard(withEmoji: \(Emoji))")
    if onButton.currentTitle == Emoji
    {
        onButton.setTitle("",for: UIControl.State.normal)
        onButton.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
    }
    else{
        onButton.setTitle(Emoji, for:UIControl.State.normal)
        onButton.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
    }
    
    
}
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

