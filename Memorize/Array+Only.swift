//
//  Array+Only.swift
//  Memorize
//
//  Created by Luciano Nunes de Siqueira on 18/05/21.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
