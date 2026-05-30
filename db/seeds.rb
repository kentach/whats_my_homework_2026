Homework.delete_all
Classroom.delete_all

pre1 = Classroom.create!(
  name: 'Pre1',
  eiken_level: '準1級'
)

step2 = Classroom.create!(
  name: 'STEP2',
  eiken_level: '2級'
)

pre2plus = Classroom.create!(
  name: 'Pre2 plus',
  eiken_level: '準2級プラス'
)

pre2 = Classroom.create!(
  name: 'Pre2',
  eiken_level: '準2級'
)

jh1Beginner = Classroom.create!(
  name: 'JH1 Beginner',
  eiken_level: '中学生 5級'
)

jh1STEP3 = Classroom.create!(
  name: 'JH1 STEP3',
  eiken_level: '中学生 3級'
)

jh1STEP4 = Classroom.create!(
  name: 'JH1 STEP4',
  eiken_level: '中学生 4級'
)

eh3 = Classroom.create!(
  name: 'EH3',
  eiken_level: '小学生3級'
)

ehPre2 = Classroom.create!(
  name: 'EH pre2',
  eiken_level: '小学生3級'
)

ehPre2Plus = Classroom.create!(
  name: 'EH Pre2 plus',
  eiken_level: '小学生準2級プラス'
)

eh4 = Classroom.create!(
  name: 'EH4',
  eiken_level: '小学生高学年4級'
)

el4 = Classroom.create!(
  name: 'EL4',
  eiken_level: '小学生低学年4級'
)


eh5 = Classroom.create!(
  name: 'EH5',
  eiken_level: '小学生高学年5級'
)


el5 = Classroom.create!(
  name: 'EL5',
  eiken_level: '小学生低学年5級'
)

classrooms = Classroom.all

classrooms.each do |classroom|
  classroom.homeworks.create!(
    title: "#{classroom.eiken_level} Week30 宿題",
    test_start_date: Date.today,
    test_end_date: Date.today + 7.days
  )

  classroom.homeworks.create!(
    title: "#{classroom.eiken_level} Week31 宿題",
    test_start_date: Date.today,
    test_end_date: Date.today + 14.days
  )
end