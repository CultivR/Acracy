//
//  Mock.swift
//  Acracy
//
//  Created by Jordan Kay on 3/11/18.
//  Copyright © 2018 Cultivr. All rights reserved.
//

public protocol Mockable {
    static var mock: Self { get }
}

public protocol BasicMockable: Mockable {
    init()
}

public extension BasicMockable {
    static var mock: Self {
        return self.init()
    }
}

public protocol VariantMockable: Mockable {
    static func mock(withVariantID variantID: Int) -> Self
}

public extension VariantMockable {
    static var mock: Self {
        return mock(withVariantID: 0)
    }
    
    static func mock(withVariantID variantID: Int) -> Self {
        let nibName = String(describing: self)
        let nib = UINib(nibName: nibName, bundle: nil)
        let objects = nib.instantiate(withOwner: nil, options: nil)
        let views = objects.flatMap { $0 as? UIView }
        return views[variantID] as! Self
    }
}

