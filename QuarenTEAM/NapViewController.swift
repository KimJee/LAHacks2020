//
//  ViewController.swift
//  Nap
//
//  Created by Natalia Pinpin on 3/28/20.
//  Copyright © 2020 Natalia Pinpin. All rights reserved.
//

import UIKit
import AVFoundation

class NapViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let sound = Bundle.main.path(forResource: "fireplace", ofType: "mp3")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        } catch {
            print(error)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func startTimer(_ sender: UIButton) {

    }
    
    @IBAction func rainSound(_ sender: UIButton) {
        let sound = Bundle.main.path(forResource: "rain", ofType: "mp3")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        } catch {
            print(error)
        }
    }
    
    @IBAction func waterfallSound(_ sender: UIButton) {
        let sound = Bundle.main.path(forResource: "waterfall", ofType: "mp3")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        } catch {
            print(error)
        }
    }
    
    @IBAction func rainforestSound(_ sender: UIButton) {
        let sound = Bundle.main.path(forResource: "rainforest", ofType: "mp3")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        } catch {
            print(error)
        }
    }
    
    @IBAction func fireplaceSound(_ sender: UIButton) {
        let sound = Bundle.main.path(forResource: "fireplace", ofType: "mp3")
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        } catch {
            print(error)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! SecondNapViewController
        vc.audioPlayer = self.audioPlayer
    }
    
    
    
}

