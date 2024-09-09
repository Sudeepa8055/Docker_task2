FROM amazonlinux

# Set the working directory in the container
WORKDIR /app

RUN yum install java-11* -y

# Copy the Java source code into the container
COPY HelloDevOps.java .

# Compile the Java source code
RUN javac HelloDevOps.java

# Set the command to run the compiled Java class
CMD ["java", "HelloDevOps"]
