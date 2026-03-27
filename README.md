# 🚀 UndertakingG — Sistema Inteligente de Planificación de Negocios

**UndertakingG** es una plataforma integral impulsada por Inteligencia Artificial diseñada para transformar ideas de negocio en planes estratégicos accionables. Utilizando modelos de lenguaje de última generación, la plataforma proporciona a emprendedores y analistas un análisis profundo y estructurado de sus propuestas comerciales.

---

## 🏗️ Arquitectura del Proyecto

Este repositorio sigue una estructura de **monorepo**, diseñada para separar claramente las responsabilidades y permitir un escalado independiente de sus componentes:

### 🌐 Frontend ([/frontend](file:///c:/Users/msnlo/Documents/Proyects/undertakingG/frontend))
Una interfaz web moderna y de alto rendimiento construida con **Astro**.
- **Estética "Ledger Blueprint"**: Un sistema de diseño técnico de alto contraste que prioriza la claridad financiera y la precisión.
- **Renderizado Adaptable**: Combina generación de sitios estáticos (SSG) con hidratación dinámica para una experiencia de usuario fluida.
- **Tailwind CSS v4**: Utiliza las últimas innovaciones en estilizado para una interfaz pulida y profesional.

### ⚙️ Backend ([/backend](file:///c:/Users/msnlo/Documents/Proyects/undertakingG/backend))
Un servicio de API ultrarrápido impulsado por **Bun** y **Hono**.
- **Orquestación de IA**: Integración con el SDK de **OpenRouter** para acceder a múltiples modelos generativos de forma resiliente.
- **Seguridad Robusta**: Implementa *Prompt Fencing*, validación de esquemas y middleware de seguridad para prevenir inyecciones y abusos.
- **Gestión de Estado**: Integración con **Redis** para limitación de tasa y optimización de rendimiento.

---

## 🔥 Características Principales

1.  **Análisis Estratégico (FODA/SWOT)**: Evaluación automatizada de fortalezas, oportunidades, debilidades y amenazas basada en el contexto regional.
2.  **Estrategia de Producto**: Definición de propuestas de valor únicas, identificación de audiencias objetivo y planes de crecimiento a corto, mediano y largo plazo.
3.  **Hoja de Ruta y Presupuesto**: Generación de pasos operativos y legales detallados con estimaciones presupuestarias realistas.
4.  **Validación de Temas**: Auditoría automática de las entradas del usuario para asegurar que el sistema se mantenga enfocado en el análisis de negocios.

---

## 🛠️ Stack Tecnológico

| Componente | Tecnologías Clave |
| :--- | :--- |
| **Runtime** | Bun |
| **Backend Framework** | Hono (TypeScript) |
| **Frontend Framework** | Astro (TypeScript) |
| **Estilos** | Tailwind CSS v4 |
| **Base de Datos/Cache** | Redis |
| **Infraestructura** | Docker & Docker Compose |
| **Servicio de IA** | OpenRouter (diversos modelos) |

---

## 🚀 Guía de Configuración Rápida

### Requisitos Previos
- [Bun](https://bun.sh/) (recomendado) o Node.js v23+
- Docker y Docker Compose (para despliegue simplificado)

### 🐳 Despliegue con Docker (Recomendado)
Para iniciar todo el ecosistema (Backend + Redis) en segundos:

```bash
cd backend
docker-compose up --build -d
```

### 💻 Desarrollo Local

1.  **Backend**:
    ```bash
    cd backend
    bun install
    # Configura tus variables de entorno en .env (copia .env.example si existe)
    bun run dev
    ```

2.  **Frontend**:
    ```bash
    cd frontend
    bun install
    bun run dev
    ```

---

## 🛡️ Seguridad y Buenas Prácticas


- **Rate Limiting**: El sistema protege los recursos limitando las peticiones por IP.
- **Validación de Datos**: Todas las entradas son sanitizadas y validadas contra esquemas estrictos antes de ser procesadas por la IA.

---
*UndertakingG transforma la visión emprendedora en una estrategia estructurada y basada en datos.*

