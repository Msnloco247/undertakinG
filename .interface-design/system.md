# Interface Design System — EmprendeIA

## Architecture & Logic
- **AI Model Selection**: The system architecture mandates that the AI model is controlled exclusively via the `OPENROUTER_MODEL` environment variable. 
  - Default: `openai/gpt-4o-mini`.
  - Service: `backend/src/services/openrouter.service.ts` must always consume the model from the global `config.openrouter.model`.
- **Response Format**: All IA services must return structured JSON that includes a `modelo` field indicating which specific model generated the response (useful for debugging parallel calls).

## Design Direction
- **Tone**: Professional, technical, and authoritative. Like a high-end financial audit or architectural blueprint.
- **Aesthetic**: "Ledger Blueprint" — high contrast, sharp borders, and monospaced technical metadata.
- **Color World**: 
  - **Ink Black**: `#0A0B0E` (Canvas)
  - **Financial Gold**: `#F59E0B` (Accents & Highlights)
  - **Blueprint Gray**: `#1F2937` (Subtle separation)

## Visual Patterns
- **The Ledger Line**: A horizontal gradient rule (Gold to Transparent) used to anchor headers and separate them from technical data.
- **Data Grids**: Use a two-column layout for technical info:
  - Left column: Monospaced labels (`data-key`) with a right border separation.
  - Right column: Descriptive content (`data-value`).
- **Typography**:
  - **Headers**: `DM Serif Display` in Uppercase, Bold (700).
  - **Technical Data/Labels**: `JetBrains Mono` for accuracy and "ledger" feel.
  - **Body**: `Instrument Sans` for readability.

## Spacing & Depth
- **Base Unit**: 8px (`var(--sp-2)`).
- **Depth Strategy**: Borders-only. Avoid heavy shadows to maintain the "printed report" aesthetic. Use elevation via subtle background shifts.
- **Separation**: Use dashed horizontal rules (`paso-spacer`) between major logical blocks (like Steps in a plan).

## Forms
- **Validation**: Fields must have real-time character counters and blur validation.
- **Loading State**: Use "Skeleton Screens" that follow the exact structure of the expected data to reduce perceived latency.
