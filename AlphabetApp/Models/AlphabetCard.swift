//
//  AlphabetCard.swift
//  AlphabetApp
//
//  Created by Raitis Zgirskis on 17/11/2024.
//

import Foundation
import SwiftUI

struct AlphabetCard: Identifiable {
    let id = UUID()
    let letter: String
    let colors: [Color]
    let soundName: String
    let example: String
}
