# coding: utf-8
require File.expand_path('../lib/cocoapods_git_tarball/gem_version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = CocoaPodsGitTarball::NAME
  spec.version       = CocoaPodsGitTarball::VERSION
  spec.authors       = ['Igor Makarov']
  spec.email         = ['igormaka@gmail.com']
  spec.description   = %q{A CocoaPods plugin that downloads pods from git repos as tarballs, if possible.}
  spec.summary       = %q{cocoapods-git-tarball is a CocoaPods plugin that checks whether a pod is being downloaded from a git repo that supports tarballing, and uses HTTP download when this is possible. This saves a lot of time for large repos.}
  spec.homepage      = 'https://github.com/igor-makarov/cocoapods-git-tarball'
  spec.license       = 'MIT'

  spec.files         = Dir['lib/**/*.rb']
  spec.test_files    = Dir['spec/**/*.rb']
  spec.require_paths = ['lib']
  spec.extra_rdoc_files = ['README.md']

  spec.add_dependency 'cocoapods', '~> 1.0', '>= 1.3.0'
  spec.add_dependency 'cocoapods-downloader', '~> 1.3'
end
