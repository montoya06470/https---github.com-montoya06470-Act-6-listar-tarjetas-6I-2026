# Coffee App Blueprint

## Overview

A simple Flutter application that displays a list of different coffee types in a card format. Each card shows the coffee's name, a short description, and an image.

## Style, Design, and Features

*   **Theme:** The app uses a coffee-inspired color palette with shades of brown for the body, contrasted with a vibrant red `AppBar`.

*   **AppBar:**
    *   **Title:** "Caffenio la Montoya", centered and in white text.
    *   **Background Color:** Red.
    *   **Leading Icon:** A coffee icon (`Icons.coffee`).
    *   **Action Icons:** Three white icons on the right: a tool (`Icons.build`), an emergency icon (`Icons.emergency`), and a camera (`Icons.camera_alt`).

*   **Card Layout:** 
    *   Each coffee is displayed in a `Card` widget with rounded corners and an elevation shadow.
    *   The content within the card is centered.

*   **Card Content:** Each card contains:
    *   A `CircleAvatar` displaying an image of the coffee from a URL. It shows a loading indicator while fetching the image and a fallback coffee icon if the image fails to load.
    *   A title with the coffee's name in bold white text, centered.
    *   A subtitle with a short description in a lighter white text, centered.
    *   A trailing `Icon` of a thumbs-up.

*   **Data:** The coffee data (title, subtitle, and image URL) is hardcoded in the `LosProductos` widget.
