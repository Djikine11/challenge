//
//  DetailsView.swift
//  challenge
//
//  Created by Ousmane on 08/12/24.
//

import SwiftUI
import SwiftData

struct DetailsView: View {
    @Query var model: [Model]
    var body: some View {
        List{
            ForEach(model){datas in
                Text(datas.bookName)
            }
        }
    }
}

#Preview {
    DetailsView()
}
