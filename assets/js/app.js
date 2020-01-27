import { Socket } from "phoenix";
import "phoenix_html";
import LiveSocket from "phoenix_live_view";
import "../css/app.css";
import ConversationListHooks from "./conversation_list_hooks";
import CreateConversationFromHooks from "./create_conversation_from_hooks";

let Hooks = { ConversationListHooks, CreateConversationFromHooks };

let liveSocket = new LiveSocket("/live", Socket, { hooks: Hooks });
liveSocket.connect();

Notification.requestPermission();
