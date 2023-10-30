/*
 
 Project: UUIDPro
 File: UnsafeMutableBufferPointer+Method+WriteDash.swift
 Created by: Egor Boyko
 Date: 29.10.2023
 Last Fix: 29.10.2023
 Version: 0.0.1
 
 Status: #Completed | #Not required
 
 */

extension UnsafeMutableBufferPointer where Element == UInt8 {
    func writeDash(at i: Index) -> Index {
      self[i] = 0x2D
      return i &+ 1
    }
}
