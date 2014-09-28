//
//  TShape.swift
//  Swiftris
//
//  Created by Shane Doyle on 28/09/2014.
//  Copyright (c) 2014 Shane Doyle. All rights reserved.
//

import Foundation

class TShape: Shape {

    override var blockRowColumnPositions: [Orientation: Array<(columnDiff: Int, rowDiff: Int)>] {
        return [
            Orientation.Zero: [(1, 0), (0, 1), (1, 1), (2, 1)],
            Orientation.Ninety: [(1, 2), (0, 1), (1, 1), (2, 1)],
            Orientation.OneEighty: [(2, 1), (1, 0), (1, 1), (1, 2)],
            Orientation.TwoSeventy: [(0, 1), (1, 0), (1, 1), (1, 2)]
        ]
    }
    
    override var bottomBlocksForOrientations: [Orientation: Array<Block>] {
        return [
            Orientation.Zero: [blocks[SecondBlockIdx], blocks[ThirdBlockIdx], blocks[FourthBlockIdx]],
            Orientation.Ninety: [blocks[FourthBlockIdx]],
            Orientation.OneEighty: [blocks[FirstBlockIdx]],
            Orientation.TwoSeventy: [blocks[SecondBlockIdx]]
        ]
    }
}