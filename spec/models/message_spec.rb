require 'rails_helper'

RSpec.describe Message, type: :model do
  before do
    @message = FactoryBot.build(:message)
  end

  describe 'メッセージ投稿機能' do
    
    context 'メッセージの投稿がうまくいくとき' do
      it 'contentとgeneration_id, genre_id, body_parts_id, category_id, user_idが存在すれば登録できる' do
        expect(@message).to be_valid
      end
    end

    context 'メッセージの投稿がうまくいかないとき' do
      it 'contentが空だと登録できない' do
        @message.content = ''
        @message.valid?
        expect(@message.errors.full_messages).to include("Content can't be blank")
      end
      it 'generation_idが空だと登録できない' do
        @message.generation_id = ''
        @message.valid?
        expect(@message.errors.full_messages).to include("Generation can't be blank")
      end
      it 'generation_idが1だと登録できない' do
        @message.generation_id = 1
        @message.valid?
        expect(@message.errors.full_messages).to include("Generation must be other than 1")
      end
      it 'genre_idが空だと登録できない' do
        @message.genre_id = ''
        @message.valid?
        expect(@message.errors.full_messages).to include("Genre can't be blank")
      end
      it 'genre_idが1だと登録できない' do
        @message.genre_id = 1
        @message.valid?
        expect(@message.errors.full_messages).to include("Genre must be other than 1")
      end
      it 'body_parts_idが空だと登録できない' do
        @message.body_parts_id = ''
        @message.valid?
        expect(@message.errors.full_messages).to include("Body parts can't be blank")
      end
      it 'body_parts_idが1だと登録できない' do
        @message.body_parts_id = 1
        @message.valid?
        expect(@message.errors.full_messages).to include("Body parts must be other than 1")
      end
      it 'category_idが空だと登録できない' do
        @message.category_id = ''
        @message.valid?
        expect(@message.errors.full_messages).to include("Category can't be blank")
      end
      it 'category_idが1だと登録できない' do
        @message.category_id = 1
        @message.valid?
        expect(@message.errors.full_messages).to include("Category must be other than 1")
      end
      
    end
  end
end

