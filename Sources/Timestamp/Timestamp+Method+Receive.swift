/*
 
 Project: SwiftUIRouter
 File: Timestamp+Method+Receive.swift
 Created by: Egor Boyko
 Date: 29.10.2023
 Last Fix: 29.10.2023
 Version: 0.0.1
 
 Status: #In progress | #Not decorated
 
 */

extension Timestamp {
    public func receive(accuracy: Timestamp.Accuracy64) -> UInt64 {
        switch accuracy {
        case ._48bit:
            (UInt64(bitPattern: Int64(self.rawValue.tv_sec)) &* 100_000) &+
            (UInt64(bitPattern: Int64(self.rawValue.tv_nsec)) / 10_000)
        case ._56bit:
            (UInt64(bitPattern: Int64(self.rawValue.tv_sec)) &* 10_000_000) &+
            (UInt64(bitPattern: Int64(self.rawValue.tv_nsec)) / 100)
        case ._64bit:
            (UInt64(bitPattern: Int64(self.rawValue.tv_sec)) &* 1000_000_000) &+
            (UInt64(bitPattern: Int64(self.rawValue.tv_nsec)))
        }
    }
}
