//
//  String+Extension.swift
//  CardsBox
//
//  Created by Eugene Shapovalov on 8/24/21.
//

import Foundation

extension String {
    func separate(every stride: Int = 4, with separator: Character = " ") -> String {
        return String(enumerated().map { $0 > 0 && $0 % stride == 0 ? [separator, $1] : [$1]}.joined())
    }
}
