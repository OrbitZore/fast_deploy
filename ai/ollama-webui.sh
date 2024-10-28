#!/usr/bin/env bash
cd "${HOME}"
. demo-magic.sh
start_demo
pe "git clone https://github.com/jakobhoeg/nextjs-ollama-llm-ui"
pe "cd nextjs-ollama-llm-ui"
pe "echo 'NEXT_PUBLIC_OLLAMA_URL="http://localhost:11434"' > .env"
pe "npm config set registry http://mirrors.tencent.com/npm/"
pe "npm config set strict-ssl false"
pe "npm install"
pe "npm run dev"
