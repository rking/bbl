# -*- encoding: utf-8 -*-
require 'working/gemspec'
require 'word/version'

keys_bound = File.readlines('README.rdoc').grep(/^\[\+\S+\+\]/).join "\n"

Working.gemspec(
  name: 'word',
  summary: Working.third_line_of_readme,
  description: "== Word\n" + Working.third_line_of_readme,
  version: Word::VERSION,
  authors: %w(☈king),
  email: 'word@sharpsaw.org',
  github: 'rking/word',
  deps: %w(),
)
