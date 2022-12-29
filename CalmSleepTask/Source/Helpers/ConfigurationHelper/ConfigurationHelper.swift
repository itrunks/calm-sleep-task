//
//  ConfigurationHelper.swift
//  CalmSleepTask
//
//  Created by Raja Pichai on 29/12/22.
//

import Foundation

internal func Init<Type>(_ value: Type, block: (_ object: Type) -> Void) -> Type {
    block(value)
    return value
}

