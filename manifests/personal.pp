# Private: Includes a user's personal manifest based on their username

class boxen::personal {
  $manifests         = "${boxen::config::repodir}/modules/people/manifests"
  $personal_manifest = "${manifests}/${user}.pp"

  if file_exists($personal_manifest) {
    include "people::${user}"
  }
}
