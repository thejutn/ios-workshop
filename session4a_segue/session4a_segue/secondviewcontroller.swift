//
//  secondviewcontroller.swift
//  session4a_segue
//
//  Created by APPLE-6 on 04/08/1941 Saka.
//  Copyright © 1941 VVCE. All rights reserved.
//

import Foundation
import  UIKit
import AVKit
class secondviewcontroller :UIViewController
{
        var player:AVAudioPlayer = AVAudioPlayer()
        @IBAction func play1(_ sender: UIButton) {
            player.play()
            
        }
        
        @IBAction func pause(_ sender: UIButton) {
            
            player.pause()
        }
        
        @IBAction func replay(_ sender: UIButton) {
            
            player.stop()
            player.play()
        }
        
        @IBAction func play(_ sender: UIButton) {
            if let path = Bundle.main.path(forResource:"Animals",ofType:"mp4")
            {
                let video = AVPlayer(url: URL(fileURLWithPath: path))
                let videoPlayer = AVPlayerViewController()
                videoPlayer.player = video
                present(videoPlayer,animated: true, completion:{video.play()
                    
                })
            }
            
        }
        override func viewDidLoad(){
            super.viewDidLoad()
            do{
                let audiopath=Bundle.main.path(forResource : "Instument",ofType:"mp3")
                try player=AVAudioPlayer(contentsOf: NSURL(fileURLWithPath:audiopath!) as URL)
            }
            catch{
            }
        }
    }

        
        
        

