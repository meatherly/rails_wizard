gem 'jquery-rails'

after_bundler do
  generate "jquery:install"
end

__END__

name: jQuery
description: "Adds the latest jQuery and Rails UJS helpers for jQuery."
author: mbleigh

exclusive: javascript_framework
category: assets
tags: [javascript, framework]

args: ["-J"]