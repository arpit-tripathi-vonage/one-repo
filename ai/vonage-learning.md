# Vonage Learning

- Google doc [here](https://docs.google.com/document/d/1Y0A46I6VQLSi1JnE68S5KzHIGBT1ixP8l492AR1d5Vg/edit?tab=t.p03jtmvacv2w){:target="_blank"}
- [What are Skills, Agents, Prompts, Instructions and how to use them?](https://www.youtube.com/watch?v=QcxL0SXILC4){:target="_blank"}
- [AWS re:Invent 2025 - Introducing AI driven development lifecycle (AI-DLC) (DVT214)](https://www.youtube.com/watch?v=1HNUH6j5t4A){:target="_blank"}

<details markdown="1">
  <summary>table of contents</summary>

---

- TOC
{:toc}

---
</details>

<br/>

# What are Skills, Agents, Prompts, Instructions and how to use them?

- A prompt is a one-time chat message.
- An instruction is a permanent rule for a project.
- A skill is a tool the AI loads only when needed.

## AGENTS.md

- inspired by CLAUDE.md from Anthropic
- Instead of having md files for each vendor
- `.github/copilot-instructions.md` used for github copilot as your PR code reviewer
- `/init`
- AGENTS.md sections
  - Architecture overview
  - Dos and Donts
  - Comments
- Better to have AGENTS.md for each project module as well

## Custom Agents

- `agents` folder
- They are like specialized colleagues, can be given some personality
- Orchestrator Agent, Planner Agent and Coder Agent
  - cleaner context memory
- .github/agents, uses tools
- [github/awesome-copilot](https://github.com/github/awesome-copilot){:target="_blank"}
- SubAgents vs Agent Teams
  - Subagent reports back to orchestrator
  - Agent team communicate with other agents

![image](https://pbs.twimg.com/media/HAbME1jacAElNbd?format=jpg&name=medium)

## Hooks

- `hooks` folder
- Hooks run before agents are loaded
- They have lifecycle methods like sessionStart, sessionEnd, userPromptSubmitted etc
- Try some hooks from awesome-copilot
- example : secret scanner and governance-audit
- Show agent logs in vscode, `ask a questions in chat` -> `setting (gear icon) in chat` -> `agent logs`
  - Loaded instructions -> skills -> hooks -> agents

## Instructions

- `instructions` folder
- has applyTo liquid attribute
- mention in main AGENTS.md when to refer which instruction
- A global rule file that stays active across the whole project. example use java 11 and gradle instead of maven

## Prompts

- `prompts` folder
- use `/explain-code` for `.github/prompts/explain-code.prompt.md`
- example: brief overview, step-by-step breakdown, key concepts and terms, common use cases

## Skills

- `skills` folder
- Folder based capability packages with a required SKILL.md that are loaded by an Agent on-demand
- `.github/skills/breakdown-plan/SKILLS.md` will create some docs
- invokable
- Persistent, modular files loaded only when triggered.

## Workflow

- `workflow` folder
- Copilot coding agent works anonymously in a Github actions-powered env to complete development tasks and creates pull requests with the result.
- daily-issues-report

# AI-DLC

- AI driven development lifecycle (AI-DLC)
- Approach 1 : AI Managed 
  - AI autonomously builds and maintains software with leasat ot zero human involvement
- Approach 2 : AI Assisted
  - Developers still perform the intellectual heavy lifting and apply AI in narrow tasks
  - 