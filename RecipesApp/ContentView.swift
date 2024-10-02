//
//  ContentView.swift
//  RecipesApp
//
//  Created by Emir Okay on 1.10.2024.
//

import SwiftUI

struct ContentView: View {
	let recipes = Bundle.main.decode(Recipes.self, from: "recipes.json")
	
    var body: some View {
		NavigationStack {
			
			List{
				ForEach(recipes.recipes) { recipe in
					ZStack {
						NavigationLink(destination: RecipeDetailsView(recipe: recipe)) { EmptyView() }
							.opacity(0.0)
						RecipeRowView(recipe: recipe)
					}
				}
			}
			.navigationTitle("Recipes")
		}
    }
}

#Preview {
    ContentView()
}
