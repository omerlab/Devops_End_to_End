node{
    def mavenHome = tool name: "maven3.8.4"
    def buildNumber = env.BUILD_NUMBER
}
stage('gitClone'){
    echo "Jenkins job Number ${buildNumber}"
    git ""
}
stage('mavenBuild'){
    sh "${mavenHome}/bin mvn clean package"
}
stage('dockerBuild'){
    sh "docker build -t bricelab/alybibaf:{BuilNumber}"
}
stage('dockerPush'){
    sh "docker push bricelab/alybibaf:{BuilNumber}"
}
stage('deploy'){
    sh docker-compose up -d
}