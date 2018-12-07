//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 27/01/2016.
//  Copyright © 2016 London App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController
{
    var audioPlayer : AVAudioPlayer?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    @IBAction func notePressed(_ sender: UIButton)
    {
        let url = Bundle.main.url(forResource: "note\(sender.tag)", withExtension: "wav")
        do
        {
            audioPlayer = try AVAudioPlayer(contentsOf: url!)
            guard let player = audioPlayer else { return }
            player.prepareToPlay()
            player.play()
        }
        catch
        {
            print(error)
        }
    }
    
  

}

