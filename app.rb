module Nesta
  class App
    def author_biography(name = nil)
      name ||= @page.metadata('author')
      if name
        template = name.downcase.gsub(/\W+/, '_').to_sym
        haml template, :layout => false
      end
    end
  end
end