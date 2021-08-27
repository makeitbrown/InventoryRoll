//
//  CardView.swift
//  MyScrumdinger
//
//  Created by Michael Brown on 4/29/21.
//

import SwiftUI

struct CardView: View {
    let list: InventoryLC
    var body: some View {
        VStack(alignment: .leading) {
            Text(list.title)
                .font(.headline)
            Spacer()
            HStack {
                Label("\(list.type)", systemImage: "person.3")
                    .accessibilityElement(children: .ignore)
                    .accessibilityLabel("Type")
                    .accessibilityValue("\(list.type)")
                Spacer()
                Label("\(list.listQuantity)", systemImage: "person")
                    .padding(.trailing, 20)
                    .accessibilityElement(children: .ignore)
                    .accessibilityLabel("List Quantity")
                    .accessibilityValue("\(list.listQuantity) Items")
            }
            .font(.caption)
        }
        .padding()
        .foregroundColor(list.color.accessibleFontColor)
    }
}

struct CardView_Previews: PreviewProvider {
    static var list = InventoryLC.data[0]
    static var previews: some View {
        CardView(list: list)
            .background(list.color)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}
