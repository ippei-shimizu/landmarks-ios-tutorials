//
//  CategoryRow.swift
//  landmarks-ios-tutorials
//
//  Created by Ippei on 2023/03/14.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { item in
                        CategoryItem(landmark: item)
                    }
                }
            }
        }
        .frame(height: 185)
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(categoryName: ModelData().landmark[0].category.rawValue, items: Array(ModelData().landmark.prefix(4)))
    }
}
