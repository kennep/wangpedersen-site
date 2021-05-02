def image = 'wangpedersen-site'
def registry = 'https://registry.wangpedersen.com'
def registryLogin = 'registry-login'

node {
  checkout scm

  docker.withRegistry(registry, registryLogin) {
    stage 'Build'
    def builtImage = docker.build(image, '--pull .')

    if (env.BRANCH_NAME == 'master') {
        stage 'Push'
        builtImage.push()
    }
  }
}
