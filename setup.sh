poetry update

# Install required roles
# poetry run ansible-galaxy install -r ansible/requirements.yaml

# Run Setup script
poetry run ansible-playbook -i ansible/hosts/marron.ini ansible/setup_marron.yaml --connection ssh --ask-become-pass --ask-pass
