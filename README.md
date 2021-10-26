# TOP automated issue creation

## Setup

1. [Install Ruby](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby-programming/lessons/installing-ruby-ruby-programming)
2. Clone this repo and `cd` into `TOP-automated-issue-creation`
3. Run `bundle install`
4. Open the `TOP-automated-issue-creation` directory in your text editor
5. Copy the contents of `sample.env` into a `.env` file
6. On GitHub create a [personal access token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token). I suggest limiting the scope of the token to public_repo access only.
7. Copy the access token value and paste it into your `.env` file in place of `GITHUB_ACCOUNT_ACCESS_TOKEN`

## Creating Issues Using the Included Template

1. Edit the variables as directed in `issue_runner.rb`
2. Execute the script by running `ruby issue_runner.rb` in your terminal