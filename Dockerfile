# Use an official Jupyter Notebook base image
FROM jupyter/base-notebook

# Set the working directory inside the container
WORKDIR /home/work

# Copy the project files, including aznbsetup.sh
COPY . .

# Ensure the script has execution permissions
RUN chmod +x aznbsetup.sh

# Install dependencies using the aznbsetup.sh script
RUN bash aznbsetup.sh

# Expose the default Jupyter Notebook port
EXPOSE 8888

# Start Jupyter Notebook without a token or password
CMD ["start-notebook.sh", "--NotebookApp.token=''", "--NotebookApp.password=''"]
