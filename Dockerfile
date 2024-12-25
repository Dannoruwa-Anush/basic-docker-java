# Use an official OpenJDK image as the base image
FROM openjdk

#Copy your project files into the container
COPY sample.java .

# Build the Java .class file
RUN javac sample.java

# Tell Docker what command it should run when the container starts. 
CMD ["java", "sample"]