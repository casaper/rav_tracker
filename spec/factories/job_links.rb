FactoryBot.define do
  factory :job_link do
    url { 'MyString' }
    raw_html { 'MyText' }
    title { 'MyString' }
    description { 'MyText' }
    content_md { 'MyText' }
    job_offer { nil }
  end
end
