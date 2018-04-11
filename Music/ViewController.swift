//
//  ViewController.swift
//  Music
//
//  Created by 吉川莉央 on 2018/04/08.
//  Copyright © 2018年 RioYoshikawa. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer: AVAudioPlayer!
    
    @IBAction func natsuPlayBotton(){
        setAudioPlayer(soundName: "natsu", type: "mp3")
        audioPlayer.play()
    }
    
    @IBAction func amePlayButton(){
        setAudioPlayer(soundName: "ame", type: "mp3")
        audioPlayer.play()
    }
    
    @IBAction func akiPlayButton(){
        setAudioPlayer(soundName: "aki", type: "mp3")
        audioPlayer.play()
    }
    
    func setAudioPlayer(soundName: String, type: String){
        let soundFilePath = Bundle.main.path(forResource: soundName, ofType: type)!
        let fileURL = URL(fileURLWithPath: soundFilePath)
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: fileURL)
        }catch{
            print("音楽が読み込めませんでした")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

