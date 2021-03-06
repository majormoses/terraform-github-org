module "java" {
  source        = "modules/repository"
  name          = "java"
  cookbook_team = "${github_team.java.id}"
  status_checks = ["ci/circleci: delivery"]
}

resource "github_team" "java" {
  name        = "java"
  description = "Java Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "java-maintainer-1" {
  team_id  = "${github_team.java.id}"
  username = "tas50"
  role     = "maintainer"
}

resource "github_team_membership" "java-maintainer-2" {
  team_id  = "${github_team.java.id}"
  username = "duncaan"
  role     = "maintainer"
}
