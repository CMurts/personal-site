# YouTube Video Integration Guide

## Best Approach: Direct iframe Embeds (Recommended)

The simplest and most reliable way to embed YouTube videos is using direct iframe embeds. This is what's currently implemented in your portfolio page.

### How to Add a YouTube Video

1. **Get the Video ID from YouTube URL:**
   - Your YouTube URL looks like: `https://www.youtube.com/watch?v=dQw4w9WgXcQ`
   - The Video ID is: `dQw4w9WgXcQ` (the part after `v=`)

2. **Use the Embed Format:**
   ```html
   <iframe src="https://www.youtube.com/embed/VIDEO_ID" 
           frameborder="0" 
           allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
           allowfullscreen>
   </iframe>
   ```

3. **Replace VIDEO_ID with your actual video ID**

### Example

If your video URL is: `https://www.youtube.com/watch?v=jNQXAC9IVRw`

Your embed code would be:
```html
<iframe src="https://www.youtube.com/embed/jNQXAC9IVRw" 
        frameborder="0" 
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" 
        allowfullscreen>
</iframe>
```

## Alternative Approaches

### Option 2: YouTube oEmbed API (Dynamic)

If you want to convert YouTube URLs to embed codes automatically, you can use the oEmbed API:

```javascript
// Example: Convert YouTube URL to embed
const youtubeUrl = "https://www.youtube.com/watch?v=VIDEO_ID";
const embedUrl = `https://www.youtube.com/oembed?url=${encodeURIComponent(youtubeUrl)}&format=json`;
```

### Option 3: YouTube Data API v3 (Advanced)

For pulling videos from a channel or playlist automatically:
- Requires YouTube API key
- More complex setup
- Good if you want videos to update automatically from your channel

## Quick Reference

**YouTube URL formats:**
- Regular: `https://www.youtube.com/watch?v=VIDEO_ID`
- Short: `https://youtu.be/VIDEO_ID`
- Embed: `https://www.youtube.com/embed/VIDEO_ID`

**To get Video ID:**
- From `youtube.com/watch?v=VIDEO_ID` → ID is `VIDEO_ID`
- From `youtu.be/VIDEO_ID` → ID is `VIDEO_ID`

## Tips

- Videos are responsive and will scale to fit the container
- The `allowfullscreen` attribute enables fullscreen mode
- You can add `?autoplay=1` to the embed URL to autoplay (not recommended for portfolio)
- Use `?start=30` to start video at 30 seconds: `https://www.youtube.com/embed/VIDEO_ID?start=30`
