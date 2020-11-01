//
//  PlaySound.swift
//  GenE
//
//  Created by chris richardson on 10/29/20.
//

import AVFoundation

var player: AVAudioPlayer!

func playSound() {
    let url = Bundle.main.url(forResource: "level-completed",
                              withExtension: "mp3")

    guard url != nil else {
        return
    }
    do {
        player = try AVAudioPlayer(contentsOf: url!)
        player?.play()

    } catch {
        print("ERROR")
}
}
