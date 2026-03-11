---
title: "AI DJ v4"
subtitle: "Deep Learning DJ Transitions with CNNs + Transformers"
excerpt: "A system that learns professional DJ mixing curves from real mixes, then uses deep learning to predict and apply automatic transitions between any two tracks."
date: 2026-03-05
author: "Uday Dahiya"
draft: false
tags:
  - PyTorch
  - Deep Learning
  - Audio ML
  - CNN
  - Transformers
categories:
  - AI/ML
layout: single
links:
- icon: github
  icon_pack: fab
  name: View on GitHub
  url: https://github.com/Uday-461/ai-dj-v4
---

## About AI DJ v4

AI DJ v4 is a deep learning system that learns to make professional DJ transitions. It analyzes real professional DJ mixes to extract the ground-truth mixing curves (fader levels + 3-band EQ adjustments per audio stem), then trains a CNN + Transformer model (StemTransitionNet) to predict these curves for any pair of tracks.

The result: given two songs and their cue points, AI DJ automatically generates smooth, professional-quality transitions with proper stem mixing — no human DJ required.

## Why I Built This

A group of friends wanted to host parties with a "community DJ" where anyone could queue songs, but with professional-quality transitions. Instead of hiring a DJ, we explored: what if an AI could learn mixing from pros and apply it automatically? This project answers that question. It's driven by passion for both music and ML — showing how deep learning can encode expert-level creative decisions.

## How It Works

**Architecture:** StemTransitionNet combines:
- **StemEncoder** (CNN per stem) → extract features from stems
- **CrossStemTransformer** (4 layers, 8 attention heads) → model interactions between stems
- **CurveHead** (Conv1d decoder) → output 32 mixing curves (4 stems × 8 parameters: fader fade-in/fade-out, EQ low/mid/high for each)

**Training pipeline:**
1. Extract ground truth from DJ mixes using convex optimization (CVXPY) to solve for exact fader + EQ values
2. Generate mel spectrograms with librosa + beat alignment with BeatNet
3. Train on MAE loss + monotonicity + smoothness penalties
4. Deploy to HuggingFace Hub for reproducibility

**Tech stack:** PyTorch, Demucs (stem separation), CVXPY, librosa, BeatNet, HuggingFace Hub, DTW alignment

---

**Ready to dig in?** Check out the [full repository](https://github.com/Uday-461/ai-dj-v4) for code, training notebooks, and audio examples.
