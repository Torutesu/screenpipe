# Chrome Web Store Listing

## Name
SHOGUN Browser Bridge

## Short Description (132 chars max)
Connects your browser to SHOGUN for AI-powered web automation, data sync, and memory capture from authenticated pages.

## Detailed Description
SHOGUN Browser Bridge connects your browser to the SHOGUN desktop app, enabling AI-powered blades to interact with web pages you're logged into.

HOW IT WORKS
This extension connects to SHOGUN's local server (localhost:3030) via WebSocket. When a SHOGUN blade needs to read data from a web page, it sends a request through the local server to this extension, which executes it in the browser tab where you're already authenticated.

USE CASES
- Sync your ChatGPT and Claude conversation history into SHOGUN memories
- Extract data from authenticated dashboards and internal tools
- Automate web workflows triggered by your screen activity

PRIVACY & SECURITY
- All communication stays on localhost — no data is sent to external servers
- The extension only activates when SHOGUN's local server is running
- JavaScript execution is triggered only by your local SHOGUN blades
- No tracking, no analytics, no data collection
- Fully open source: https://github.com/select-kk/screenpipe

REQUIREMENTS
- SHOGUN desktop app (https://syogun.com) running on the same machine
- Works with Chrome, Arc, Brave, Edge, and other Chromium browsers

## Category
Productivity

## Language
English

## Privacy Policy URL
https://syogun.com/privacy

## Website
https://syogun.com

## Support URL
https://github.com/select-kk/screenpipe/issues
