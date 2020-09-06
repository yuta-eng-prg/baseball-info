class Generation < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '幼年期' },
    { id: 3, name: '小学生低学年' },
    { id: 4, name: '小学生高学年' },
    { id: 5, name: '中学生' },
    { id: 6, name: '高校生' },
    { id: 7, name: '大学生' },
    { id: 8, name: '社会人' },
    { id: 9, name: '中年期' },
    { id: 10, name: '壮年期' },
    { id: 11, name: 'その他' }
  ]
end