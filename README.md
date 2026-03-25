# UndertakingG — Monorepo de Análisis de Negocios con IA

UndertakingG es una plataforma integral diseñada para proporcionar a los emprendedores información basada en datos para sus ideas de negocio. Utilizando IA generativa, la plataforma transforma conceptos iniciales en planes estratégicos estructurados, incluyendo análisis FODA, posicionamiento de producto y presupuestos detallados.

## 🏗️ Arquitectura del Monorepo

Este proyecto está organizado como un monorepo que contiene dos servicios especializados principales:

- **Frontend (`/frontend`)**: Una interfaz web de alto rendimiento construida con **Astro**. Incluye el sistema de diseño "Ledger Blueprint" para una visualización clara y profesional de los resultados.
- **Backend (`/backend`)**: Un servicio de API rápido y ligero impulsado por **Bun** y **Hono**. Gestiona la orquestación compleja con proveedores de IA para generar inteligencia de negocios estructurada.

## 🚀 Características Principales

- **Análisis Estratégico**: Evaluación automatizada de FODA (SWOT) y del mercado regional.
- **Estrategia de Producto**: Definición de propuestas de valor, audiencias objetivo y estrategias de crecimiento a corto, mediano y largo plazo.
- **Planificación de Pasos**: Hoja de ruta operativa y legal paso a paso con presupuestos estimados.
- **Seguridad y Resiliencia**: Protecciones contra *Prompt Injection*, limitación de tasa (Rate Limiting) y validación estricta de datos.

## 🛠️ Stack Tecnológico

- **Runtime**: Bun
- **Frontend**: Astro (TypeScript)
- **Backend**: Hono (TypeScript)
- **Infraestructura**: Docker & Docker Compose
- **IA**: OpenRouter SDK

## 📦 Despliegue Rápido

El proyecto está preparado para ejecutarse con Docker.

```bash
cd backend
docker-compose up --build -d
```

---
*Este proyecto transforma ideas crudas en planes de negocio estructurados mediante inteligencia artificial.*
