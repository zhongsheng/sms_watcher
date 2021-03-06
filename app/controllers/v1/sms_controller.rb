# frozen_string_literal: true

class V1::SmsController < ActionController::API
  def callback
    raise 'Unauthrized!' if params[:token] != Digest::MD5.hexdigest(Rails.application.secret_key_base)

    params['_json'].each do |data|
      EntryLog.create!(
        account_id: params[:account_id],
        phone: data['phone_number'],
        detail: data['err_msg']
      )
    end

    render json: { code: 0, msg: '接收成功' }
  end
end
