FROM haskell:8.6.5

# Checkout our code onto the Docker container
WORKDIR /app
ADD . /app

# Build and test our code, then install the “run-server” executable
RUN stack build --copy-bins --ghc-options -O2

# Expose a port to run our application
EXPOSE 80

# Run the server command
CMD [“stack run”]