//
//  ContentView.swift
//  PortfolioFahmi
//
//  Created by Fahmi Fahreza on 26/04/23.
//

import SwiftUI

struct PortfolioView: View {
    
    var appModel: AppModel = AppModel()
    
    var body: some View {
        ZStack {
            Color(UIColor.systemBackground)
                .ignoresSafeArea()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    
                    HeaderView(appModel: appModel)
                    
                    SkillsView(skills: AppModel().portfolio.skills, width: UIScreen.main.bounds.size.width - 40)
                        .padding(.top, 32)
                    
                    ExperiencesView(experiences: AppModel().portfolio.experiences)
                        .padding(.top, 32)

                    
                }.padding(24)
            }
        }
    }
}

struct PortfolioView_Previews: PreviewProvider {
    static var previews: some View {
        PortfolioView()
            .colorScheme(.dark)
    }
}
