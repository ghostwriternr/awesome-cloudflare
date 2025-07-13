# Project Rules for awesome-cloudflare

## Categorization Guidelines

1. **Always think carefully about categorization**: When modifying the README with new projects or updating existing ones, categorization must be done super thoughtfully. Consider:
   - Does the project fit well in its current category?
   - Should we create a new category or subcategory?
   - Are there overlapping categories that need consolidation?
   - Is the category hierarchy clear and logical?

## Research & Discovery Guidelines

2. **Always use sub-agents and parallelize work**: When searching for resources of ANY KIND, always use sub-agents (Task tool) and parallelize the work wherever possible. This ensures:
   - Faster discovery of resources
   - More efficient investigation of multiple items
   - Better use of available tools and capabilities
   - **Maximum parallelism**: Always invoke multiple Task tools in a single message to achieve maximum parallelism. I can create multiple sub-agents simultaneously in one response, so batch investigations into groups and run them concurrently rather than sequentially.
   - **Use GitHub CLI for quick data**: For fetching repository stats (stars, last update, etc.), use `gh repo view` commands instead of WebFetch when possible - it's faster and more reliable.

## Project Selection Criteria

3. **Focus on developer-relevant projects**: When evaluating projects for inclusion, consider:
   - Is it useful for developers building on Cloudflare's platform?
   - Does it demonstrate Cloudflare's capabilities in a way others can learn from or use?
   - Avoid company-specific internal tools (like receipt printers, internal dashboards, etc.)
   - Prioritize projects that provide reusable tools, libraries, or patterns

4. **Highlight actively maintained, popular projects**: Within each category, prioritize visibility for projects that are:
   - High star count (100+ stars preferred, 50+ acceptable)
   - Actively maintained (commits within the last 12 months)
   - Projects that don't meet these criteria but are still valuable should be included but with less prominence
   
   **Ranking heuristic** (Star Score + Activity Score):
   - Star Score: 1000+ (50pts), 500-999 (40pts), 200-499 (30pts), 100-199 (20pts), 50-99 (10pts)
   - Activity Score: Last 3mo (50pts), Last 6mo (30pts), Last 12mo (10pts), Archived (-20pts)
   - Example: Active project with 200 stars (80pts) ranks above stale project with 1000 stars (30pts)
   
   **Visual indicators to use:**
   - ⭐ for 500+ stars
   - 🚀 for very recently updated (last 3 months)
   - 📦 for archived but still valuable
   - No indicator for standard projects
   - Add "(archived)" or "(legacy)" notes where appropriate

## Current Category Structure

The README uses a function-based categorization system:
- Core Platform & SDKs
- Frameworks & Libraries
- Developer Tools
- Templates & Examples
- Infrastructure & Operations
- Networking & Performance
- Security & Privacy
- Data & Storage
- AI & Machine Learning
- Demos & Experiments

## Project Ranking Script

Use `rank_projects.sh` to calculate project scores and rankings:

```bash
# Make executable
chmod +x rank_projects.sh

# Rank specific projects
./rank_projects.sh workerd pingora cloudflared terraform-provider-cloudflare

# The script will output a sorted table with scores, stars, activity, and visual indicators
```

The script:
- Uses GitHub CLI to fetch repo data (stars, last update, archived status)
- Calculates scores based on the ranking heuristic
- Adds appropriate visual indicators (⭐ 🚀 📦)
- Outputs results sorted by score

## Lint and Testing Commands

When making changes to the repository, run the following commands to ensure code quality:
- (To be added when discovered)