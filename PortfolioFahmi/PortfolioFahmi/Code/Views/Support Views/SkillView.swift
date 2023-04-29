//
//  SkillView.swift
//  PortfolioFahmi
//
//  Created by Fahmi Fahreza on 28/04/23.
//

import SwiftUI

struct SkillView: View {
    
    var skill: Skill
    var width: CGFloat = 120
    
    
    
    
    var body: some View {
        VStack {
            
            Image(skill.image)
                .frame(width: width, alignment: .top)
                .clipShape(Circle())
            
            Text(skill.skillName)
                .font(Montserrat.semibold.font(size: 13.5))
                .padding(.top, 10)
            
        }.padding()
        .frame(width: width, height: 120)
        
        
        .background(
        RoundedRectangle(cornerRadius: 12)
            .opacity(0.075)
        )
    }
}

struct SkillView_Previews: PreviewProvider {
    static var previews: some View {
        SkillView(skill: AppModel().portfolio.skills[1])
    }
}
