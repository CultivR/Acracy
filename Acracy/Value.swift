//
//  Value.swift
//  Acracy
//
//  Created by Jordan Kay on 3/11/18.
//  Copyright © 2018 Cultivr. All rights reserved.
//

public struct Value {
    let storedLabel: UILabel?
    let storedImageView: UIImageView?
    
    public var label: UILabel {
        return storedLabel!
    }
    
    public var imageView: UIImageView {
        return storedImageView!
    }
}
