# EmprendeIA API - Emprendimientos (MVP)

Esta API es el backend (desarrollado con **Bun** y **Hono**) diseñado para analizar ideas de negocio y emprendimientos. Utiliza un proveedor de IA para integrarse con modelos de IA generativa y brindar información valiosa estructurada en tres enfoques distintos.

## 🚀 MVP (Producto Mínimo Viable)

El MVP actual se enfoca en recibir una serie de respuestas de un usuario sobre su idea de negocio y su contexto geográfico, y procesarla a través de tres endpoints principales:
1. **/api/preguntas/foda-zona**: Genera un análisis FODA y evalúa el impacto de la zona geográfica.
2. **/api/preguntas/producto-estrategia**: Define la propuesta de valor, público objetivo y estrategias a corto/mediano/largo plazo.
3. **/api/preguntas/pasos-presupuesto**: Entrega una guía paso a paso con justificación de costos adaptados al contexto local.

La IA está instruida estrictamente para responder siempre en JSON, lo cual es validado y entregado al frontend.

---

## 🏗️ Análisis Arquitectónico y Estructural

### Validación de `openrouter.service.ts`
El servicio `openrouter.service.ts` **separa excelentemente la lógica de cada prompt**.
- **Escalabilidad y Entendimiento**: Al tener prompts de sistema separados (`FODA_ZONA_SYSTEM_PROMPT`, `PRODUCTO_ESTRATEGIA_SYSTEM_PROMPT`, `PASOS_PRESUPUESTO_SYSTEM_PROMPT`), cada endpoint tiene un objetivo claro. Esto evita la confusión del LLM ("Prompt overloading"), reduce el uso de tokens por request, y permite modificar o escalar una funcionalidad sin afectar las demás.
- **Resiliencia**: Implementa un patrón de *Retry con Backoff Exponencial* (`fetchWithRetry`) esencial al depender de APIs externas de IA.

---

## 🛡️ Fallos de Seguridad Identificados

1. **CORS Permisivo**: En `config/env.ts` el valor por defecto de `ALLOWED_ORIGINS` es `*`. Si no se configura estrictamente en producción, la API queda expuesta a ser consumida desde cualquier dominio, posibilitando ataques de CSRF (Cross-Site Request Forgery).
2. **Rate Limiting en Memoria**: El middleware de Rate Limiting (`rateLimit.middleware.ts`) usa un `Map` en memoria. Si la aplicación escala horizontalmente (múltiples instancias/contenedores), cada instancia tendrá un contador independiente por IP, evadiendo el límite real de cuota global.
3. **Peligro de Prompt Injection**: Aunque existe validación y sanitización (limite de caracteres y eliminación de caracteres de control en `validate.middleware.ts`), no hay un modelo de moderación previo que filtre intentos de *Prompt Injection* antes de enviarlos al proveedor de IA.

---

## 📈 Patrones de Diseño para Mejorar la Escalabilidad

Basado en las mejores prácticas de **API Design** y **Error Handling**:

1. **Almacenamiento Distribuido para Rate Limit**:
   - **Patrón**: Usar **Redis** o Memcached en lugar de memoria RAM para el middleware de Rate Limit. Esto permitirá escalar horizontalmente sin perder el tracking de los requests por IP.
2. **Jerarquía de Errores (Error Handling Pattern)**:
   - **Patrón**: Implementar clases de error personalizadas (`ApplicationError`, `ValidationError`, `ExternalServiceError`). Esto limpiará el `error.middleware.ts` y permitirá una propagación de errores más estandarizada en toda la aplicación.
3. **Estructura HATEOAS / REST Estricto**:
   - Para escalar la API, refactorizar la ruta `/api/preguntas/...` a un enfoque basado en recursos, por ejemplo: `POST /api/proyectos/{id}/analisis/foda`.
4. **Structured Outputs (Prompt Engineering)**:
   - Para mayor confiabilidad, si el modelo lo permite, enviar un `response_format` JSON Schema estricto. Actualmente el sistema confía en la instrucción textual y usa un regex para extraer el JSON, lo cual puede fallar con ciertos modelos.

---

## 🛠️ Instalación y Ejecución

Para instalar dependencias:
\`\`\`bash
bun install
\`\`\`

Para ejecutar en desarrollo:
\`\`\`bash
bun run dev
\`\`\`
