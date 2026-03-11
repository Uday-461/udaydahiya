---
title: "RAG Postgres Chat"
subtitle: "RAG + PostgreSQL AI Chatbot with Natural Language SQL and RBAC"
excerpt: "Production-grade AI agent combining RAG over regulatory PDFs with natural language SQL querying — multi-tenant access control, PII masking, audit logging, and dual query routing."
date: 2025-11-08
author: "Uday Dahiya"
draft: false
tags:
  - RAG
  - PostgreSQL
  - pgvector
  - FastAPI
  - Python
  - LLM
categories:
  - AI/ML
layout: single
links:
- icon: github
  icon_pack: fab
  name: View on GitHub
  url: https://github.com/Uday-461/rag-postgres-chat
---

## About RAG Postgres Chat

RAG Postgres Chat is a production-ready AI chatbot system that combines Retrieval-Augmented Generation (RAG) with natural language SQL querying against PostgreSQL. It demonstrates how to build intelligent agents that can answer questions by both retrieving regulatory documents and querying structured data.

## Key Features

**Retrieval-Augmented Generation:**
- Vector embeddings with pgvector for semantic search over PDF documents
- Chunk-based document retrieval with metadata filtering
- Automatic citation generation with source tracking

**Natural Language SQL:**
- Text-to-SQL generation for structured data queries
- Query validation and safety checks
- Automatic RBAC enforcement in generated queries

**Multi-Tenant & Security:**
- Row-level security (RLS) at the database level
- PII masking in responses
- Audit logging for all queries and retrievals
- User context propagation

**Dual Query Routing:**
- Intent detection to route questions to RAG or SQL queries
- Fallback mechanisms for complex multi-source queries
- Confidence scoring for query type selection

## Architecture

The system consists of:
- **FastAPI Backend** — REST API for chat interactions
- **RAG Pipeline** — document chunking, embedding, retrieval
- **SQL Agent** — query generation, validation, execution
- **PostgreSQL + pgvector** — structured data + vector similarity search
- **Access Control Layer** — RBAC and audit logging

## Use Cases

- Regulatory compliance chatbots with document search
- Internal knowledge bases with structured + unstructured data
- Multi-tenant SaaS applications with isolated data access
- Audit trails for sensitive data queries

---

**Ready to dive in?** Check out the [full repository](https://github.com/Uday-461/rag-postgres-chat) for code, database schema, and deployment guides.
