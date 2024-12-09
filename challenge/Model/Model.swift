//
//  Model.swift
//  challenge
//
//  Created by Ousmane on 08/12/24.
//

import SwiftUI
import SwiftData

@Model
final class Model: Identifiable {
    var id: UUID = UUID()
    var bookName: String
    var price: Double
    var completed: Bool
    var date: Date
    var total: Float
    
    init(id: UUID = UUID(), bookName: String = "" , price: Double = 0, completed: Bool = false, date: Date = .now, total: Float = 0) {
        self.id = id
        self.bookName = bookName
        self.price = price
        self.completed = completed
        self.date = date
        self.total = total
    }
}
