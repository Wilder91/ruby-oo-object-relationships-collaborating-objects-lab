require 'pry'
class MP3Importer
    attr_accessor :path
    
    def initialize(filepath)
       @path = filepath
    end

    def files
        @files = Dir.entries(@path)
        @files.delete_if {|file| file == '.' || file == '..'}
    end

    def import
        imported_files = self.files
        imported_files.each do |file|
          new_song = Song.new_by_filename(file)
        end
      end
    
end 