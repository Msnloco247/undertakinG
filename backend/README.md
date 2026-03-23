# UndertakingG — Backend (Bun/Hono)

This is the AI-driven API service of the **UndertakingG** platform. It provides specialized orchestration for generative models to generate structured strategic insights for entrepreneurs.

## 🚀 API Overview

The backend is built with **Bun** and **Hono**, designed for low-latency responses and highly-structured data processing.

### Main Service Endpoints:
- **`POST /api/preguntas/foda-zona`**: SWOT analysis and regional market assessment.
- **`POST /api/preguntas/producto-estrategia`**: Value proposition, audience, and term-based strategies.
- **`POST /api/preguntas/pasos-presupuesto`**: Operational and legal roadmap with structured budgeting.

## 🛠️ Tech Stack

- **Runtime**: Bun
- **Framework**: Hono
- **Language**: TypeScript
- **AI Orchestration**: OpenRouter SDK
- **Data Safety**: Middleware-based input validation and sanitization.

## ⚙️ Key Architectural Features

- **Prompt Separation**: Prompts are strategically isolated to ensure high model reliability and token efficiency.
- **Dynamic AI Model Selection**: Built to consume specific models via configuration for optimized cost and performance.
- **Resilient AI Calling**: Implements retry patterns with exponential backoff for external API dependency stability.
- **Structured JSON Validation**: Ensures all AI responses adhere to strict JSON schemas before being served.

## 🛠️ Commands

From the `backend` directory:
- `bun install`: Install dependencies.
- `bun run dev`: Start the local development server in watch mode.
- `bun run test`: Run backend tests (if available).
