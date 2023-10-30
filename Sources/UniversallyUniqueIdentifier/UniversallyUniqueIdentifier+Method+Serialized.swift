/*
 
 Project: UUIDPro
 File: UniversallyUniqueIdentifier+Method+Serialized.swift
 Created by: Egor Boyko
 Date: 29.10.2023
 Last Fix: 29.10.2023
 Version: 0.0.1
 
 Status: #Completed | #Not required
 
 */

extension UniversallyUniqueIdentifier {
    public func serialized(
        option: UnsafeMutableBufferPointer<UInt8>.HexOption,
        separators: Bool = true
    ) -> String {
        .init(unsafeUninitializedCapacity: 32 + (separators ? 4 : 0)) { buffer in
            self.serialize(into: buffer, option: option, separators: separators)
        }
    }
}
