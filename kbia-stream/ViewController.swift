//
//  ViewController.swift
//  kbia-stream
//
//  Created by Nathan Lawrence on 9/24/15.
//  Copyright © 2015 Nathan Lawrence. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    /*APPLICATION PROPERTIES/VARIABLES
        This is where I put the things that need to be triggered by app events. */
    var radioKeeper : RadioKeeper = RadioKeeper()
    var stationSelected : String = "KBIA"
    
    /* OUTLET SECTION
        This is where I get access to the view elements to do the things. */
    @IBOutlet weak var albumArtView: UIImageView! //The album art window at the top of the screen.
    @IBOutlet weak var playStopButton: UIButton! //The play/stop button at the center of the screen.
    @IBOutlet weak var segmentedStationSel: UISegmentedControl! //The segmented station selector at the bottom of the screen.
    
    /*ACTION SECTION
        This is where interface elements do things to trigger other things. */
    @IBAction func playButtonTouchUpInside(sender: UIButton) { //When someone performs a typical iOS touch action on the "play" button.
        print(radioKeeper.mkRadio(stationSelected))
        playStopButton.setTitle("Stop", forState: UIControlState.Normal)
        print(radioKeeper.playRadio("KBIA"))
    }
    
    @IBAction func segmentedStationSelValueChg(sender: UISegmentedControl) { //When someone changes the value of the station selector.
        
    }
    
    
    

    //These overrides are written into ViewController by default.
    override func viewDidLoad() {
        super.viewDidLoad()
        print(radioKeeper.stationStack["KBIA"]!)

        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

