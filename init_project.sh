#!/bin/bash

read -p "Enter project name: " project_name

echo "Select the project type:"
echo "1. Python"
echo "2. Bash"
read -p "Enter your choice (1 or 2): " choice

case $choice in
    1)
        echo "Creating a Python project"
        mkdir "$project_name"
        cd "$project_name"
        touch "${project_name}.py"
        echo "# $project_name Python Project" > README.md
        echo "" >> README.md
        echo "## Setup Instructions" >> README.md
        echo "" >> README.md
        echo "1. Create a virtual environment:" >> README.md
        echo "   python -m venv venv" >> README.md
        echo "2. Activate the virtual environment:" >> README.md
        echo "   source venv/bin/activate" >> README.md
        echo "3. Install project dependencies:" >> README.md
        echo "   pip install PACKAGE_NAME" >> README.md
        echo "4. Deactivate the virtual environment:" >> README.md
        echo "   deactivate" >> README.md
        echo "" >> README.md
        echo "## Usage" >> README.md
        echo "Provide instructions on how to use the project, including running any scripts or commands." >> README.md

        git init
        git add .
        git commit -m "Initial commit"

        echo "Python project setup complete."
        echo "Refer to the README.md file for setup instructions and project usage."
        ;;
    2)
        echo "Creating a Bash project"
        mkdir "$project_name"
        cd "$project_name"
        touch "${project_name}.sh"
        echo "# $project_name Bash project" > README.md
        echo "" >> README.md
        echo "To run the Bash scripts in this project, you can execute them using the following command:" >> README.md
        echo "" >> README.md

        git init
        git add .
        git commit -m "Initial commit"

        echo "Bash project setup complete."
        echo "Refer to the README.md file for instructions on running scripts."
        ;;
    *)
        echo "Invalid choice. Please try again."
        ;;
esac
