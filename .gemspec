# -*- encoding: utf-8 -*-
require 'working/gemspec'
require 'bbl/version'

keys_bound = File.readlines('README.rdoc').grep(/^\[\+\S+\+\]/).join "\n"

Working.gemspec(
  name: 'bbl',
  summary: Working.third_line_of_readme,
  description: "== Bbl\n" + Working.third_line_of_readme,
  version: Bbl::VERSION,
  authors: %w(☈king),
  email: 'bbl@sharpsaw.org',
  github: 'rking/bbl',
  deps: %w(),
)
