//
//  AudioManager.swift
//  AlphabetApp
//
//  Created by Raitis Zgirskis on 17/11/2024.
//

import Foundation
import AVFoundation

class AudioManager {
    static let shared = AudioManager()
    private var audioPlayer: AVAudioPlayer?
    
    private init() {}
    
    func playSound(named soundName: String) {
        guard let path = Bundle.main.path(forResource: soundName, ofType: "mp3") else {
            print("Sound file \(soundName) not found")
            return
        }
        
        let url = URL(fileURLWithPath: path)
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
        } catch {
            print("Couldn't play sound: \(error)")
        }
    }
}
