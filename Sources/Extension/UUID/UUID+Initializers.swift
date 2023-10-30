/*
 
 Project: UUIDPro
 File: UUID+Initializers.swift
 Created by: Egor Boyko
 Date: 30.10.2023
 Last Fix: 30.10.2023
 Version: 0.0.1
 
 Status: #Completed | #Not required
 
 */

import Foundation

extension UUID {
    public static var v7: UUID {
        .init(uuid: UniversallyUniqueIdentifier(version: .v7).bytes)
    }
}
