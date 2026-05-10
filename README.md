# Compooser

A comprehensive iOS application that helps users find the right computer for their needs by categorizing options based on performance levels and budgets.

## Overview

Compooser simplifies the computer purchasing decision by organizing laptops and chromebooks into four distinct categories:

- **Elementary** - Basic & Cheap options for everyday use
- **Middle** - Slightly more powerful machines for moderate workloads
- **High** - Powerful laptops for demanding tasks
- **Professional** - Premium computers suitable for professional workflows

Each category includes detailed specifications for popular models to help users make informed purchasing decisions.

## Features

- **Computer Categories**: Browse computers organized by performance level and price range
- **Detailed Specifications**: View key specs including processor, GPU, and RAM for each model
- **User-Friendly Interface**: TableView-based navigation for easy browsing
- **HTML Documentation**: Embedded HTML resources with detailed information for each category
- **Responsive Design**: Adapts to different device sizes and orientations

## Project Structure

```
Compooser/
├── ViewControllers/
│   ├── ViewController.swift              # Main entry point
│   ├── CompTypeViewController.swift      # Computer category selection
│   ├── ComputerListViewController.swift  # Computer list display
│   ├── ComputerHtmlViewController.swift  # HTML detail viewer
│   ├── AboutViewController.swift         # About page
│   └── CompDetailTableViewCell.swift     # Custom table cell
├── Models/
│   └── CompTypeItem.swift                # Computer type data model
├── Resources/
│   ├── elementary[0-4].html              # Elementary level documentation
│   ├── Assets.xcassets/                  # Images and app icons
│   └── Base.lproj/                       # Storyboards & localization
└── Configuration/
    ├── AppDelegate.swift                 # App lifecycle management
    ├── SceneDelegate.swift               # Scene lifecycle management
    └── Info.plist                        # App metadata

```

## Computer Categories

### Elementary

Ideal for basic browsing, documents, and streaming

- Google Pixelbook Go
- Acer Chromebook Spin 3
- Microsoft Surface Go 2
- Lenovo Ideapad Duet Chromebook
- HP Chromebook

### Middle

Suitable for light development and creative work

- ASUS VivoBook 15
- Acer Chromebook 15
- Microsoft Surface Go 2
- Samsung Chromebook 4
- Apple MacBook Air

### High

Performance machines for coding, video editing, and design

- HP Envy 13
- MacBook Air M1
- Dell XPS 13
- Apple MacBook Pro 13 (M2)
- HP Spectre x360 13.5

### Professional

Enterprise-grade laptops for power users

- Lenovo ThinkPad X1 Carbon
- HP ZBook Firefly 3
- Microsoft Surface Pro 8
- Apple MacBook Pro

## Technical Details

- **Language**: Swift
- **Platform**: iOS
- **UI Framework**: UIKit
- **Architecture**: MVC (Model-View-Controller) with delegates

## Requirements

- iOS 13.0 or later
- Xcode 12.0 or later

## Building the Project

1. Clone the repository
2. Open `Compooser.xcodeproj` in Xcode
3. Select the target device or simulator
4. Press Cmd+R to build and run

## How It Works

1. **Launch App**: Users start at the main view
2. **Select Category**: Choose a computer category (Elementary, Middle, High, or Professional)
3. **Browse Models**: View a list of recommended computers with specifications
4. **View Details**: Access detailed HTML-based information for each category

## Delegates

The app implements custom delegate protocols for communication:

- `ComputerListViewControllerDelegate` - Handles list view events
- `ComputerHtmlViewControllerDelegate` - Manages HTML viewer interactions

## Assets

The app includes custom icons and images for each computer category:

- Elementary level imagery
- Middle level imagery
- High level imagery
- Professional level imagery
- General computer and search icons

## Author

Created by Parthiva Tamma (10/30/2022)

## License

[Add your license information here]

## Contributing

[Add contribution guidelines here]

---

**Note**: This application is designed to help users make informed decisions when selecting a laptop. Specifications and prices are subject to change and should be verified before purchase.
