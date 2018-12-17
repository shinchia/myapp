class TaskMailer < ApplicationMailer

  default from:"taskleaf@example.com"


  def creation email(task)
    @task = task
    mail(
      subjuct:"お問い合わせ通知メール"
      to:shinchia67020515@gmail.com
      from:"taskleaf@example.com"
    )
  end
end
