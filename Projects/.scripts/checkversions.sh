#!/bin/bash

fastfetch && \
echo -e "\n🐍 Python Version:" && python --version && \
echo -e "\n🦫 Go Version:" && go version && \
echo -e "\n📘 TypeScript Version:" && tsc --version && \
echo -e "\n🦀 Rust Version:" && rustc --version && \
echo -e "\n📦 Conda Version:" && conda --version && \
echo -e "\n🦕 Deno Version:" && deno --version && \
echo -e "\n🌐 Node Version:" && node --version && \
echo -e "\n📦 Cargo Version:" && cargo --version && \
echo -e "\n🐳 Docker Version:" && docker --version && \
echo -e "\n@MRJXTR - CHECK VERSIONS: DONE"
