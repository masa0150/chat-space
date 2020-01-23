require 'rails_helper'
describe '#create' do
    let(:params) { { group_id: group.id, user_id: user.id, message: attributes_for(:message) } }

    context 'log in' do
    # この中にログインしている場合のテストを記述
      before do
        login user
      end

      context 'can save' do
      # この中にメッセージの保存に成功した場合のテストを記述
      end

      context 'can not save' do
      # この中にメッセージの保存に失敗した場合のテストを記述
      end
    end

    context 'not log in' do
    # この中にログインしていない場合のテストを記述
      before do
        get :create, params: params
      end

    end
  end
end