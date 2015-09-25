//
//  RadioKeeper.swift
//  kbia-stream
//
//  Created by Nathan Lawrence on 9/25/15.
//  Copyright © 2015 Nathan Lawrence. All rights reserved.
//

import UIKit

class RadioKeeper: NSObject {
    /*OBJECT CONSTANTS
        This is where I put things that don't get modified during runtime. */
    let stationStack : Dictionary <String,String> = [ "KBIA" : "http://www.publicbroadcasting.net/kbia/ppr/kbia.m3u", "KMUC" : "http://www.publicbroadcasting.net/kbia/ppr/kbia2.m3u", "KBIA3" : "http://www.publicbroadcasting.net/kbia/ppr/kbiaucs.m3u"]
    
    /*OBJECT PROPERTIES/VARIABLES
    This is where I put the things that store valuable object states. */
    var isPlaying : Bool = false;
    var radioList : Dictionary <String,Radio> = [:];
    
    func isRadio(stationName : String) -> Bool{
        return radioList[stationName] != nil
    }
    
    func mkRadio(toMakeStation : String) -> Bool{
        if(isRadio(toMakeStation)){
            return false
        }
        if(stationStack[toMakeStation] == nil){
                return false
        }
        radioList[toMakeStation] = Radio(stationName: toMakeStation, stationURL: stationStack[toMakeStation]!)
        return true
    }
    
    func playRadio(toPlayStation : String) -> Bool{
        if(radioList[toPlayStation] == nil){
            return false
        }
        return radioList[toPlayStation]!.startStream();
    }
}
