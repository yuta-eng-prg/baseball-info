class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '私の主張・意見' },
    { id: 3, name: 'アドバイスが欲しい' },
    { id: 4, name: '今日のアウトプット' },
    { id: 5, name: '討論を求む' },
    { id: 6, name: 'その他' }
  ]
end