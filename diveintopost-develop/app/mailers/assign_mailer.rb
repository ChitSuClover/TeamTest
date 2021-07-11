class AssignMailer < ApplicationMailer
  default from: 'from@example.com'
  def delete_agenda_mail(agenda, team)
    @agenda = agenda
    @team = team
    @team.users.each do |user|
      mail to:user.email , subject: "Agende deleted"
    end
  end
  def assign_mail(email, password)
    @email = email
    @password = password
    mail to: @email, subject: I18n.t('views.messages.complete_registration')
  end
end
