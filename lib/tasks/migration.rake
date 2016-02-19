namespace :migration do
  # desc "OLD - update shapeset records to use the localization fields"
  # task :shapeset_localization => :environment do
  #   require "./db/migrate/shapeset_localization.rb"
  # end


  # desc "OLD - update dataset records to use the localization fields"
  # task :dataset_localization => :environment do
  #   require "./db/migrate/dataset_localization.rb"
  # end


  desc "OLD - move dataset stats to own documents (not embed)"
  task :move_stats => :environment do
    require "./db/migrate/move_stats.rb"
  end


  desc "load the api documentation written for xtraktr"
  task :xtraktr_api_doc => :environment do
    require "./db/migrate/xtraktr_api_doc.rb"
  end


  desc "move time series datasets to own documents (not embed)"
  task :move_time_series_datasets => :environment do
    require "./db/migrate/move_time_series_datasets.rb"
  end


  desc "load dataset urls with shape_file path"
  task :set_urls_shapefile => :environment do
    require "./db/migrate/set_urls_shapefile.rb"
  end

  desc "load dataset urls with data download paths"
  task :set_dataset_urls => :environment do
    require "./db/migrate/set_dataset_urls.rb"
  end

  # desc "remove permalink key from embed id in highlights"
  # task :remove_highlight_permalink => :environment do
  #   require "./db/migrate/remove_highlight_permalink.rb"
  # end

  desc "remove bad params from embed id in highlights"
  task :remove_bad_embed_params => :environment do
    require "./db/migrate/remove_bad_embed_params.rb"
  end

  desc "add extra questions/data to youth and violence"
  task :add_new_questions => :environment do
    require "./db/migrate/add_new_questions.rb"
  end

  desc "fix answers to extra questions/data to youth and violence"
  task :add_new_questions_fix => :environment do
    require "./db/migrate/add_new_questions_fix.rb"
  end

  desc "update api requests with dataset, time series and user name"
  task :add_missing_names_api_requests => :environment do
    require "./db/migrate/add_missing_names_api_requests.rb"
  end


  desc "populate the new can_download dataset question flag for all datasets"
  task :populate_download_flag => :environment do
    require "./db/migrate/populate_download_flag.rb"
  end

  desc "populate the new download_type field for all agreements"
  task :populate_download_type => :environment do
    require "./db/migrate/populate_download_type.rb"
  end

  desc "populate the new has_can_exclude_answers for all questions"
  task :populate_has_can_exclude_answers => :environment do
    require "./db/migrate/populate_has_can_exclude_answers.rb"
  end

  desc "add sort order value to groups and questions that do not have it"
  task :add_sort_order => :environment do
    require "./db/migrate/add_sort_order.rb"
  end

  desc "for users that do not have permalinks, create one"
  task :add_missing_user_permalinks => :environment do
    require "./db/migrate/add_missing_user_permalinks.rb"
  end


  desc "for users that do not have email_no_domain, create one"
  task :add_user_email_no_domain => :environment do
    require "./db/migrate/add_user_email_no_domain.rb"
  end

  desc "switch to using country_id for user instead of text"
  task :add_country_id_existing_users => :environment do
    require "./db/migrate/add_country_id_existing_users.rb"
  end

  desc "switch download files from txt to doc"
  task :update_download_file_extensions => :environment do
    require "./db/migrate/update_download_file_extensions.rb"
  end

  desc "populate the new data_type for all questions"
  task :update_dataset_questions_data_type => :environment do
    require "./db/migrate/update_dataset_questions_data_type.rb"
  end

  desc "make question can_download true for all questions"
  task :set_questions_download_true => :environment do
    require "./db/migrate/set_questions_download_true.rb"
  end

  desc "make dataitem datas to be cleaned"
  task :clean_dataitem_data_values => :environment do
    require "./db/migrate/clean_dataitem_data_values.rb"
  end


  desc "add missing time series question dataset records"
  task :add_missing_time_series_question_datasets => :environment do
    require "./db/migrate/add_missing_time_series_question_datasets.rb"
  end

  desc "update highlights to have correct visual_type in url and as field"
  task :update_highlight_visual_type => :environment do
    require "./db/migrate/update_highlight_visual_type.rb"
  end

  desc "reprocess all datasets (fixed data_items, reprocessed data_type, numerical, statistics)"
  task :reprocess_all_datasets => :environment do
    require "./db/migrate/reprocess_all_datasets.rb"
  end

end
