//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Vamshi krishna Jillapally on 12/4/23.
//

import SwiftUI

struct FrameworkGridView: View {
    
    let columns: [GridItem] = [GridItem(.flexible()),
                               GridItem(.flexible()),
                               GridItem(.flexible())]
    var body: some View {
        LazyVGrid(columns: columns){
            ForEach(MockData.frameworks){
                framework in
                FrameworkTitleView(name: framework.name, imageName: framework.imageName)
            }

        }
        
    }
}

#Preview {
    FrameworkGridView()
}

struct FrameworkTitleView: View{
    let name: String
    let imageName: String
    var body: some View{
        VStack{
            Image(imageName)
                .resizable()
                .frame(width:90, height:90)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }
    }
    
}