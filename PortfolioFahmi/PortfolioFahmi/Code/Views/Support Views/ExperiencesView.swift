//
//  ExperiencesView.swift
//  PortfolioFahmi
//
//  Created by Fahmi Fahreza on 30/04/23.
//

import SwiftUI

struct ExperiencesView: View {
    var experiences : [Experience]
    @State var showExperiences = true
    
    var body: some View {
        VStack(alignment: .leading ,spacing: 24) {
            HStack(spacing: 15) {
                Text("Experiences")
                    .font(Montserrat.bold.font(size: 21))
                    .opacity(0.9)
                
                
                Button {
                    withAnimation(.easeInOut(duration: 0.15)) {
                        showExperiences.toggle()
                    }
                } label: {
                    Image(systemName: "chevron.up")
                        .font(.system(size: 10, weight: .medium))
                        .rotationEffect(self.showExperiences ? .zero : .degrees(180))
                }.buttonStyle(PlainButtonStyle())
            }.padding(.bottom, 14)
            
            if(showExperiences) {
                    ForEach(experiences) { experience in
                        ExperienceView(experience: experience)
                    }
            }
        }

    }
}

struct ExperiencesView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader{ proxy in
            ExperiencesView(experiences: AppModel().portfolio.experiences)
                .padding(24)
        }
    }
}
