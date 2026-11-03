# Load ~/.config/environment.d/*.conf (SSH and TTY logins don't get it from systemd)
set -a
eval "$(/usr/lib/systemd/user-environment-generators/30-systemd-environment-d-generator)"
set +a
