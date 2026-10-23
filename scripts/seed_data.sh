#!/bin/bash
set -e
echo "🌱 Seeding knowledge base..."
cd backend
python -m app.services.seed_knowledge
echo "✅ Knowledge base seeded!"
