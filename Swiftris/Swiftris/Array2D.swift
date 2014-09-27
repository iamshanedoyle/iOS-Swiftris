//
//  Array2D.swift
//  Swiftris
//
//  Created by Shane Doyle on 27/09/2014.
//  Copyright (c) 2014 Shane Doyle. All rights reserved.
//

import Foundation

class Array2D<T> {
    
    let columns: Int
    let rows: Int
    
    var array: Array<T?>
    
    init(columns: Int, rows: Int) {
        self.columns = columns
        self.rows = rows
        
        array = Array<T?>(count:rows * columns, repeatedValue: nil)
    }
    
    subscript(column: Int, row: Int) -> T? {
        get {
            return array[(row * column) + column]
        }
        set(newValue) {
            array[(row * column) + column] = newValue
        }
    }
    
}