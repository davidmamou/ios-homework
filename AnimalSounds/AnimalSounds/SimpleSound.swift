//
//  EmojiTableViewCell.swift
//  EmojiDictionary
//
//  Created by David Mamou on 30/11/17.
//  Copyright © 2017 ronny abraham. All rights reserved.
//


import Foundation
import AudioToolbox

class SimpleSound {
    
    private var soundID: SystemSoundID = 0
    
    public init(named name: String) {
        if let soundURL = soundURL(forName: name) {
            let status = AudioServicesCreateSystemSoundID(soundURL as CFURL, &soundID)
            if status != noErr {
                print("Unable to create sound at URL: '\(name)'")
                soundID = 0
            }
        }
    }
    
    public func play() {
        if soundID != 0 {
            AudioServicesPlaySystemSound(soundID)
        }
    }
    
    private func soundURL(forName name: String) -> URL? {
        
        let fileExtensions = ["m4a", "wav", "mp3", "aac", "adts", "aif", "aiff", "aifc", "caf", "mp4"]
        
        for fileExtention in fileExtensions {
            if let soundURL = Bundle.main.url(forResource: name, withExtension: fileExtention) {
                return soundURL
            }
        }
        print("Unable to find sound file with name '\(name)'")
        return nil
    }
    
    deinit {
        if soundID != 0 {
            AudioServicesDisposeSystemSoundID(soundID)
        }
    }
}
