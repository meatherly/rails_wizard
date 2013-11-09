after_everything do
  git :init
  git :add => '.'
  git :commit => '-m "Initial import."'
  git :remote => "add origin git@bitbucket.org:metova/#{app_name.gsub(' ', '-').downcase}.git"
  git :push => "origin master"
end

__END__

name: Git
description: "Provides basic Git setup for the Rails app and commits the initial repository."
author: mbleigh

exclusive: scm
category: other
tags: [scm]