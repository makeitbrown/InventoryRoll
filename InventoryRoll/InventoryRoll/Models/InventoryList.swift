//
//  DailyScrum.swift
//  MyScrumdinger
//
//  Created by Michael Brown on 4/29/21.
//

import SwiftUI

struct InventoryLC: Identifiable {
    let id: UUID
    var title: String
    var type: String
    var listQuantity: String
    var color: Color
    
    init(id: UUID = UUID(), title: String, type: String, listQuantity: String, color: Color) {
        self.id = id
        self.title = title
        self.type = type
        self.listQuantity = listQuantity
        self.color = color
    }
}

extension InventoryLC {
    static var data: [InventoryLC] {
        [
            InventoryLC(title: "Lyquid Tech", type: "Professional", listQuantity: "15", color: Color("Design")),
            InventoryLC(title: "B-Squad", type: "Professional", listQuantity: "99", color: Color("App Dev")),
            InventoryLC(title: "72 Hour Kit", type: "Personal", listQuantity: "5", color: Color("Web Dev"))
        ]
    }
}

extension InventoryLC {
    struct Data {
        var title: String = ""
        var type: String = ""
        var listQuantity: String = "0"
        var color: Color = .random
    }
    
    var data: Data {
        return Data(title: title, type: type, listQuantity: listQuantity, color: color)
    }
    
    mutating func update(from data: Data) {
        title = data.title
        type = data.type
        listQuantity = data.listQuantity
        color = data.color
    }
}
