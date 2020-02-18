# cocoapods-git-tarball

`cocoapods-git-tarball` is a CocoaPods plugin that checks whether a pod is being downloaded from a git repo that supports tarballing, and uses HTTP download when this is possible. This saves a lot of time for large repos.  

## Background

When you use a published pod, e.g. from the main spec repo, the source for the pod itself is usually published in a git repo. Cloning a git repo, even in a shallow clone, takes more time than would a plain tarball download.

This plugin hooks into `cocoapods-downloader` and modifies its behavior when a git repo can be downloaded as a tarball. 

Currently supported git providers:

* GitHub

## Installation

Install with `gem install`:

    $ gem install cocoapods-git-tarball

Or add cocoapods-git-tarball to your `Gemfile`:

    gem 'cocoapods-git-tarball'

## Usage

cocoapods-git-tarball is used by adding it to your `Podfile` like this:

```
platform :ios, '11.0'
plugin 'cocoapods-git-tarball'

target :MyTarget do
  # Dependencies here
end
```
