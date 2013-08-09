# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  Task.create(
    {title: 'Finish rails+backbone project', 
    description: 'see readme for things left to do.', 
    complete: false});

  Task.create(
    {title: 'Load fake data into DB', 
    description: 'just need one or two, tasks, maybe three with completed.', 
    complete: false});

  Task.create(
    {title: 'Commit project to github', 
    description: 'hopefully this will become useful for later', 
    complete: true});