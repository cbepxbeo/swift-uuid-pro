/*
 
 Project: SwiftUIRouter
 File: Timestamp.swift
 Created by: Egor Boyko
 Date: 29.10.2023
 Last Fix: 29.10.2023
 Version: 1.0.0
 
 Status: #In progress | #Not decorated
 
 */

import Darwin

public struct Timestamp {
    private let rawValue: Darwin.timespec
    public init() {
        self.rawValue = Self.now
    }
}
