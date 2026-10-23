#!/bin/bash
set -e

echo "🚀 Setting up BI Copilot..."

# Backend
echo "📦 Installing backend dependencies..."
cd backend
python -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt

# Frontend
echo "📦 Installing frontend dependencies..."
cd ../frontend
npm install

echo "✅ Setup complete! Run: docker compose up --build"
