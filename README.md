# 🤖 Multi-Agent & RAG Production Systems Monorepo

Welcome to the AI R&D Practice Portfolio. This monorepo contains 9 production-grade AI applications demonstrating full-lifecycle engineering ownership—from problem identification, system architecture, and API orchestration down to local edge deployment and automated documentation.

Each system is open-source, fully documented, and designed with clean interfaces to be readily adopted, evaluated, and extended.

## 📐 Portfolio Overview Matrix

| # | Project Name | Architecture Pattern | Tech Stack | Key Architectural Focus |
|---|---|---|---|---|
| 01 | Education: RAG-Powered LMS & Tutor | Enterprise RAG / Structured Retrieval | OpenAI / Claude, FAISS / ChromaDB, Streamlit | Grounded QA, page citations, strict refusal guardrails |
| 02 | Autonomous Multi-Step Orchestration Agent | Autonomous Multi-Agent Graphs | LangGraph / CrewAI, Claude 3.5 Sonnet | Zero-human intervention workflow loops & self-correction |
| 03 | Real-Time Misinformation & Fact-Checker | Web-Augmented Retrieval (Web RAG) | Perplexity API, Tavily, FastAPI | Live web search synthesis & source confidence scoring |
| 04 | Edge AI On-Device Summarizer & Classifier | Local / Edge AI Inference | Gemma 2 (Ollama/Llama.cpp), Docker | Zero-API cost processing, data locality, sub-100ms latency |
| 05 | Multi-Cloud Automated Infrastructure Debugger | Agentic API & Log Analysis | Claude Code API, Copilot, SQL | Structured log parsing & automated patch PR generation |
| 06 | Automated SQL Data Analyst & Visualizer | Text-to-SQL + Dynamic Data Pipelines | OpenAI Function Calling, DuckDB, Plotly | Natural language query execution & interactive chart rendering |
| 07 | Structured Codebase Documentation Generator | AST Code Analysis Engine | Python AST, Claude API, Mermaid.js | Dynamic repository parsing & Mermaid diagram generation |
| 08 | Dynamic Product Backlog & Story Engine | Schema-Enforced Structured Outputs | Pydantic Logics, Claude API, Jira/GitHub API | Agile WSJF prioritization & schema-validated user stories |
| 09 | Multi-LLM Routing & Fallback Gateway | Production API Gateway & Router | FastAPI, LiteLLM, OpenAI + Claude + Gemma | Cost optimization, complexity routing & rate-limit fallbacks |

## 🚀 Detailed System Descriptions

### 1. Education: RAG-Powered LMS & Tutor
**Directory:** `prototypes/ols-001-lms-rag-tutor/`
**Architecture:** Enterprise Document RAG (Vector Search + Multi-Modal LLM)
**Tech Stack:** OpenAI / Claude API, LangChain/LlamaIndex, FAISS, Streamlit
**Description:** An educational assistant that ingests course materials (PDFs, Markdown, slide decks) into vector storage. Students can ask complex subject-matter questions, and the engine generates grounded responses with strict page/section citations. Includes guardrails against hallucinations and an automated quiz generator.

### 2. Autonomous Multi-Step Orchestration Agent
**Directory:** `prototypes/ols-002-autonomous-agent/`
**Architecture:** State-Graph Multi-Agent System
**Tech Stack:** LangGraph, Claude 3.5 Sonnet, Python
**Description:** An autonomous multi-agent engine capable of executing complex end-to-end tasks without human intervention between steps. Specialized sub-agents (Research Agent, Synthesizer, Evaluator) pass state back and forth, self-correcting logic errors and validating criteria before outputting final deliverables.

### 3. Real-Time Misinformation & Fact-Checker
**Directory:** `prototypes/ols-003-fact-checker-rag/`
**Architecture:** Web-Augmented Retrieval Engine (Web RAG)
**Tech Stack:** Perplexity API, Tavily Search, OpenAI API, FastAPI
**Description:** A live verification system that accepts incoming claim text or news statements, queries active web indexes in real-time, cross-references findings across trusted news and academic sources, and returns a verified Truth Score alongside direct web citations.

### 4. Edge AI On-Device Summarizer & Classifier
**Directory:** `prototypes/ols-004-edge-ai-summarizer/`
**Architecture:** On-Device / Local Edge Inference Engine
**Tech Stack:** Gemma 2 (via Ollama / Llama.cpp), Python, Docker
**Description:** A lightweight, fully offline log analyzer and summarizer running on local device hardware. Ensures complete data privacy and zero API costs while categorizing high-throughput system events and generating instant executive summaries.

