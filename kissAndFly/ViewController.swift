//
//  ViewController.swift
//  kissAndFly
//
//  Created by Michael Avnyin on 2/12/16.
//  Copyright © 2016 Michael Avnyin. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var lettingGo = try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("lettinggo", ofType: "mp3")!), fileTypeHint:nil)
    
    var tellMe = try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("tellme", ofType: "mp3")!), fileTypeHint:nil)
    
    var dearGod = try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("deargod", ofType: "mp3")!), fileTypeHint:nil)
    
    var spinMe = try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("spinme", ofType: "mp3")!), fileTypeHint:nil)
    
    var february = try! AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: NSBundle.mainBundle().pathForResource("february", ofType: "mp3")!), fileTypeHint:nil)
    
    @IBOutlet var lettingGoPlayPauseBtn: UIButton!
    
    @IBAction func lettingGoPlayPauseButton(sender: AnyObject) {
        
        if (lettingGo.playing == true){
            lettingGo.stop()
            lettingGoPlayPauseBtn.setTitle("Play", forState: UIControlState.Normal)
        }
        else{
            lettingGo.play()
            lettingGoPlayPauseBtn.setTitle("Pause", forState: UIControlState.Normal)
        }
        
    }
    
    @IBAction func lettingGoStopBtn(sender: AnyObject) {
        lettingGo.stop()
    }
    
    
    @IBOutlet var tellMeLabel: UIButton!
    
    @IBAction func tellMePlayPauseButton(sender: AnyObject) {
        if (tellMe.playing == true){
            tellMe.stop()
            tellMeLabel.setTitle("Play", forState: UIControlState.Normal)
        }
        else{
            tellMe.play()
            tellMeLabel.setTitle("Pause", forState: UIControlState.Normal)
        }
    }
    
    
    @IBAction func tellMeStopBtn(sender: AnyObject) {
        tellMe.stop()
    }
    
    @IBOutlet var dearGodLabel: UIButton!
    
    @IBAction func dearGodPlayPauseButton(sender: AnyObject) {
        if (dearGod.playing == true){
            dearGod.stop()
            dearGodLabel.setTitle("Play", forState: UIControlState.Normal)
        }
        else{
            dearGod.play()
            dearGodLabel.setTitle("Pause", forState: UIControlState.Normal)
        }
    }
    
    
    @IBAction func dearGodStopBtn(sender: AnyObject) {
        dearGod.stop()
    }
    
    @IBOutlet var spinMeLabel: UIButton!
    
    
    @IBAction func spinMePlayPauseButton(sender: AnyObject) {
        
        if (spinMe.playing == true){
            spinMe.stop()
            spinMeLabel.setTitle("Play", forState: UIControlState.Normal)
        }
        else{
            spinMe.play()
            spinMeLabel.setTitle("Pause", forState: UIControlState.Normal)
        }
        
    }
    
    @IBAction func spinMeStopbtn(sender: AnyObject) {
        spinMe.stop()
    }
    
    
    @IBOutlet var febLabel: UIButton!
    
    @IBAction func febPlayPauseButton(sender: AnyObject) {
        if (february.playing == true){
            february.stop()
            febLabel.setTitle("Play", forState: UIControlState.Normal)
        }
        else{
            february.play()
            febLabel.setTitle("Pause", forState: UIControlState.Normal)
        }
    }
    
    @IBAction func febStopBtn(sender: AnyObject) {
        february.stop()
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

