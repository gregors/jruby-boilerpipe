module Boilerpipe
  java_import 'com.kohlschutter.boilerpipe.extractors.DefaultExtractor'

  class DefaultExtractor
    def  self.get_text(s)
      DefaultExtractor::INSTANCE.get_text s
    end

    class <<self
      alias_method :text, :get_text
    end
  end
end
