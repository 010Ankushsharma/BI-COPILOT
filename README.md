# Executive Business Intelligence Copilot

> AI-powered BI platform – ask business questions in natural language,
> get SQL, analysis, root causes, forecasts, dashboards & recommendations.

## Quick Start

```bash
cp .env.example .env   # fill in secrets
docker compose up --build
```

| Service | URL |
|---------|-----|
| Frontend | http://localhost:3000 |
| Backend API | http://localhost:8000/docs |
| Grafana | http://localhost:3001 |

## Project Structure

```
├── backend/           # FastAPI + AI agents
├── frontend/          # Next.js 14 + TailwindCSS
├── dbt_project/       # dbt data models
├── infra/             # Terraform + K8s + monitoring
├── docker-compose.yml
└── README.md
```

## Architecture

```
User → React Dashboard → API Gateway → BI Copilot Engine
                                            ↓
                               LLM Orchestrator (LangGraph)
                          ┌─────────┼─────────┐
                    Intent Agent  SQL Agent  Analytics Agent
                    Root Cause    Viz Agent  Summary Agent
                                    ↓
                          Snowflake / BigQuery / Redshift
```

## Tech Stack

- Frontend: Next.js 14, TypeScript, TailwindCSS, Recharts, AG Grid
- Backend: FastAPI, Python 3.11+
- AI: GPT-4o / Llama 3, LangGraph, LangChain
- Data: Snowflake, dbt, PostgreSQL
- Vector DB: Qdrant
- Infra: Docker, Kubernetes, Terraform
- Monitoring: Prometheus, Grafana
