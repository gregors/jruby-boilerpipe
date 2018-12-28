module Boilerpipe
  java_import java.net.URL

  module Extractors
    class ArticleSentencesExtractor
      java_import 'com.kohlschutter.boilerpipe.extractors.ArticleSentencesExtractor'

      def self.process(doc)
        ArticleSentencesExtractor::INSTANCE.process doc
      end

      def self.get_text(s)
        url = nil

        begin
          url = Java::JavaNet::URL.new(s)
        rescue Java::JavaNet::MalformedURLException => e
          # not a URL
        end
        input = url ? url : s
        ArticleSentencesExtractor::INSTANCE.get_text(input)
      end

      class <<self
        alias_method :text, :get_text
      end
    end
  end

  class ArticleSentencesExtractor
    def self.get_text(s)
      Extractors::ArticleSentencesExtractor.get_text s
    end

    class <<self
      alias_method :text, :get_text
    end
  end
end
