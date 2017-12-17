module MyApplication
  class << self
    def root
      File.dirname(__FILE__) + '/..'
    end

    def views_path
      File.join(root, 'app', 'views')
    end

    def public_folder
      File.join(root, 'public')
    end
  end
end
