require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    @comment = FactoryBot.build(:comment)
  end

  describe 'コメント投稿機能' do
    
    context 'コメントの投稿がうまくいくとき' do
      it 'commentとuser_id, message_idが存在すれば登録できる' do
        expect(@comment).to be_valid
      end
    end

    context 'コメントの投稿がうまくいかないとき' do
      it 'commentが空だと登録できない' do
        @comment.comment = ''
        @comment.valid?
        expect(@comment.errors.full_messages).to include("Comment can't be blank")
      
      
      
    end
  end
end
