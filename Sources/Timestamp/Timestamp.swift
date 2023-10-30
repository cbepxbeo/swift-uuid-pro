/*
 
 Project: SwiftUIRouter
 File: Timestamp.swift
 Created by: Egor Boyko
 Date: 29.10.2023
 Last Fix: 29.10.2023
 Version: 0.0.1
 
 Status: #In progress | #Not decorated
 
 */

import Darwin

public struct Timestamp {
    public init() {
        self.rawValue = Self.now
    }
    
    let rawValue: Darwin.timespec
}
