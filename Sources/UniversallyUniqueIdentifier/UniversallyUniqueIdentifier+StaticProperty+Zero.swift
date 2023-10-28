/*
 
 Project: UUIDPro
 File: UniversallyUniqueIdentifier+StaticProperty+Zero.swift
 Created by: Egor Boyko
 Date: 28.10.2023
 Last Fix: 28.10.2023
 Version: 1.0.0
 
 Status: #Completed | #Not required
 
 */

extension UniversallyUniqueIdentifier {
    static let zero: UniversallyUniqueIdentifier = .init(
        bytes: (0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0)
    )
}
