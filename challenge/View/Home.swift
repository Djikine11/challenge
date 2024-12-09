//
//  Home.swift
//  challenge
//
//  Created by Ousmane on 08/12/24.
//

import SwiftUI
import SwiftData
struct Home: View {
    @State private var isShown = false
    @Query var model: [Model]

    var body: some View {
        NavigationStack{
            VStack{
                List{
                    ForEach(model){datas in
                        HStack{
                            Section("actives"){
                               
                                Text("book et price: ")
                                Text(datas.bookName)
                                Text(datas.price , format: .number)
                                Text("€")
                            }
                            Section("Done"){
                            }
                        }
                    }
                }.toolbar{
                    Button{
                        isShown.toggle()
                    }label: {
                        Image(systemName: "plus")
                    }.sheet(isPresented: $isShown, content: {
                        NavigationStack{
                            ModalView()
                        }.presentationDetents([.medium])
                       
                    })
                       
                    
            
                }

            }
        }
       
    }
}

#Preview {
    Home()
}
