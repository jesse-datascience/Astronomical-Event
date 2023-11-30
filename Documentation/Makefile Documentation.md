# Makefile Documentation

This Makefile is designed to streamline the setup process for a Python-based project. It handles the creation and activation of a virtual environment and installs the Google Cloud SDK, preparing the development environment for further use.

## Makefile Targets:

- `venv`: Sets up the Python virtual environment.
- `gcloud`: Installs and initializes the Google Cloud SDK.

### Details of Targets:

1. **`create-venv`**
   - **Purpose**: Creates a Python virtual environment.
   - **Command**: `make create-venv`
   - **Details**: This target runs `python3 -m venv` to create a virtual environment named `venv` (or another name as specified in the `VENV_NAME` variable).

2. **`activate-venv`**
   - **Purpose**: Activates the Python virtual environment.
   - **Command**: `make activate-venv`
   - **Details**: This target activates the virtual environment. Note that in a Makefile, this activation will not persist to subsequent commands or terminal sessions.

3. **`install-gcloud`**
   - **Purpose**: Installs the Google Cloud SDK.
   - **Command**: `make install-gcloud`
   - **Details**: This target adds the Google Cloud SDK repository, installs the necessary key, updates the package list, and installs the SDK. It depends on `activate-venv` to ensure the virtual environment is activated.

4. **`init-gcloud`**
   - **Purpose**: Initializes the Google Cloud SDK.
   - **Command**: `make init-gcloud`
   - **Details**: This target runs `gcloud init` to initialize the Cloud SDK. This is typically a one-time setup step.

### Combined Targets:

- `venv`: 
  - **Command**: `make venv`
  - **Details**: Runs both `create-venv` and `activate-venv` targets to set up and activate the virtual environment.

- `gcloud`: 
  - **Command**: `make gcloud`
  - **Details**: Runs both `install-gcloud` and `init-gcloud` targets to install and initialize the Google Cloud SDK.

## Usage Instructions:

1. make venv **To set up the virtual environment:**
2. make gcloud **To install and initialize Google Cloud SDK:**

## Notes:

- The `activate-venv` target in the Makefile does not persist the activation of the virtual environment across separate terminal sessions or subsequent commands. It's mainly illustrative and might be more effective when used in scripts or manually in the terminal.
- Ensure you have the necessary permissions to install packages and software on your system, especially for tasks that require `sudo`.

