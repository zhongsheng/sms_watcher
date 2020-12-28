class Account < ApplicationRecord

  has_many :entry_logs
  enum platform: {
         aliyun: 1,
         tencent: 2
       }
end
