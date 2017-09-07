module Boilerpipe
  java_import java.net.URL

  module Extractors
    class ArticleExtractor
      java_import 'com.kohlschutter.boilerpipe.extractors.ArticleExtractor'
      def  self.get_text(s)
        url = nil

        begin
          url = Java::JavaNet::URL.new(s)
        rescue Java::JavaNet::MalformedURLException => e
          # not a URL
        end
        input = url ? url : s
        ArticleExtractor::INSTANCE.get_text(input)
      end

      class <<self
        alias_method :text, :get_text
      end
    end
  end

  class ArticleExtractor
    def self.get_text(s)
      Extractors::ArticleExtractor.get_text s
    end

    class <<self
      alias_method :text, :get_text
    end
  end
end
