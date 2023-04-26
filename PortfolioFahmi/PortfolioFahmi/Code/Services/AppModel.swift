//
//  AppModel.swift
//  PortfolioFahmi
//
//  Created by Fahmi Fahreza on 27/04/23.
//

import Foundation

class AppModel: ObservableObject {
    var portfolio: Portfolio = Portfolio(name: "Fahmi Fahreza", role: "Backend Developer | IOS Enthusiast", description: "Immensely in love about IOS and it's ecosystem, currently working as a backend developer, so i love messing with some logic", location: "Makassar, Indonesia", skills: [
        Skill(id: UUID().uuidString, skillName: "NodeJs", image: "node"),
        Skill(id: UUID().uuidString, skillName: "GraphQL", image: "graphql"),
        Skill(id: UUID().uuidString, skillName: "MongoDB", image: "mongodb"),
        Skill(id: UUID().uuidString, skillName: "Swift", image: "swift"),

    ], experiences: [
        Experience(id: UUID().uuidString, companyName: "Zettabyte Pte Ltd", role: "Fresher Backend Developer Lv.2 - Red Alert Production", duration: "Apr 2023 - Present"),
        Experience(id: UUID().uuidString, companyName: "Zettabyte Pte Ltd", role: "Fresher Backend Developer - Finance", duration: "Des 2022 - Apr 2022")
    ])
}
