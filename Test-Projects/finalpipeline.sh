


# docker Deployment
# Build image
# Tag image
# Push into the Docker Registry
# Delete previous container
# Run new container 


  
# Springapp deployment
  stage{
    sh " docker run --name springapp -d -p 80:8080 --network fintech -e MONGO_DB_USERNAME=devdb -e MONGO_DB_PASSWORD=dev@123 -e MONGO_DB_HOSTNAME=mongodb bricelab21/alybibaf:1 "
  }
# Mongodb and volume deployment
 stage{
   sh " docker run -d --name mongodb --network fintech -e MONGO_INITDB_ROOT_USERNAME=devdb -e MONGO_INITDB_ROOT_PASSWORD=dev@123 -v /home/ubuntu/data:/data/db mongo "
 }
