
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export IDE_PROPERTIES=/Users/kweng
source ~/.profile
echo "Loaded ~/.bash_profile"

# export       AWS_CA_BUNDLE=/users/shared/EFE_IT/Certificates/ricedelman-DC1-PKI-SUB1-CERTAUTH-CA-chain.pem
# export       SSL_CERT_FILE=/users/shared/EFE_IT/Certificates/ricedelman-DC1-PKI-SUB1-CERTAUTH-CA-chain.pem
 


export NODE_TLS_REJECT_UNAUTHORIZED=0
alias gpr='git pull --rebase --autostash'
# Vite development server aliases
alias vite-restart='pkill -f vite; sleep 1; npm run dev'
alias vite-kill='pkill -f vite'
alias vite-status='ps aux | grep vite | grep -v grep'
alias vite-port='lsof -i :5173'
export PATH=~/.npm-global/bin:$PATH
export ANTHROPIC_API_KEY=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
alias gemini-dev="node /Users/kweng/AI/gemini-cli/bundle/gemini.js"
alias CC='claude --allowedTools "Bash(git:*) Bash(curl:*) Edit"  --dangerously-skip-permissions --permission-mode bypassPermissions'

export PATH="$HOME/.local/bin:$PATH"
# Kill processes running on a specific port

kill-port() { lsof -ti:$1 | xargs kill -9 && echo "Killed processes on port $1"; }
list-port() { if [ -z "$1" ]; then echo "Usage: list-port <port_number>"; echo "Example: list-port 3001"; return 1; fi; lsof -i:$1; }
export NODE_EXTRA_CA_CERTS=/Users/Shared/EFE_IT/Certificates/cabundle2025.pem
export AWS_CA_BUNDLE=/Users/Shared/EFE_IT/Certificates/cabundle2025.pem
export SSL_CERT_FILE=/Users/Shared/EFE_IT/Certificates/cabundle2025.pem
export REQUESTS_CA_BUNDLE=/Users/Shared/EFE_IT/Certificates/cabundle2025.pem

# Trader Workstation aliases
alias tws='open -n "/Users/kweng/Applications/Trader Workstation 10.37/Trader Workstation 10.37-1.app"'

# Sleep Management Aliases
# pmset options: -a (all), -b (battery), -c (charger/AC)
# Usage: sleep 0 = never, displaysleep 0 = display never off, disksleep = disk sleep

# Never sleep (current setting) - applies to both battery and AC power
alias sleep-never='sudo pmset -a sleep 0 displaysleep 0 && echo "✅ Sleep disabled (system & display)"'

# Normal sleep settings - different for battery vs AC power
alias sleep-normal='sudo pmset -b sleep 10 displaysleep 5 && sudo pmset -c sleep 30 displaysleep 15 && echo "✅ Sleep enabled: Battery(10m/5m) AC(30m/15m)"'

# Developer mode - never sleep on AC, normal on battery
alias sleep-dev='sudo pmset -c sleep 0 displaysleep 0 && sudo pmset -b sleep 10 displaysleep 5 && echo "✅ Dev mode: AC(never) Battery(10m/5m)"'

# Check current sleep settings - shows both battery and AC
sleep-status() {
    echo "================================"
    echo "🔋 BATTERY POWER SETTINGS:"
    echo "================================"
    pmset -g custom | grep -A 15 "Battery Power:" | grep -E " sleep | displaysleep | disksleep " | sed 's/^/  /'
    echo ""
    echo "================================"
    echo "🔌 AC POWER SETTINGS:"
    echo "================================"
    pmset -g custom | grep -A 15 "AC Power:" | grep -E " sleep | displaysleep | disksleep " | sed 's/^/  /'
    echo "================================"
}

# Show all power management settings (comprehensive info)
alias sleep-info='pmset -g'

# Claude Code Usage Monitoring Aliases
# ccusage - Monitor Claude Code subscription usage and token consumption

# Live monitoring (real-time dashboard with 5-hour billing block)
alias ccusage-live='npx ccusage@latest blocks --live'

# Quick usage summary (daily)
alias ccusage='npx ccusage@latest'

# Show 5-hour billing blocks
alias ccusage-blocks='npx ccusage@latest blocks'

# Monthly summary
alias ccusage-monthly='npx ccusage@latest monthly'

# Show cost breakdown by model
alias ccusage-breakdown='npx ccusage@latest --breakdown'

# Export to JSON
alias ccusage-json='npx ccusage@latest --json'

# Show all usage info
alias ccusage-all='echo "📊 Daily Usage:" && npx ccusage@latest && echo "" && echo "📅 Monthly Usage:" && npx ccusage@latest monthly && echo "" && echo "🕐 5-Hour Blocks:" && npx ccusage@latest blocks'

# AWS Okta authentication
alias javaaws='java8; java -jar ~/.aws/awsokta-1.1.16-all.jar -e test -r uFinancialPlanningAdmin'
alias claudeHistory="npm run claude:view"

# Auto-login TWS with hardcoded passwords
alias tws-auto='~/ibkr_tws/scripts/tws-auto-v2.sh'
alias tws-auto-both='~/ibkr_tws/scripts/tws-auto-v2.sh both'
alias tws-auto-0754='~/ibkr_tws/scripts/tws-auto-v2.sh weng0754'
alias tws-auto-9999='~/ibkr_tws/scripts/tws-auto-v2.sh weng9999'

# Force restart versions (kills existing instances without prompting)
alias tws-auto-force='~/ibkr_tws/scripts/tws-auto-v2.sh --force'
alias tws-auto-both-force='~/ibkr_tws/scripts/tws-auto-v2.sh both --force'
alias tws-auto-0754-force='~/ibkr_tws/scripts/tws-auto-v2.sh weng0754 --force'
alias tws-auto-9999-force='~/ibkr_tws/scripts/tws-auto-v2.sh weng9999 --force'

# Kill all TWS instances
alias tws-kill='pkill -f "JavaApplicationStub" && echo "All TWS instances killed"'
