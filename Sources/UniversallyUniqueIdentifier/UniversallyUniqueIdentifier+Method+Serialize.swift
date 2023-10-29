/*
 
 Project: UUIDPro
 File: UniversallyUniqueIdentifier+Method+Serialize.swift
 Created by: Egor Boyko
 Date: 29.10.2023
 Last Fix: 29.10.2023
 Version: 1.0.0
 
 Status: #Completed | #Not required
 
 */

extension UniversallyUniqueIdentifier {
    func serialize(
        into buffer: UnsafeMutableBufferPointer<UInt8>,
        option: UnsafeMutableBufferPointer<UInt8>.HexOption,
        separators: Bool
    ) -> Int {
        self.unsafeBytes { octets in
            var i = 0
            let set: Set<Int> = .init([3, 5, 7, 9, 15])
            (0..<16).forEach { position in
                i = buffer.writeHex(octets[position], at: i, option: option)
                if separators && set.contains(position) {
                    i = buffer.writeDash(at: i)
                }
            }
            return i
        }
    }
}
