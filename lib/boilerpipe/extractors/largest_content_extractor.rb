module Boilerpipe
  java_import 'com.kohlschutter.boilerpipe.extractors.LargestContentExtractor'

  class LargestContentExtractor
    def  self.get_text(s)
      LargestContentExtractor::INSTANCE.get_text s
    end

    class <<self
      alias_method :text, :get_text
    end
  end
end
