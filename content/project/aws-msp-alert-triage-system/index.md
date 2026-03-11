---
title: "AWS MSP Alert Triage System"
subtitle: "AI-Powered Real-Time Alert Management for MSPs"
excerpt: "Full-stack platform that auto-triages AWS CloudWatch alerts with RAG chatbot support and auto-remediation, achieving 90% suppression and 40% ticket deflection."
date: 2025-03-11
author: "Uday Dahiya"
draft: false
tags:
  - RAG
  - FastAPI
  - React
  - LLM
  - Docker
  - AWS
categories:
  - Full-Stack AI
layout: single
links:
- icon: github
  icon_pack: fab
  name: View on GitHub
  url: https://github.com/Uday-461/aws-msp-alert-triage-system
---

## About AWS MSP Alert Triage System

This is a production-ready platform that transforms how Managed Service Providers (MSPs) handle IT alerts. It ingests AWS CloudWatch alerts in real-time, automatically categorizes and routes them to the right team, and powers both an operator dashboard and customer-facing portal with AI support. An auto-remediation engine resolves common issues automatically with full root cause analysis.

**SuperHack 2025 submission** demonstrating how agentic AI can eliminate alert fatigue and transform IT operations.

## The Problem & Solution

MSPs face alert overload (hundreds per day), slow response times, knowledge silos, and frustrated customers with no self-service. This system solves it:

- **Real-time processing:** Sub-100ms end-to-end alert ingestion → categorization → routing
- **Operator dashboard:** Live alert feeds, SLA tracking, service health grids, streaming WebSocket updates
- **Customer portal:** AI chat with RAG over 30+ knowledge base articles (~200ms semantic search), ticket self-service, embedded API
- **Auto-remediation:** Intelligent resolution of common patterns with escalation for complex issues
- **Measurable impact:** 90% alert suppression, 40% ticket deflection in production

## Tech Stack & Architecture

**Frontend** (2,500+ lines): React 18, Vite, TypeScript, Tailwind CSS, Recharts (dashboards), React Flow (topology), Zustand (state), React Query

**Backend** (3,500+ lines): FastAPI, PostgreSQL, ChromaDB (vector store), Redis (cache/pub-sub), Kafka (event streaming), OpenRouter LLM

**Infrastructure:** Docker Compose, 10+ services, 1,000+ concurrent WebSocket connections, 25+ REST endpoints, 8+ database tables

**Performance:** Alert processing <100ms, RAG semantic search 200ms, LLM streaming 2-5s, WebSocket throughput 1,000+ concurrent users per server

---

**Explore the system** in the [GitHub repository](https://github.com/Uday-461/aws-msp-alert-triage-system) — full deployment scripts, architecture diagrams, and production learnings included.
