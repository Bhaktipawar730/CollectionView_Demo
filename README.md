# CollectionView_Demo

**CollectionView_Demo** is an iOS application built using Swift and UIKit. The app demonstrates how to implement a `UICollectionView` to display a grid of images in a two-column layout.

## Features
1. **Grid Layout:** Displays images in a two-column grid layout with no gaps between cells.
2. **Custom Cell:** Each cell contains an `UIImageView` to show an image.
3. **Dynamic Sizing:** Automatically adjusts cell size to fit the screen width.
4. **Smooth Scrolling:** Efficient scrolling with reusable cells using `dequeueReusableCell`.

## How It Works
1. A `UICollectionView` is added to the storyboard and connected to the code.
2. The images are stored in an array and shown in the collection view.
3. Each cell is dynamically sized using the collection view's width to ensure a two-column layout.
4. The `UICollectionViewDelegate` and `UICollectionViewDataSource` methods handle cell creation, sizing, and data display.
5. The images are displayed seamlessly in a scrollable grid.

**Screenshots->**

![1](https://github.com/user-attachments/assets/cf8a4ec3-60cc-430b-9e24-45d836104c8c)
