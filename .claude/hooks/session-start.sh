#!/bin/bash
set -euo pipefail

# Only needed for Claude Code on the web, where each session starts in a
# fresh container and user-scope installs (~/.claude/agents) don't persist.
if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

"$CLAUDE_PROJECT_DIR/agency-agents/scripts/install.sh" --tool claude-code \
  --agent social-media-strategist,tiktok-strategist,content-creator,instagram-curator,trend-researcher,business-strategist,product-manager,investment-researcher,master-plan-architect,growth-hacker,frontend-developer,rapid-prototyper,backend-architect,software-architect,senior-developer,cms-developer,wordpress-performance-engineer,wordpress-shopping-cart-engineer,ui-designer,ux-architect \
  --no-interactive
