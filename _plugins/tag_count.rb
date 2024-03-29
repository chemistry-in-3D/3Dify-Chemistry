# _plugins/update_tag_titles.rb
Jekyll::Hooks.register :site, :pre_render do |site|
  tag_counts = Hash.new(0)

  # Define a mapping of tags to custom titles
  custom_titles = {
    'electronicstructure' => 'Electronic Structure',
	'naturalproducts' => 'Natural Products',
  }

  # Count the occurrences of each tag
  site.collections['models'].docs.each do |doc|
    if doc.data['tags']
      doc.data['tags'].each { |tag| tag_counts[tag.downcase] += 1 }
    end
  end

  # Count all models for the 'All' tag
  all_models_count = site.collections['models'].docs.count
  tag_counts['all'] = all_models_count

  # Update tag markdown files in the _tags directory
  tag_counts.each do |tag, count|
    tag_file = File.join(site.source, '_tags', "#{tag}.markdown")
    if File.exist?(tag_file)
      lines = File.readlines(tag_file)
      lines.map! do |line|
        if line.strip.start_with?('title:')
          title = custom_titles[tag] || tag.capitalize
          "title: #{title} (#{count})\n"
        else
          line
        end
      end
      File.open(tag_file, 'w') { |file| file.puts(lines) }
    end
  end

  puts "Updated tag titles with counts in markdown files."
end
