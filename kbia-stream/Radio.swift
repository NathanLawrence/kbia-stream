//
//  Radio.swift
//  kbia-stream
//
//  Created by Nathan Lawrence on 9/25/15.
//  Copyright © 2015 Nathan Lawrence. All rights reserved.
//

import UIKit

class Radio: NSObject {
    /*OBJECT CONSTANTS
    This is where I put things that don't get modified during runtime. */
    let stationName : String;
    let stationURL : String;
    
    /*OBJECT PROPERTIES/VARIABLES
    This is where I put the things that store valuable object states. */
    var audioPlayer : STKAudioPlayer

    
    init (stationName : String, stationURL : String) {
        /*These two are constants, so I can set them in init, but they're stuck now.*/
        self.stationName = stationName
        self.stationURL = stationURL
        audioPlayer = STKAudioPlayer()
    }
    
    func startStream() -> Bool{
            audioPlayer.play(stationURL)
            return true
    }

}
