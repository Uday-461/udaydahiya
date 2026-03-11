---
title: "OpenWork AI Docker"
subtitle: "Self-Hosted Multi-Tenant AI Workspace for Organizations"
excerpt: "Enterprise-grade platform extending OpenCode (agentic AI coding) and OpenWork (browser IDE) from single-user apps into a fully self-hosted, SSO-gated multi-tenant system with RBAC and on-demand container isolation."
date: 2026-02-19
author: "Uday Dahiya"
draft: false
tags:
  - Docker
  - nginx
  - SSO
  - On-Prem
  - Authentik
  - Enterprise
categories:
  - Infrastructure
layout: single
links:
- icon: github
  icon_pack: fab
  name: View on GitHub
  url: https://github.com/Uday-461/openwork-ai-docker
---

## About OpenWork AI Docker

OpenCode and OpenWork are powerful AI developer tools — but they were built as single-user Tauri desktop apps. This project transforms them into a fully self-hosted, multi-tenant platform for organizations. Deploy once, serve your entire team with enterprise SSO, group-based access control, and per-user isolated containers that feel native.

The mission: bring cutting-edge AI coding assistants to your team without cloud lock-in, vendor dependencies, or compromising data privacy.

## Why Organizations Need This

Modern teams need AI coding tools, but they also need:
- **Enterprise authentication:** SSO via OIDC, LDAP, SAML, or OAuth (not just passwords)
- **Access control:** Group-based RBAC tied to your identity provider
- **On-premises hosting:** No cloud, your data stays yours, audit compliance ✓
- **Reproducibility:** `git clone` + `docker compose build` works completely offline
- **User isolation:** Each user gets a dedicated OpenCode container, auto-stopping after 30 mins idle

This project delivers all of it — no compromises, full control.

## Architecture & Features

**Core components:**
- **nginx + njs:** Reverse proxy with dynamic container routing, SSO gating via Authentik headers
- **Authentik:** Enterprise identity provider (OIDC, LDAP, SAML, OAuth, password)
- **PostgreSQL + pgvector:** Persistent data + embeddings for OpenCode
- **Redis:** Session caching for lightning-fast auth
- **Docker Compose:** Orchestration — one command starts everything
- **OpenCode / OpenWork:** TypeScript + SolidJS, wrapped in container-per-user model

**Key features:**
- Per-user container isolation with automatic provisioning & 30-min idle timeout
- Group-based RBAC: users see workspaces their group can access
- Admin REST API for workspace & container lifecycle (CRUD operations)
- Fully vendored source — zero external dependencies at build time, works offline
- njs streaming fix for proper chunked response handling from Bun

**Deployment:** Everything in Docker Compose. One file, one command. Fresh cluster in <5 minutes.

---

**Interested?** Dive into the [repository](https://github.com/Uday-461/openwork-ai-docker) — includes complete deployment guide, SSO setup examples for all providers, and architecture walkthrough.
