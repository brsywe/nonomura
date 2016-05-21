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
      "記憶を確認致します。お待ちください。",
      "お訊ねの意味が理解できません",
      "覚えておりません",
      "記憶にございません",
      "行ったことがあるかと言われれば行ったことある気持ちになります。行ったことないと言われれば言ってない気持ちにもなります。",
      "今の精神状態では言葉の理解ができないので、右耳を集中させますので、もう一度お願いします",
      
    ]
    opt.messages.each do |message|
      to_name = message.user.idname
      msg = "@#{to_name} #{nonomura.sample}"
      Service.primary.post(:message => msg, :replyto => message)
    end
  end
end