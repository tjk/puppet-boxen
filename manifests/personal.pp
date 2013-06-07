# Private: Includes a user's personal manifest based on current user

class boxen::personal {
  $manifests         = "${boxen::config::repodir}/modules/people/manifests"
  $personal_manifest = "${manifests}/${::luser}.pp"

  if file_exists($personal_manifest) {
    include "people::${::luser}"
  }
}
