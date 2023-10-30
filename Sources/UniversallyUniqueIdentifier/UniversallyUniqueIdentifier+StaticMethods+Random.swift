/*
 
 Project: UUIDPro
 File: UniversallyUniqueIdentifier+Methods+Random.swift
 Created by: Egor Boyko
 Date: 29.10.2023
 Last Fix: 29.10.2023
 Version: 0.0.1
 
 Status: #Completed | #Not required
 
 */

import Foundation

extension UniversallyUniqueIdentifier {
    static func random() -> Self {
        var generator = SystemRandomNumberGenerator()
        return random(with: &generator)
    }
    
    static func random<RandomGenerator>(with generator: inout RandomGenerator) -> Self where RandomGenerator: RandomNumberGenerator {
        var bytes = Self.zero.bytes
        let words = (generator.next(), generator.next())
        withUnsafeBytes(of: words) { wordsBytes in
            withUnsafeMutableBytes(of: &bytes) { target in
                _ = wordsBytes.copyBytes(to: target, count: 16)
            }
        }
        bytes.8 = (bytes.8 & 0x3F) | 0x80
        bytes.6 = (bytes.6 & 0xF) | 0x40
        
        return .init(bytes: bytes)
    }
}
