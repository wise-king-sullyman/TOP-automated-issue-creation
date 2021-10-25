# frozen_string_literal: true

require 'dotenv'
require 'octokit'

require_relative './knowledge_check_issue_template'

Dotenv.load

# use a GitHub personal access token in the .env file, I have my token limited to repo and account info access only
client = Octokit::Client.new(access_token: ENV.fetch('ACCESS_TOKEN'))

# name of the course being referenced in the template
course_name = 'Foo'

# names of the lessons being referenced in the template
lesson_names = %w[
  bar
  bash
]

related_to_issue_number = '#22222'

lesson_names.each do |lesson_name|
  issue_template = KnowledgeCheckIssueTemplate.new(course_name, lesson_name, related_to_issue_number)

  client.create_issue('TheOdinProject/curriculum', issue_template.title, issue_template.body)

  # some amount of sleep is needed to avoid the secondary rate limit
  sleep 3
end
