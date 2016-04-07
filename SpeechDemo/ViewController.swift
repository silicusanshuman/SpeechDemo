//
//  ViewController.swift
//  SpeechDemo
//
//  Created by Gabriel Theodoropoulos on 2/10/15.
//  Copyright (c) 2015 Appcoda. All rights reserved.
//

import UIKit
import QuartzCore
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var tvEditor: UITextView!
    
    @IBOutlet weak var btnSpeak: UIButton!
    
    @IBOutlet weak var btnPause: UIButton!
    
    @IBOutlet weak var btnStop: UIButton!
    
    @IBOutlet weak var pvSpeechProgress: UIProgressView!
    
    let speechSynthesizer = AVSpeechSynthesizer();
    
//    var rate: Float!
//    var pitch: Float!
//    var volume: Float!
//    
//    
//    func registerDefaultSettings()  {
//        
//        rate = AVSpeechUtteranceDefaultSpeechRate
//        pitch = 1.0
//        volume = 1.0
//        
//        let defaultSpeechSettings: Dictionary <NSObject, AnyObject> = ["rate":rate, "pitch":pitch, "volume":volume]
//        NSUserDefaults.standardUserDefaults().registerDefaults(defaultSpeechSettings)
//    }
//    
//    func loadSettings() -> Bool {
//        
//        let userDefaults = NSUserDefaults.standardUserDefaults() as NSUserDefaults
//        if let theRate: Float = userDefaults.valueForKey("rate") as? Float {
//            rate = theRate
//            pitch = userDefaults.valueForKey("pitch") as! Float
//            volume = userDefaults.valueForKey("volume") as! Float
//     
//            return true
//        }
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Make the corners of the textview rounded and the buttons look like circles.
        tvEditor.layer.cornerRadius = 15.0
        btnSpeak.layer.cornerRadius = 40.0
        btnPause.layer.cornerRadius = 40.0
        btnStop.layer.cornerRadius = 40.0
        
        // Set the initial alpha value of the following buttons to zero (make them invisible).
        btnPause.alpha = 0.0
        btnStop.alpha = 0.0
        
        // Make the progress view invisible and set is initial progress to zero.
        pvSpeechProgress.alpha = 0.0
        pvSpeechProgress.progress = 0.0
        
        
        // Create a swipe down gesture for hiding the keyboard.
        let swipeDownGestureRecognizer = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.handleSwipeDownGesture(_:)))
        swipeDownGestureRecognizer.direction = UISwipeGestureRecognizerDirection.Down
        view.addGestureRecognizer(swipeDownGestureRecognizer)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    // MARK: Custom method implementation
    
    func handleSwipeDownGesture(gestureRecognizer: UISwipeGestureRecognizer) {
        tvEditor.resignFirstResponder()
    }
    
    
    // MARK: IBAction method implementation
    
    @IBAction func speak(sender: AnyObject) {
        
        let speachUtterence = AVSpeechUtterance(string: tvEditor.text)
        
        speachUtterence.rate = AVSpeechUtteranceDefaultSpeechRate //rate
        speachUtterence.pitchMultiplier = 1.0 //pitch
        speachUtterence.volume = 1.0 //volume
        
        speechSynthesizer.speakUtterance(speachUtterence)
    }
    
    
    @IBAction func pauseSpeech(sender: AnyObject) {
    
    }
    
    
    @IBAction func stopSpeech(sender: AnyObject) {
        
    }
    
    
    
}

