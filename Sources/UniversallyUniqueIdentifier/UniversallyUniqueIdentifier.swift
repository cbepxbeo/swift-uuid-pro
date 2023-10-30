/*
 
 Project: UUIDPro
 File: UniversallyUniqueIdentifier.swift
 Created by: Egor Boyko
 Date: 28.10.2023
 Last Fix: 28.10.2023
 Version: 0.0.1
 
 Status: #In progress | #Not decorated
 
 */

public struct UniversallyUniqueIdentifier {
    public init(bytes: Bytes) {
      self.bytes = bytes
    }
    let bytes: UniversallyUniqueIdentifier.Bytes
}
