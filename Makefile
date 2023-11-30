# Makefile

# Define the name of the virtual environment directory
VENV_NAME := venv

# Target to set up the virtual environment and install Google Cloud SDK
venv: create-venv activate-venv
gcloud: install-gcloud init-gcloud

create-venv:
	@echo "Creating virtual environment..."
	@python3 -m venv $(VENV_NAME)
	@echo "Virtual environment created."

activate-venv:
	@echo "Activating virtual environment..."
	@. $(VENV_NAME)/bin/activate
	@echo "Virtual environment activated."

install-gcloud: activate-venv
	@echo "Installing Google Cloud SDK..."
	@echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] http://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list
	@curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -
	@sudo apt-get update -y
	@sudo apt-get install google-cloud-sdk -y
	@echo "Google Cloud SDK installation complete."

init-gcloud: activate-venv
	@echo "Initializing Google Cloud SDK..."
	@gcloud init
