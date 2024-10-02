//
//  Recipes.swift
//  RecipesApp
//
//  Created by Emir Okay on 1.10.2024.
//

import Foundation

struct Recipes: Codable {
	let recipes: [Recipe]
}

struct Recipe: Codable, Identifiable {
	let id: Int
	let name, image: String
	let servings: Int
	let prepTime: String
	let cookTime: String
	let difficulty: String
	let ingredients: [Ingredient]
	let instructions: String
	
	static let example = Recipe(
		id: 1,
		name: "Spaghetti Bolognese",
		image: "spaghetti",
		servings: 4,
		prepTime: "15 mins",
		cookTime: "1 hour",
		difficulty: "Medium",
		ingredients: [
			Ingredient(name: "Spaghetti", quantity: "200g"),
			Ingredient(name: "Ground Beef", quantity: "500g"),
			Ingredient(name: "Tomato Sauce", quantity: "2 cups"),
			Ingredient(name: "Onion", quantity: "1 chopped"),
			Ingredient(name: "Garlic", quantity: "2 cloves minced"),
			Ingredient(name: "Spaghsetti", quantity: "200g"),
			Ingredient(name: "Grousnd Beef", quantity: "500g"),
			Ingredient(name: "Tomsato Sauce", quantity: "2 cups"),
			Ingredient(name: "Onsion", quantity: "1 chopped"),
			Ingredient(name: "Garslic", quantity: "2 cloves minced")],
		instructions: "Cook the spaghetti according to package instructions. In a separate pan, brown the ground beef with onion and garlic. Add tomato sauce to the beef and simmer for 45 minutes. Serve the sauce over the spaghetti."
	)

}

struct Ingredient: Codable {
	let name, quantity: String
}


