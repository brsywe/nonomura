# -*- coding: utf-8 -*-

Plugin.create(:nonomura) do

  command(
    :nonomura,
    name: '野々村',
    condition: -> _ { true },
    visible: true,
    role: :timeline
  ) do |opt|
    nonomura = [
      "そういう問題ッヒョオッホーーー！！　解決ジダイガダメニ！　俺ハネェ！　ブフッフンハアァア！！　",
      "誰がね゛え！　誰が誰に投票ジデモ゛オンナジヤ、オンナジヤ思っでえ！",
    ]
    opt.messages.each do |message|
      to_name = message.user.idname
      msg = "@#{to_name} #{nonomura.sample}"
      Service.primary.post(:message => msg, :replyto => message)
    end
  end
end