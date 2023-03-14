//
//  CategoryHome.swift
//  landmarks-ios-tutorials
//
//  Created by Ippei on 2023/03/14.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        NavigationView {
            List {
                modelData.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id:\.self) { category in
                    CategoryRow(categoryName: category, items: modelData.categories[category]!)
                }
                .listRowInsets(EdgeInsets())
                .padding(.top, 20)
                .padding(.bottom,18)
                .padding(.leading, 15)
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Featured")
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
