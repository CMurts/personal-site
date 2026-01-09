# Personal Site - Portfolio

This is a simple, minimalist personal website with a portfolio section for showcasing videos and integrated marketing campaigns.

## Structure

- `index.html` - Main website file with portfolio section
- `portfolio-data.json` - Portfolio items data (optional, for future enhancement)

## Adding Portfolio Items

### Method 1: Direct HTML Editing

Edit `index.html` and add new portfolio items in the `#portfolioGrid` div. Each item follows this structure:

```html
<div class="portfolio-item" data-type="video">
  <div class="type">Video</div>
  <h3>Your Project Title</h3>
  <div class="description">
    Your project description here.
  </div>
  <div class="video-container">
    <iframe src="YOUR_VIDEO_EMBED_URL" frameborder="0" allowfullscreen></iframe>
  </div>
  <a href="YOUR_LINK" class="link" target="_blank">View Project →</a>
</div>
```

For campaigns (non-video):
```html
<div class="portfolio-item" data-type="campaign">
  <div class="type">Integrated Campaign</div>
  <h3>Campaign Name</h3>
  <div class="description">
    Campaign description here.
  </div>
  <a href="YOUR_LINK" class="link" target="_blank">View Campaign →</a>
</div>
```

### Video Embed URLs

- **YouTube**: `https://www.youtube.com/embed/VIDEO_ID`
- **Vimeo**: `https://player.vimeo.com/video/VIDEO_ID`
- **Other**: Use the embed URL provided by your video platform

## Features

- ✅ Minimalist design matching your existing site aesthetic
- ✅ Filterable portfolio (All / Videos / Campaigns)
- ✅ Responsive grid layout
- ✅ Easy to add/edit items
- ✅ Video embedding support

## Local Development

### Previewing Your Site Locally

To preview your site in a browser before deploying:

#### Option 1: Python Server (Recommended)

1. **Open Terminal** (Applications > Utilities > Terminal, or press `Cmd+Space` and type "Terminal")

2. **Navigate to your project folder:**
   ```bash
   cd /Users/colin/personal-site
   ```

3. **Start the server:**
   ```bash
   python3 server.py
   ```

4. **Your browser should automatically open** to `http://localhost:8000`
   - If it doesn't, manually open your browser and go to: `http://localhost:8000`

5. **To stop the server:**
   - Go back to the Terminal window
   - Press `Ctrl+C` (hold Control and press C)
   - The server will stop and you'll see "Server stopped."

#### Option 2: Quick Script

You can also use the provided script:
```bash
cd /Users/colin/personal-site
./start-server.sh
```

**Note:** The server must be running to view your site. Keep the Terminal window open while previewing. When you're done, press `Ctrl+C` to stop it.

## Deployment

This site is currently hosted on GitHub Pages. To update:

1. Make your changes to `index.html`
2. Commit and push to your repository
3. GitHub Pages will automatically update

## Customization

The portfolio section uses the same Courier Prime font and minimalist styling as the rest of your site. You can customize:

- Colors: Edit the CSS color values
- Grid layout: Adjust `grid-template-columns` in `.portfolio-grid`
- Spacing: Modify padding and margin values
