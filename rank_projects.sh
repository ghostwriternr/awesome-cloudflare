#!/bin/bash
# rank_projects.sh - Calculate ranking scores for Cloudflare projects

calculate_score() {
  local stars=$1
  local last_update=$2
  local is_archived=$3
  
  # Calculate star score
  star_score=0
  if [ $stars -ge 1000 ]; then star_score=50
  elif [ $stars -ge 500 ]; then star_score=40
  elif [ $stars -ge 200 ]; then star_score=30
  elif [ $stars -ge 100 ]; then star_score=20
  elif [ $stars -ge 50 ]; then star_score=10
  fi
  
  # Calculate activity score (days since last update)
  if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    current_date=$(date +%s)
    update_date=$(date -j -f "%Y-%m-%d" "$last_update" +%s 2>/dev/null || date -j -f "%Y-%m-%dT%H:%M:%SZ" "$last_update" +%s)
  else
    # Linux
    current_date=$(date +%s)
    update_date=$(date -d "$last_update" +%s)
  fi
  
  days_ago=$(( (current_date - update_date) / 86400 ))
  activity_score=0
  
  if [ "$is_archived" = "true" ]; then
    activity_score=-20
  elif [ $days_ago -le 90 ]; then
    activity_score=50
  elif [ $days_ago -le 180 ]; then
    activity_score=30
  elif [ $days_ago -le 365 ]; then
    activity_score=10
  fi
  
  echo $(( star_score + activity_score ))
}

# Function to get repo data and calculate score
get_repo_score() {
  local repo=$1
  
  # If repo contains '/', assume it's a full owner/repo path
  # Otherwise, prepend 'cloudflare/'
  if [[ "$repo" == *"/"* ]]; then
    repo_path="$repo"
  else
    repo_path="cloudflare/$repo"
  fi
  
  # Fetch repo data using gh CLI
  repo_data=$(gh repo view "$repo_path" --json stargazerCount,pushedAt,isArchived 2>/dev/null)
  
  if [ -z "$repo_data" ]; then
    echo "Error fetching data for $repo_path" >&2
    return 1
  fi
  
  stars=$(echo "$repo_data" | jq -r '.stargazerCount')
  last_update=$(echo "$repo_data" | jq -r '.pushedAt' | cut -d'T' -f1)
  is_archived=$(echo "$repo_data" | jq -r '.isArchived')
  
  score=$(calculate_score "$stars" "$last_update" "$is_archived")
  
  # Determine indicators
  indicators=""
  if [ $stars -ge 500 ]; then indicators="${indicators}⭐ "; fi
  if [ "$is_archived" = "true" ]; then 
    indicators="${indicators}📦 "
  else
    days_ago=$(( ($(date +%s) - $(date -d "$last_update" +%s 2>/dev/null || echo 999999)) / 86400 ))
    if [ $days_ago -le 90 ]; then indicators="${indicators}🚀 "; fi
  fi
  
  echo "$score|$repo|$stars|$last_update|$is_archived|$indicators"
}

# Main function to rank multiple repos
rank_repos() {
  echo "Score|Repository|Stars|Last Update|Archived|Indicators"
  echo "------|----------|-----|-----------|---------|----------"
  
  for repo in "$@"; do
    get_repo_score "$repo"
  done | sort -t'|' -k1 -nr
}

# Example usage:
if [ $# -eq 0 ]; then
  echo "Usage: $0 <repo1> <repo2> ..."
  echo "Examples:"
  echo "  $0 workerd pingora cloudflared"
  echo "  $0 honojs/hono kwhitley/itty-router partykit/partykit"
  exit 1
fi

rank_repos "$@"