/*
 
 Project: UUIDPro
 File: UniversallyUniqueIdentifier+Initializers.swift
 Created by: Egor Boyko
 Date: 29.10.2023
 Last Fix: 29.10.2023
 Version: 0.0.1
 
 Status: #Completed | #Not required
 
 */

extension UniversallyUniqueIdentifier {
    public init?<Bytes>(bytes input: Bytes) where Bytes: Sequence, Bytes.Element == UInt8 {
        var output = Self.zero.bytes
        let copied = withUnsafeMutableBytes(of: &output) { bytes in
            UnsafeMutableBufferPointer(
                start: bytes.baseAddress.unsafelyUnwrapped.assumingMemoryBound(to: UInt8.self),
                count: 16
            ).initialize(from: input).1
        }
        guard copied == 16 else { return nil }
        self.init(bytes: output)
    }
    
    
    public init(version: UniversallyUniqueIdentifier.Version){
        switch version {
        case .v4:
            self = .random()
        case .v7:
            self = .unixTime()
        }
    }
    
}
