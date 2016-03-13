require 'boilerpipe/version'
require_relative 'boilerpipe-common-2.0-SNAPSHOT-jar-with-dependencies.jar'

module Boilerpipe
  java_import 'com.kohlschutter.boilerpipe.extractors.ArticleExtractor'
  java_import java.net.URL

  class ArticleExtractor
    def  self.get_text(s)
      url = URL.new(s)
      ArticleExtractor::INSTANCE.get_text(url)
    end

    class <<self  
      alias_method :text, :get_text
    end 
  end
end
