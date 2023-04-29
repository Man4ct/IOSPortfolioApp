//
//  HeaderView.swift
//  PortfolioFahmi
//
//  Created by Fahmi Fahreza on 27/04/23.
//

import SwiftUI

struct HeaderView: View {
    var appModel : AppModel
    var body: some View {
        VStack {
            Image("self")
                .resizable()
                .frame(width: 100, height: 100)
                .padding(5)
                .background(
                Circle()
                    .opacity(0.7)
                    .shadow(radius: 5)
                )
            Text(appModel.portfolio.name)
                .font(Montserrat.bold.font(size: 17))
                .padding(.top, 8)
            
            Text(appModel.portfolio.role)
                .font(Montserrat.mediumItalic.font(size: 10))
                .opacity(0.85)
                .padding(.top, -2)
            
            HStack {
                Image(systemName: "location.fill")
                    .font(.system(size: 10, weight: .semibold))
                
                Text(appModel.portfolio.location)
                    .font(Montserrat.medium.font(size: 17))
            }
            .padding(.top, 10)
            .opacity(0.45)
            
            Text(appModel.portfolio.description)
                .font(Montserrat.italic.font(size: 16))
                .opacity(0.6)
                .padding(.top, 24)
                .lineSpacing(12)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(appModel: AppModel())
            .padding(24)
    }
}
