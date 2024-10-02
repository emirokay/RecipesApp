//
//  RecipeDetails.swift
//  RecipesApp
//
//  Created by Emir Okay on 1.10.2024.
//

import SwiftUI

struct RecipeDetailsView: View {
	let recipe: Recipe
	@State var iHave: [String] = []
	var body: some View {
		NavigationStack {
			ScrollView {
				Image(recipe.image)
					.resizable()
					.scaledToFit()
				
				VStack {
					VStack(alignment: .leading){
						HStack{
							Text("Difficulty: \(recipe.difficulty)")
							Spacer()
							Text("Cook Time: \(recipe.cookTime)")
							
						}
						HStack {
							Text("Servings: \(recipe.servings)")
							Spacer()
							Text("Prep Time: \(recipe.prepTime)")
						}
					}
					.padding()
					.background(.quaternary)
					.clipShape(RoundedRectangle(cornerRadius: 15))
					
					VStack(alignment: .leading){
						Text("Ingredients")
							.font(.title2)
							.bold()
							.padding(.bottom, 4)
						ForEach(recipe.ingredients, id: \.name) { ingredient in
							Button {
								if iHave.contains(ingredient.name) {
									self.iHave.removeAll(where: { $0 == ingredient.name })
								} else {
									self.iHave.append(ingredient.name)
								}
							} label: {
								HStack {
									Image(systemName: iHave.contains(ingredient.name) ? "checkmark.circle.fill" : "circle")
										.font(.title2)
										.foregroundStyle(iHave.contains(ingredient.name) ? .gray : .blue)
										.contentTransition(.symbolEffect(.replace))

									Text("\(ingredient.quantity) \(ingredient.name)")
										.padding(4)
										.font(.callout)
										.foregroundStyle(iHave.contains(ingredient.name) ? .gray : .primary)
										.strikethrough(iHave.contains(ingredient.name) ? true : false)
									Spacer()
								}
							}
							
								
						}
					}
					.padding()
					.background(.quaternary)
					.clipShape(RoundedRectangle(cornerRadius: 10))
					
					VStack(alignment: .leading){
						Text("Instructions")
							.font(.title2)
							.bold()
							.padding(.bottom, 4)
						Text(recipe.instructions)
					}
					.padding()
					.background(.quaternary)
					.clipShape(RoundedRectangle(cornerRadius: 15))
					
				}
				.padding()
			}
			.scrollIndicators(.hidden)
			.navigationTitle(recipe.name)
		}
    }
}

#Preview {
	RecipeDetailsView(recipe: Recipe.example)
}
