class Account < ApplicationRecord

  enum platform: {
         aliyun: 1,
         tencent: 2
       }
end
