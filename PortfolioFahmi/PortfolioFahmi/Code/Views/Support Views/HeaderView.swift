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
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(appModel: AppModel())
    }
}
