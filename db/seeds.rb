
User.create!(
  email: "chris.camp1904@gmail.com",
  password: '123fake',
  password_confirmation: '123fake',
  name: 'Chris Camp',
  occupation: 'Software Engineer & CTO',
  job_description: 'Head of Project management and Responsible to curating
                    primary technologies',
  skills: 'Coding and Drawing',
  years_of_experience: 5,
  admin: true
)

json = ActiveSupport::JSON.decode(File.read('db/seeds/blogs.json'))

json.each do |record|
  Blog.create!(record)
end
