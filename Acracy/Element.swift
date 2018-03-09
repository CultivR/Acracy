//
//  Element.swift
//  Acracy
//
//  Created by Jordan Kay on 3/11/18.
//  Copyright © 2018 Cultivr. All rights reserved.
//

public protocol ElementContainer where Self: NSObject {
    associatedtype Element: Name
    
    subscript(element: Element) -> Value { get }
}


public extension ElementContainer {
    subscript(element: Element) -> Value {
        let label = value(forKey: "\(element.rawValue)Label") as? UILabel
        let imageView = value(forKey: "\(element.rawValue)ImageView") as? UIImageView
        return Value(storedLabel: label, storedImageView: imageView)
    }
}
