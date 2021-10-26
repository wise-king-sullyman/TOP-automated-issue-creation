# frozen_string_literal: true

require 'dotenv'
require 'octokit'

require_relative './knowledge_check_issue_template'

Dotenv.load

client = Octokit::Client.new(access_token: ENV.fetch('ACCESS_TOKEN'))

# Edit the following four variables as applicable
course_name = 'Foo'
lesson_names = %w[
  bar
  bash
  baz
  bing
  bang
  bong
  boom
  bam
]
related_to_issue_number = '#22222'
owner_and_repo_name = 'account_name/repo_name' # eg 'wise-king-sullyman/TOP-automated-issue-creation'

lesson_names.each do |lesson_name|
  issue_template = KnowledgeCheckIssueTemplate.new(course_name, lesson_name, related_to_issue_number)

  client.create_issue(owner_and_repo_name, issue_template.title, issue_template.body)

  # some amount of sleep is needed to avoid the secondary rate limit
  sleep 3
end