### 5. Multi-Cloud Automated Infrastructure Debugger
**Directory:** `prototypes/ols-005-infras-debugger/`
**Architecture:** Agentic API Integration & Log Parsing Pipeline
**Tech Stack:** Claude Code API, Python, SQLite/PostgreSQL, AWS/GCP/Azure Log Schemas
**Description:** Connects to centralized cloud log databases across multi-cloud infrastructure. Automatically queries recent error spikes using dynamic SQL, diagnoses root causes via LLM reasoning, and generates actionable patch code/Pull Requests for developer review.

### 6. Automated SQL Data Analyst & Visualizer
**Directory:** `prototypes/ols-006-text-to-sql-analyst/`
**Architecture:** Text-to-SQL + Structured Data Pipeline
**Tech Stack:** OpenAI Function Calling, SQLite/DuckDB, Plotly, Pandas
**Description:** Allows non-technical business users to ask natural-language questions about complex SQL datasets. The engine translates user intent into secure SQL queries, executes them safely in a sandboxed execution environment, and automatically renders interactive Plotly visual charts.

### 7. Structured Codebase Documentation Generator
**Directory:** `prototypes/ols-007-codebase-doc-gen/`
**Architecture:** Tree-Traversal Code Analysis Engine
**Tech Stack:** Python AST (Abstract Syntax Trees), Claude API, Markdown Tools
**Description:** Scans repository file trees, parses code structure and class dependencies using AST, and outputs comprehensive, readable developer documentation. Automatically constructs Mermaid.js architectural diagrams, API endpoint specifications, and local deployment runbooks.

### 8. Dynamic Product Backlog & Story Engine
**Directory:** `prototypes/ols-008-agile-backlog-engine/`
**Architecture:** Schema-Enforced Structured Output Engine
**Tech Stack:** Pydantic Logics, OpenAI/Claude API, GitHub/Jira REST APIs
**Description:** Accepts unstructured feedback notes or high-level feature ideas and translates them into formal Agile User Stories complete with Given-When-Then Acceptance Criteria. Computes WSJF (Weighted Shortest Job First) prioritization scores and pushes structured items directly into backlog tools.

### 9. Multi-LLM Routing & Fallback Gateway
**Directory:** `prototypes/ols-009-multi-llm-router/`
**Architecture:** Unified API Gateway & Model Router
**Tech Stack:** FastAPI, LiteLLM, OpenAI + Claude + Gemma APIs
**Description:** A production API gateway that minimizes LLM spend and latency. Evaluates incoming prompt complexity to dynamically route simple tasks to fast/cheap models (Gemma/GPT-4o-mini) and complex reasoning prompts to frontier models (Claude 3.5 Sonnet), handling rate limits and fallbacks seamlessly.

## 🧪 Governance Sandbox

`sandbox/governance-sandbox.html` — a single self-contained HTML file (no build, no server) that lets you assemble Ecosystems, Agents, Apps and Labs and run them against the [OLS-RAF v1.0](framework/OLS-RAF-v1.0.md) risk framework. Runs fully offline in simulated mode by default; any agent can be pointed at a real Frontier (Anthropic, OpenAI, Google, DeepSeek, Kimi), Edge (Ollama) or Custom OpenAI-compatible provider from its built-in Connections view — bring your own API key, stored only in your browser. See `sandbox/README.md`.

## 🛠️ Getting Started & Repository Usage

### Prerequisites
- Python 3.11+
- Docker & Docker Compose (optional, for containerized runs)
- API Keys: OPENAI_API_KEY, ANTHROPIC_API_KEY, PERPLEXITY_API_KEY

### Setup Environment
Clone the repository:
```bash
git clone https://github.com/Dotcoza-Development/openlabs-research-and-development.git
cd openlabs-research-and-development
```

Set up environment variables:
```bash
cp .env.example .env
# Add your API keys inside .env
```

Initialize python environment via root Makefile:
```bash
make setup
```

### Running Individual Systems
Use the unified root Makefile to quickly launch any specific POC:
```bash
# Launch System 1 (LMS RAG Tutor)
make run-lms

# Launch System 9 (Multi-LLM Gateway API)
make run-router

# Run full test suite across all 9 projects
make test-all
```
