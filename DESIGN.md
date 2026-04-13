
# SHOGUN Design Guide

## Philosophy

**"Dark x Gold x Stealth"**

Dark backgrounds. Gold accents. Clean typography. Precision without excess.

---

## Core Values

| Value | Description |
|-------|-------------|
| **Privacy First** | Local-first execution and data by default, cloud optional |
| **Open Source** | Inspect, modify, own, clean abstractions and readable codebase |
| **Simplicity** | Clean, minimal interface, powerful abstractions |
| **Radical optimism** | There is no such thing as impossible |
| **Progressive disclosure** | Easy, simple for non technical users but power users can still go deep |

---

## Typography

### Font Stack

| Purpose | Font | Fallbacks |
|---------|------|-----------|
| **Headings (sans)** | Helvetica Neue | Noto Sans JP, system-ui, sans-serif |
| **Body (sans)** | Helvetica Neue | Noto Sans JP, system-ui, sans-serif |
| **Code (mono)** | Geist Mono | monospace |

### Usage Patterns

- **Headings**: Helvetica Neue, clean and direct
- **Body text**: Helvetica Neue for readability, Noto Sans JP for Japanese characters
- **Code/technical**: Geist Mono
- **Buttons**: Uppercase with tracking-wide
- **Labels**: lowercase, medium weight

---

## Colors

### Palette: Dark x Gold x Stealth

| Token | Hex | Usage |
|-------|-----|-------|
| **Background** | #0A0A0A | Main background (not pure black) |
| **Card** | #141414 | Card and panel surfaces |
| **Border** | #2A2A2A | Borders and dividers |
| **Accent Gold** | #C9A84C | Primary accent, highlights, CTAs |
| **Accent Red** | #C0392B | Destructive actions, critical alerts |
| **Text Primary** | #FFFFFF | Headings, primary content |
| **Text Secondary** | #999999 | Descriptions, secondary content |
| **Text Tertiary** | #666666 | Disabled, placeholder |

### Text Hierarchy

| Level | Color |
|-------|-------|
| Primary | #FFFFFF |
| Secondary | #999999 |
| Tertiary | #666666 |
| Disabled | #4D4D4D |

### Accent Rules

- Gold (#C9A84C) for primary actions, active states, and highlights
- Red (#C0392B) only for destructive or critical states
- No other accent colors without explicit design approval

---

## Geometry

### Border Radius

```
--radius-card: 8px
--radius-button: 4px
```

Cards use 8px radius. Buttons and inputs use 4px radius.

### Borders

- Width: 1px solid
- Color: #2A2A2A
- No gradients, no shadows

### Shadows

**None.** Flat design throughout. Use borders for separation.

---

## Components

### Buttons

```
- Font: UPPERCASE, tracking-wide
- Border: 1px solid #2A2A2A
- Corners: 4px radius
- Transition: 150ms
- Hover: Gold accent highlight
- Primary: Gold background (#C9A84C), dark text
```

### Cards

```
- Background: #141414
- Border: 1px solid #2A2A2A
- Shadow: None
- Corners: 8px radius
- Padding: 24px (p-6)
```

### Inputs

```
- Style: Command-line aesthetic
- Font: Monospace (Geist Mono)
- Border: 1px solid #2A2A2A
- Corners: 4px radius
- Height: 40px (h-10)
- Focus: Gold border (#C9A84C)
```

### Dialogs

```
- Background: #141414
- Border: 1px solid #2A2A2A
- Shadow: None
- Corners: 8px radius
- Animation: 150ms fade
- Title: lowercase
```

---

## Motion & Animation

### Principles

- **Fast**: 150ms standard duration
- **Minimal**: Only essential state changes
- **Binary**: On/off, no elaborate easing

### Timing

| Animation | Duration |
|-----------|----------|
| Button hover | 150ms |
| Dialog open/close | 150ms |
| Accordion | 200ms |
| Page transitions | 150ms |

### Iteration

Do at least 10 iterations on your animations, at every turn criticise your own design and improve it until it matches the unique brand style

---

## Brand Voice

### Tone

- Lowercase, casual, direct
- Technical and still very accessible
- No marketing fluff

---

## Design Checklist

When creating new UI components:

- [ ] Using Helvetica Neue for headings and body
- [ ] Using Geist Mono for code and technical content
- [ ] 1px solid border (#2A2A2A)
- [ ] No box shadows
- [ ] 8px radius for cards, 4px for buttons/inputs
- [ ] Dark background (#0A0A0A), card surface (#141414)
- [ ] Gold (#C9A84C) for primary accents only
- [ ] 150ms transitions
- [ ] UPPERCASE for buttons, lowercase for titles
- [ ] Hover state: gold accent highlight
- [ ] Focus ring: 1px solid gold with offset

---

## Key Files

| Purpose | Location |
|---------|----------|
| Design tokens | `screenpipe-app-tauri/app/globals.css` |
| Tailwind config | `screenpipe-app-tauri/tailwind.config.ts` |
| Color constants | `screenpipe-app-tauri/lib/constants/colors.ts` |
| UI components | `screenpipe-app-tauri/components/ui/*.tsx` |

---
