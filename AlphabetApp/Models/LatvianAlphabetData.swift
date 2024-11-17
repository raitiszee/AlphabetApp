//
//  LatvianAlphabetData.swift
//  AlphabetApp
//
//  Created by Raitis Zgirskis on 17/11/2024.
//

import Foundation
import SwiftUI

struct LatvianAlphabetData {
    static let letters = ["A", "Ā", "B", "C", "Č", "D", "E", "Ē", "F", "G", "Ģ", "H", "I", "Ī", "J", "K", "Ķ", "L", "Ļ", "M", "N", "Ņ", "O", "P", "R", "S", "Š", "T", "U", "Ū", "V", "Z", "Ž"]
    
    static let examples: [String: String] = [
        "A": "Abols (Apple)",
        "Ā": "Āzis (Goat)",
        "B": "Bērzs (Birch)",
        "C": "Cālis (Chick)",
        "Č": "Čakls (Diligent)",
        "D": "Durvis (Door)",
        "E": "Ezis (Hedgehog)",
        "Ē": "Ērglis (Eagle)",
        "F": "Foto (Photo)",
        "G": "Galds (Table)",
        "Ģ": "Ģimene (Family)",
        "H": "Halle (Hall)",
        "I": "Istaba (Room)",
        "Ī": "Īkšķis (Thumb)",
        "J": "Jūra (Sea)",
        "K": "Kaķis (Cat)",
        "Ķ": "Ķirbis (Pumpkin)",
        "L": "Lapa (Leaf)",
        "Ļ": "Ļoti (Very)",
        "M": "Māja (House)",
        "N": "Nazis (Knife)",
        "Ņ": "Ņemt (To take)",
        "O": "Ola (Egg)",
        "P": "Pils (Castle)",
        "R": "Rīts (Morning)",
        "S": "Saule (Sun)",
        "Š": "Šalle (Scarf)",
        "T": "Tēja (Tea)",
        "U": "Uguns (Fire)",
        "Ū": "Ūdens (Water)",
        "V": "Vāze (Vase)",
        "Z": "Zeme (Earth)",
        "Ž": "Žagata (Magpie)"
    ]
    
    static let gradients: [[Color]] = [
        [.blue, .purple],
        [.green, .blue],
        [.orange, .red],
        [.pink, .purple],
        [.yellow, .orange],
        [.red, .pink],
        [.purple, .blue],
        [.green, .yellow]
    ]
}
