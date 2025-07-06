#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Proofread
# @raycast.mode silent
# @raycast.packageName AI
#
# Optional parameters:
#
# Documentation:
# @raycast.description This script copies URL of currently opened page in Google Chrome into clipboard.
# @raycast.author Jakub Lanski
# @raycast.authorURL https://github.com/jaklan

# Use this script in the 'Run Shell Script' Automator action when making a new 'Quick Action'. Set 'Pass input' to 'as arguments' and Workflow receives current 'text' and tick 'output replaces selected text'. You need 'jq' installed on your system for sanitisation.

# Uncomment to use your zsh profile to load you Open AI API Key or replace $OPENAI_AI_KEY below.
source ~/.zshrc

osascript -e 'tell application "System Events"
  tell process 1 where frontmost is true
    click menu item "Copy" of menu "Edit" of menu bar 1
  end tell
end tell'

# Sanitize the input text using sed
sanitize_input() {
    # Escape special characters for JSON
    pbpaste | sed -e 's/\\/\\\\/g' -e 's/"/\\"/g' -e "s/'/\\'/g" -e 's/\n/\\n/g' -e 's/\r/\\r/g' -e 's/\t/\\t/g'
}

# OpenAI API Key (Replace with your actual OpenAI API key)
API_KEY=$OPENAI_API_KEY

# Accept input from Automator (the selected text)
TEXT="$(pbpaste)"

# Sanitize the input text
SANITIZED_TEXT=$(sanitize_input "$TEXT")

# Create the JSON payload
JSON_PAYLOAD=$(/usr/bin/jq -n --arg text "$SANITIZED_TEXT" '{
  model: "gpt-4o",
  messages: [
    {role: "system", content: "You are a helpful assistant that fixes spelling and grammar errors. Return only the corrected version of the text. Use UK British english, Oxford spelling."},
    {role: "user", content: $text}
  ],
  temperature: 0
}')

# Call OpenAI API using curl
RESPONSE=$(curl -s -X POST https://api.openai.com/v1/chat/completions \
    -H "Content-Type: application/json" \
    -H "Authorization: Bearer $API_KEY" \
    --data "$JSON_PAYLOAD" | /usr/bin/jq -r '.choices[0].message.content')

echo "$RESPONSE" | pbcopy

osascript -e 'tell application "System Events"
  tell process 1 where frontmost is true
    click menu item "Paste and Match Style" of menu "Edit" of menu bar 1
  end tell
end tell'

echo "Done."
