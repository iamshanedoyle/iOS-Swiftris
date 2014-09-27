//
//  Block.swift
//  Swiftris
//
//  Created by Shane Doyle on 27/09/2014.
//  Copyright (c) 2014 Shane Doyle. All rights reserved.
//

import Foundation
import SpriteKit

let NumberOfColors: UInt32 = 6

enum BlockColor: Int, Printable {
    
    // List of enum options starting with blue at 0 and ending with yellow at 5.
    case Blue = 0, Orange, Purple, Red, Teal, Yellow
    
    // Computed property spriteName.
    var spriteName: String {
        switch self {
        case .Blue:
            return "blue"
        case .Orange:
            return "orange"
        case .Purple:
            return "purple"
        case .Red:
            return "red"
        case .Teal:
            return "teal"
        case .Yellow:
            return "yellow"
        }
    }
    
    // Computed property description.
    var description: String {
        return self.spriteName
    }
    
    // Static function
    static func random() -> BlockColor {
        return BlockColor.fromRaw(Int(arc4random_uniform(NumberOfColors)))!
    }
    
}

// Hashable allows Block to be stored as a Array2D.
class Block: Hashable, Printable {
    
    // Constants
    let color: BlockColor
    
    // Properties
    var column: Int
    var row: Int
    var sprite: SKSpriteNode?
    
    // Computed property spriteName.
    var spriteName: String {
        return color.spriteName
    }
    
    // Computed property hashValue.
    var hashValue: Int {
        // Return the exclusive-or of our column and row.
        return self.column ^ self.row
    }
    
    // Computed property description.
    var description: String {
        return "\(color): [\(column), \(row)]"
    }
    
    init(column:Int, row:Int, color:BlockColor) {
        self.column = column
        self.row = row
        self.color = color
    }
    
}

// Equals function. This is required to support the hashable protocol.
func ==(lhs: Block, rhs: Block) -> Bool {
    return lhs.column == rhs.column && lhs.row == rhs.row && lhs.color.toRaw() == rhs.color.toRaw()
}