# MetaCall Fuzz Engine

### GSoC 2026 — Pratham Tomar

---

## Overview

This project is part of **Google Summer of Code 2026** under the MetaCall organization.

The goal is to improve how reliably different programming languages work together inside a single runtime environment. It focuses on identifying weaknesses, unexpected behavior, and failures that can occur when data moves between languages.

Instead of testing a single application, this project evaluates the **core system itself**, ensuring that interactions between languages remain stable, consistent, and error-free.

---

## Motivation

Modern systems often rely on multiple programming languages working together. While this flexibility is powerful, it also introduces complexity—especially when data crosses language boundaries.

Even small inconsistencies in how languages interpret data can lead to:

* Unexpected errors
* Crashes
* Incorrect outputs
* Difficult-to-debug issues

This project aims to proactively detect such issues and make the system more robust.

---

## What This Project Does

* Automatically explores available functions across different languages
* Tests how these functions behave when called from other languages
* Repeats these interactions with a wide variety of inputs
* Detects and records any failures or inconsistencies
* Provides a structured report of all observations

All of this happens without requiring manual setup for each test case.

---

## Key Idea

Rather than testing one direction at a time, this project ensures that:

> Every language can interact with every other language — in both directions.

This creates a comprehensive testing approach that uncovers issues that simpler methods often miss.

---

## Project Goals

* Improve reliability of cross-language execution
* Detect hidden edge cases and failures
* Enable automated testing for future releases
* Provide a scalable approach for adding new languages
* Support long-term stability of the MetaCall ecosystem

---

## Current Status

* Cross-language interaction setup completed
* Initial testing across multiple languages working
* Core approach validated
* Project under active development as part of GSoC 2026

---

## Repository Links

* N:N Demo: [https://github.com/prathamtomar99/metacall-fuzz-engine/tree/main/Examples](https://github.com/prathamtomar99/metacall-fuzz-engine/tree/main/Examples)
* GSoC Issue: [https://github.com/metacall/testing-center/issues/24](https://github.com/metacall/testing-center/issues/24)

---

## Future Work

* Expand support to additional programming languages
* Improve reporting and visualization of results
* Integrate into automated testing pipelines
* Enhance detection of subtle inconsistencies

---

## Contribution

This project is being developed as part of GSoC, but feedback, ideas, and discussions are always welcome.
