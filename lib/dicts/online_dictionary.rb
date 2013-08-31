
class OnlineDictionary
    @@url = ''
    @@dicts = {}

    def self.lookup(dict, query)
        url = @@url % {
            :dict => @@dicts[dict],
            :query => query,
        }

        page = Nokogiri::HTML(open(url))

        self.process(page, query)
    end
end
