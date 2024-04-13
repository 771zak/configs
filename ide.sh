#!/bin/bash

# Start tmux
tmux new-session -d -s mysession

# Split the window vertically
tmux split-window -h -p 15
tmux split-window -v

# Attach to the session
tmux attach-session -t mysession

