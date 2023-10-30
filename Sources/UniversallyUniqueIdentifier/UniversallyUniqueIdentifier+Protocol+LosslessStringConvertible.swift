/*
 
 Project: UUIDPro
 File: UniversallyUniqueIdentifier+Protocol+LosslessStringConvertible.swift
 Created by: Egor Boyko
 Date: 28.10.2023
 Last Fix: 28.10.2023
 Version: 0.0.1
 
 Status: #In progress | #Not decorated
 
 */

extension UniversallyUniqueIdentifier: LosslessStringConvertible {
    public init?(_ description: String) {
        nil
    }
    
    public var description: String {
        self.serialized(option: .uppercase, separators: true)
    }
    

}
