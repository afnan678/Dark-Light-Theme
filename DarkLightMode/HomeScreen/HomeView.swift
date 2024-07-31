//
//  HomeView.swift
//  DarkLightMode
//
//  Created by Afnan Ahmed on 31/07/2024.
//

import SwiftUI

struct HomeView<T: HomeViewModel>: View {
    @Environment(\.colorScheme) var colorScheme
    @ObservedObject var viewModel: T
    var body: some View {
        VStack {
            ZStack{
                Image(colorScheme == .dark ? "dashBoardDark" : "dashBoardLight")
                    .resizable()
                    .frame(height: 250)
                VStack(alignment: .leading) { // Aligns content within the VStack to the left
                            Text("This is Food \n You Love")
                                .font(.system(size: 40))
                                .foregroundColor(Color("textColor1"))
                                .multilineTextAlignment(.leading)
                                .padding(.top, 40)
                    
                    Button(action: {
                        
                    }) {
                        Text("Order Now")
                            .font(.system(size: 16).bold())
                            .padding(8)
                            .background(Color("textColor1"))
                            .foregroundColor(colorScheme == .dark ? .black : .white)
                            .cornerRadius(14)
                        
                    }
                    Spacer()
                        }
                        .frame(maxWidth: .infinity, alignment: .leading) // Makes VStack expand to full width and align its content to the left
                        .padding()
            }.frame(height: 250)
            
            ScrollView(showsIndicators: false) { // Use ScrollView if you want to scroll through items
                        VStack(alignment: .leading) {
                            ForEach(viewModel.items, id: \.title) { item in
                                HStack(alignment: .top) {
                                    
                                    Image(item.imageName)
                                        .resizable()
                                        .frame(width: 74, height: 74)
                                        .cornerRadius(6)
                                        .padding(.top, 8)
                                    VStack(alignment: .leading) {
                                        Text(item.title)
                                            .font(.headline)
                                            .foregroundStyle(Color("textColor1"))
                                        Text(item.description)
                                            .font(.subheadline)
                                            .foregroundStyle(Color("textColor1"))
                                    }
                                    Spacer()
                                }
                                .padding(16)
                                .background(colorScheme == .dark ? Color.black : Color.white)
                                .cornerRadius(6)
                            }
                        }
                        .padding()
                    }
            
            Spacer()
        }.background(Color("BgColor"))
    }
}

//#Preview {
//    HomeView(viewModel: HomeViewModelImpl())
//}
