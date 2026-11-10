# Plasma sources /etc/profile at session start and imports it over the
# systemd user environment, which drops everything from environment.d
# (notably the PATH extensions). Re-apply environment.d here, the same
# way .bash_profile and .zprofile do it.
set -a
eval "$(/usr/lib/systemd/user-environment-generators/30-systemd-environment-d-generator)"
set +a
