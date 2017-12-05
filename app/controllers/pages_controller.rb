class PagesController < ApplicationController
  def home
    set_meta_tags title: 'This is the home page',
              description: 'This is the home page description.',
              keywords: 'keyword1, keyword2, keyword3'
  end
end
