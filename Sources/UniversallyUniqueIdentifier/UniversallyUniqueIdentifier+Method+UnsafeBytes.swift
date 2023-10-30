/*
 
 Project: UUIDPro
 File: UniversallyUniqueIdentifier+Method+UnsafeBytes.swift
 Created by: Egor Boyko
 Date: 29.10.2023
 Last Fix: 29.10.2023
 Version: 0.0.1
 
 Status: #In progress | #Not decorated
 
 */

extension UniversallyUniqueIdentifier {
    public func unsafeBytes<T>(_ body: (UnsafeRawBufferPointer) throws -> T) rethrows -> T {
        try Swift.withUnsafeBytes(of: bytes, body)
    }
}
