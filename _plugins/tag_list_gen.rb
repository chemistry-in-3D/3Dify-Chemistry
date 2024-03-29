# _plugins/tag_list_gen.rb
require 'json'

Jekyll::Hooks.register :site, :post_write do |site|
  # Create a hash to hold the tag data
  tag_data = {}

  # Create a set to store all unique model IDs
  all_model_ids = Set.new

  # Iterate over documents in the '_models' collection and sort them by model_id
  sorted_docs = site.collections['models'].docs.sort_by { |doc| doc.data['model_id'] }

  sorted_docs.each do |doc|
    # Skip the document if it's not valid or doesn't have tags
    next if doc.data['tags'].nil? || doc.data['model_id'].nil?

    # Add the model_id to the list for each tag
    doc.data['tags'].each do |tag|
      (tag_data[tag] ||= []) << doc.data['model_id']
      all_model_ids.add(doc.data['model_id'])
    end
  end

  # Include a tag "All" with all unique D0... model IDs
  tag_data['All'] = all_model_ids.to_a

  # Define the full path to the '_site/models' directory
  models_directory = File.join(site.dest, 'models')

  # Create the '_site/models' directory if it doesn't exist
  FileUtils.mkdir_p(models_directory)

  # Write the tag data to a JSON file within the '_site/models' directory
  File.open(File.join(models_directory, 'tag_lists.json'), 'w') do |file|
    file.write(JSON.pretty_generate(tag_data))
  end
end
