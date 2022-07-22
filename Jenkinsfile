pipeline {
    agent { label 'master'} 
    stages {
        stage('pull code') {
            steps {
               checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[credentialsId: 'ce0c5173-c3c2-4cad-a481-ed4561e5a0e3', url: 'git@github.com:chenshuaifeng110/blog.git']]])
            }
        }
        stage('docker build') {
            steps {
               sh '''
                    CONTAINER_ID=$(docker ps -a -q -f name=blog)
                    IMAGE_ID=$(docker images | grep "blog" | awk '{print $3}')
                    if [ -n "$CONTAINER_ID" ]; then
                    docker stop $CONTAINER_ID
                    echo "删除blog容器"
                    docker rm $CONTAINER_ID
                    fi
                    if [ -n "$IMAGE_ID" ]; then
                    echo "删除blog镜像"
                    fi
                    # 根据dockefile构建镜像
                    docker build -t blog .
                    # 启动镜像，容器端口是8000
                    docker run --name blog --net applet  -d -p 8000:8000 blog 
                    # 访问blog端口
                    echo "服务运行在8000端口上"
                   '''
            }
        }
    }
}
