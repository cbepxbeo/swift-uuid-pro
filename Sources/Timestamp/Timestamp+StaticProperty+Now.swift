/*
 
 Project: SwiftUIRouter
 File: Timestamp+StaticProperty+Now.swift
 Created by: Egor Boyko
 Date: 29.10.2023
 Last Fix: 29.10.2023
 Version: 1.0.0
 
 Status: #In progress | #Not decorated
 
 */

import Darwin

extension Timestamp {
    public static var now: Darwin.timespec {
        var time = Darwin.timespec()
        clock_gettime(Darwin.CLOCK_REALTIME, &time)
        return time
    }
}
