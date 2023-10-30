/*
 
 Project: UUIDPro
 File: UniversallyUniqueIdentifier+StaticMethods+UnixTime.swift
 Created by: Egor Boyko
 Date: 30.10.2023
 Last Fix: 30.10.2023
 Version: 0.0.1
 
 Status: #Completed | #Not required
 
 */

import Foundation

extension UniversallyUniqueIdentifier {
    static func unixTime() -> Self {
        let timestamp = (Timestamp().receive(accuracy: ._48bit) &<< 16).bigEndian
        var bytes = Self.random().bytes
        withUnsafeMutableBytes(of: &bytes) { thread in
            withUnsafeBytes(of: timestamp) {
                thread.baseAddress!.copyMemory(from: $0.baseAddress!, byteCount: 6)
            }
        }
        
        bytes.8 = (bytes.8 & 0x3F) | 0x80
        bytes.6 = (bytes.6 & 0xF) | 0x40
        
        return .init(bytes: bytes)
    }
}
