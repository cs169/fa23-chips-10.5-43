# TL;DR: YOU SHOULD DELETE THIS FILE
#
# This file is used by web_steps.rb, which you should also delete
#
# You have been warned
module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in web_steps.rb
  #
  def path_to(page_name)
    case page_name

    when /^the home\s?page$/ then '/'
    when /^(.*) state map page$/ then state_map_path($1)
    when /^(.*) county map page$/ then search_representatives_path($1)
    when /^the representatives page$/ then '/representatives'
    when /^the news articles page$/ then '/representatives'

    # when /^the news items page$/ then '/representatives/3/news_items'
    when /^the campaign finance page$/ then search_campaign_finances_path()




    else
      begin
        page_name =~ /^the (.*) page$/
        path_components = $1.split(/\s+/)
        self.send(path_components.push('path').join('_').to_sym)
      rescue NoMethodError, ArgumentError
        raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
          "Now, go and add a mapping in #{__FILE__}"
      end
    end
  end
end

World(NavigationHelpers)
