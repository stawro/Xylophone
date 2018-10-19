//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController{
    
    var songs = ["note1","note2","note3","note4","note5","note6","note7"]
    var audioPlayer : AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        playSong(songNum: sender.tag)
    }
    
    func playSong(songNum : Int)  {
        let urlSong = Bundle.main.url(forResource: songs[songNum-1], withExtension: "wav")
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: urlSong!)
        }catch{
        print(error)
        }
        audioPlayer.play()
    }
    
  

}

