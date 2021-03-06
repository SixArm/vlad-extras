# encoding: utf-8
namespace :vlad do

  namespace :thinking_sphinx do

    %w(start restart stop index reindex config).each do |task|
      desc "[Thinking Sphinx] #{task.capitalize}"
      remote_task task.to_sym, :roles => :app do
        run "cd #{current_path} && RAILS_ENV=#{rails_env} #{rake_cmd} ts:#{task}"
      end
    end

  end

end