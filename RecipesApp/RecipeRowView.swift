//
//  RecipeRowView.swift
//  RecipesApp
//
//  Created by Emir Okay on 1.10.2024.
//

import SwiftUI

struct RecipeRowView: View {
	let recipe: Recipe
	
	var body: some View {
		VStack(alignment: .leading){
			Image(recipe.image)
				.resizable()
				.scaledToFit()
				.clipShape(RoundedRectangle(cornerRadius: 10))
			Text(recipe.name)
				.bold()
			Text("Difficulty: \(recipe.difficulty)")
				.foregroundStyle(.secondary)
				.font(.footnote)
			
			
			ScrollView(.horizontal) {
				LazyHStack{
					ForEach(recipe.ingredients, id: \.name) { ingredient in
						Text(ingredient.name)
							.padding(4)
							.foregroundStyle(.secondary)
							.font(.footnote)
							.background(
								RoundedRectangle(cornerRadius: 10)
									.fill(Color(.systemGray5))
									.shadow(radius: 3, x: 0.2, y: 0.2)
							)
							
							
					}
				}
				.offset(x: 3)
			}
			.scrollIndicators(.hidden)
			.frame(height: 40)
			
			
		}
	}
}

#Preview {
	RecipeRowView(recipe: Recipe.example)
}
