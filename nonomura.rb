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
      "行ったことがあるかと言われれば行ったことある気持ちになります。行ったことないと言われれば行ってない気持ちにもなります。",
      "今の精神状態では言葉の理解ができないので、右耳を集中させますので、もう一度お願いします",
      "ご指摘の通り、グリーン車の金額で先方に伺いました。",
      "本当にもう……小さな子どもが大好きで、本当に子どもが大好きなんで、ですから、もうそういう子ども達に申し訳なくて……。",
      "我が県のみウワッハッハーーン！！　我が県のッハアーーーー！　我が県ノミナラズ！　西宮みんなの、日本中の問題じゃないですか！！",
      
    ]
    opt.messages.each do |message|
      to_name = message.user.idname
      msg = "@#{to_name} #{nonomura.sample}"
      world, = Plugin.filtering(:world_current, nil)
      compose(world, message, body: msg)
    end
  end
end
