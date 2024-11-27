# RecipesApp

An iOS application developed with Swift and SwiftUI, designed to assist users in preparing dishes effortlessly by providing a curated selection of recipes with comprehensive cooking instructions and ingredient details. Recipes are loaded from a `recipes.json` file bundled within the app, ensuring a smooth offline experience.

## Features

- **Browse Recipes**: Explore a curated selection of recipes across various categories.
- **Detailed Instructions**: Access step-by-step cooking instructions for each recipe.
- **Ingredient Lists with Strikeout**: View a comprehensive ingredient list and strike out items as you gather them.
- **Dark Mode Support**: Automatically adapts to the user's system settings for a seamless experience in both light and dark themes.
- **Offline Recipes**: Recipes are loaded locally from a `recipes.json` file, ensuring accessibility even without an internet connection.

## Technologies Used

- **Language**: Swift
- **Framework**: SwiftUI
- **Architecture**: MVVM (Model-View-ViewModel)
- **Data Handling**: JSON decoding with a custom bundle decoder extension.

## Project Structure

- **Models**: Defines the data structures representing recipes and their attributes.
- **ViewModels**: Manages the business logic and data manipulation, facilitating the interaction between models and views.
- **Views**: Contains SwiftUI views that compose the user interface, including recipe lists, ingredient strikeout functionality, and detail screens.
- **Helpers**: 
  - **Bundle Decoder Extension**: Simplifies the process of loading and decoding JSON files bundled within the app.

## Getting Started

### Prerequisites

- **Xcode**: Version 12.0 or higher
- **iOS**: Deployment target of iOS 14.0 or higher
- **macOS**: Version 10.15 or higher

### Steps

1. **Clone the Repository**:
   ```bash
   git clone https://github.com/emirokay/RecipesApp.git
2. Navigate to the Project Directory:
	```bash
	cd RecipesApp
3. Open in Xcode:
	```bash
	open RecipesApp.git.xcodeproj
4. Build and Run:
- Select a simulator or connect a physical device.
- Click the 'Run' button in Xcode to build and launch the app.

## Requirements
- Xcode: Version 12.0 or higher
- iOS: Deployment target of iOS 14.0 or higher

## Contributing
Contributions are welcome! Please fork the repository and submit a pull request with your proposed changes.

## License
This project is licensed under the MIT License. See the LICENSE file for details.

## Screenshots
<img width="546" alt="Screenshot 2024-11-27 at 21 16 18" src="https://github.com/user-attachments/assets/59c48fcb-dab9-469f-9b01-382c52051253">
<img width="546" alt="Screenshot 2024-11-27 at 21 16 24" src="https://github.com/user-attachments/assets/c79af153-3193-482f-8fbf-7757bc3c952b">
<img width="546" alt="Screenshot 2024-11-27 at 21 16 37" src="https://github.com/user-attachments/assets/eebb53ab-1ca9-41cd-84b4-70892eff0cb8">
<img width="546" alt="Screenshot 2024-11-27 at 21 17 20" src="https://github.com/user-attachments/assets/51f0a8e1-ef66-49b7-b9bb-9dea7b055994">
<img width="546" alt="Screenshot 2024-11-27 at 21 16 47" src="https://github.com/user-attachments/assets/a0554ad5-1536-4f35-aec3-f679f03126fb">
<img width="546" alt="Screenshot 2024-11-27 at 21 19 07" src="https://github.com/user-attachments/assets/fc6a6bbe-4f97-4f2d-a101-fc533dbb9e50">





