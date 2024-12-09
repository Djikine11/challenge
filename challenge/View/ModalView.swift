//
//  ModalView.swift
//  challenge
//
//  Created by Ousmane on 08/12/24.
//

import SwiftUI

struct ModalView: View {

    @State private var model =  Model()
    @Environment(\.modelContext) var context
    @Environment(\.dismiss) var dismis
    
    var body: some View {
        NavigationStack{
            Form
            {
                Section("Book Info "){
                    TextField("book name: ", text: $model.bookName)
                    
                    TextField("price: ", value: $model.price, format: .number).keyboardType(.numberPad)
                    DatePicker("date: " , selection: $model.date)
                        
                    Button{
                        withAnimation{
                            context.insert(model)
                            try! context.save()
                            dismis.callAsFunction()
                        }
                        
                    }label: {
                        Text("save")
                    }.buttonBorderShape(.buttonBorder)
                }
         
            }.navigationTitle("adding item")
        
        }
       
    }
}

#Preview {
    ModalView()
}
