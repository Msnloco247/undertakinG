# Changelog

All notable changes to this project will be documented in this file. 
*(Generated automatically)*

## [1.0.0] - MVP Release
This is the initial set of features for the project, forming the Minimum Viable Product.

### ✨ New Features
- **Project Structure**: Built a highly scalable Hono + Bun architecture.
- **AI Integration**: Implemented `openrouter.service.ts` connecting to OpenRouter AI with robust retry mechanisms.
- **Divided Prompt Logic**: Prompts are properly separated across `/foda-zona`, `/producto-estrategia`, and `/pasos-presupuesto` to maintain low token usage and high reliability.
- **Validation**: Added `validatePreguntasMiddleware` to limit lengths and sanitize user inputs.
- **Rate Limiting**: Base level memory rate-limiting implemented.

### 🔧 Improvements (Identified in Security & Architecture Audit)
- Needs stricter CORS implementation for production.
- Needs Redis-backed rate limiting to support horizontal scaling.
- Suggested implementing custom Error classes to improve API error handling patterns.
