alias MeToo.Auth.User
alias MeToo.Chat.{Conversation, ConversationMember}

alias MeToo.{Auth, Chat}

{:ok, %User{id: user_1}} = Auth.create_user(%{nickname: "User One"})
{:ok, %User{id: user_2}} = Auth.create_user(%{nickname: "User Two"})

{:ok, %Conversation{id: conversation_id}} =
  Chat.create_conversation(%{title: "Conversation Number One"})

{:ok, %ConversationMember{}} =
  Chat.create_conversation_member(%{
    conversation_id: conversation_id,
    user_id: user_1,
    owner: true
  })

{:ok, %ConversationMember{}} =
  Chat.create_conversation_member(%{
    conversation_id: conversation_id,
    user_id: user_2,
    owner: false
  })
