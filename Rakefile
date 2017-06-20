# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "decidim/dev/common_rake"

load "lib/tasks/test_app.rake"

RSpec::Core::RakeTask.new(:spec)

task default: :spec
