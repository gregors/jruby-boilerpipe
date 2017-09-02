module Boilerpipe
  module SAX
    java_import 'com.kohlschutter.boilerpipe.sax.BoilerpipeHTMLParser'
    java_import 'org.xml.sax.InputSource'
    java_import java.io.StringReader

    class BoilerpipeHTMLParser
      def self.parse(text)
        parser = BoilerpipeHTMLParser.new
        string_reader = StringReader.new(text)
        is = InputSource.new(string_reader)
        parser.parse(is)
        parser.to_text_document
      end
    end
  end
end
