class Genre < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '打撃' },
    { id: 3, name: '投球' },
    { id: 4, name: '守備' },
    { id: 5, name: '送球' },
    { id: 6, name: '走塁' },
    { id: 7, name: '配球' },
    { id: 8, name: '練習方法' },
    { id: 9, name: '指導方法' },
    { id: 10, name: '食事・サプリメント' },
    { id: 11, name: 'その他' }
  ]
end
