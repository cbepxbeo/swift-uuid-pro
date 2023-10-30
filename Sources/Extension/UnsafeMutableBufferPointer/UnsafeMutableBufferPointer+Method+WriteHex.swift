/*
 
 Project: UUIDPro
 File: UnsafeMutableBufferPointer+Method+WriteHex.swift
 Created by: Egor Boyko
 Date: 29.10.2023
 Last Fix: 29.10.2023
 Version: 0.0.1
 
 Status: #Completed | #Not required
 
 */

extension UnsafeMutableBufferPointer where Element == UInt8 {
    func writeHex(_ value: UInt8, at i: Index, option: Self.HexOption) -> Index {
        option.table.withUTF8Buffer { table in
          self[i] = table[Int(value &>> 4)]
          self[i &+ 1] = table[Int(value & 0xF)]
        }
        return i &+ 2
    }
}
