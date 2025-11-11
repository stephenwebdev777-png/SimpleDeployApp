cat > scripts/clean_old_files.sh <<'EOF'
#!/bin/bash
set -e
APP_DIR="/home/ubuntu/SimpleDeployApp"

echo "Cleaning old deployment files in $APP_DIR ..."
if [ -d "$APP_DIR" ]; then
  sudo rm -rf "${APP_DIR:?}"/*
  echo "Old files removed."
fi

# Ensure directory exists & ownership
sudo mkdir -p "$APP_DIR"
sudo chown -R ubuntu:ubuntu "$APP_DIR"
echo "Cleanup done."
EOF
