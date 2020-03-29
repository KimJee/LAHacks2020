//
//  SecondViewController.swift
//  Nap
//
//  Created by Natalia Pinpin on 3/28/20.
//  Copyright © 2020 Natalia Pinpin. All rights reserved.
//

import UIKit
import AVFoundation

class SecondNapViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    var seconds = 5//1200
    var timer = Timer()
    
    var audioPlayer = AVAudioPlayer()
    var alarm = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        runTimer()
        audioPlayer.play()
        let sound = Bundle.main.path(forResource: "alarm", ofType: "mp3")
        do {
            alarm = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        } catch {
            print(error)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func runTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: (#selector(SecondNapViewController.updateTimer)), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        seconds -= 1
        timerLabel.text = timeString(time: TimeInterval(seconds))
        if seconds == 0 {
            goToDifferentView()
            alarm.play()
            //timer.invalidate()
        }
    }
    
    func timeString (time: TimeInterval) -> String {
        let minutes = Int(time) / 60 % 60
        let seconds = Int(time) % 60
        return String(format: "%02i:%02i", minutes, seconds)
    }
    
    func goToDifferentView() {
        self.performSegue(withIdentifier: "segue", sender: self)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func goToHomeScreen(_ sender: Any) {
    }
    
}
