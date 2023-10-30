/*
 
 Project: UUIDPro
 File: UnsafeMutableBufferPointer+HexOption.swift
 Created by: Egor Boyko
 Date: 29.10.2023
 Last Fix: 29.10.2023
 Version: 0.0.1
 
 Status: #Completed | #Not required
 
 */

extension UnsafeMutableBufferPointer {
    public enum HexOption {
        case lowercase
        case uppercase
        
        var table: StaticString {
            switch self {
            case .uppercase:
                "0123456789ABCDEF"
            case .lowercase:
                "0123456789abcdef"
            }
        }
    }
}
