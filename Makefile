.PHONY: dev build test clean seed

dev:
	docker compose up --build

build:
	docker compose build

test:
	cd backend && python -m pytest tests/ -v

seed:
	cd backend && python -m app.services.seed_knowledge

clean:
	docker compose down -v
	rm -rf backend/.venv frontend/node_modules frontend/.next

lint:
	cd backend && ruff check .
	cd frontend && npm run lint
