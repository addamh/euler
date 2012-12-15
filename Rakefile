require "rubygems"
require "bundler/setup"

desc "Generate folder for new problem"
task :new, :number do |t, args|
  length=args.number.to_s.length

  if length < 3 then
    padded_id='0' * (3-length)  + args.number.to_s
  else 
    padded_id = args.number
  end
  
  mkdir_p "#{padded_id}"
   
  answer_file = "#{padded_id}/answer.txt"
  if File.exist?(answer_file)
    abort("rake aborted!") if ask("#{file} already exists. Do you want to overwrite?", ['y', 'n']) == 'n'
  end
  touch answer_file
  
  question_file = "#{padded_id}/question.html"
  if File.exist?(question_file)
    abort("rake aborted!") if ask("#{file} already exists. Do you want to overwrite?", ['y', 'n']) == 'n'
  end
  touch question_file
  
end