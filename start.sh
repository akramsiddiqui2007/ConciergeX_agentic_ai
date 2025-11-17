#!/bin/bash

echo "🚀 Starting A2A Agent on port 8001..."
uvicorn manual_a2a_agent:app --host 0.0.0.0 --port 8001 &

echo "🚀 Starting Streamlit UI on port 8501..."
streamlit run streamlit_app.py --server.port=8501 --server.address=0.0.0.0

# Keep container alive
wait

