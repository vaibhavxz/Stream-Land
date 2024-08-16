//
//  Extensions.swift
//  StreamLand
//
//  Created by Vaibhav on 16/08/24.
//

import Foundation

extension String {
    func capitalizeFirstLetter() -> String {
        return self.prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
