import { Socket } from "phoenix";
import "phoenix_html";
import LiveSocket from "phoenix_live_view";
import "../css/app.css";
import CreateConversationFromHooks from "./create_conversation_from_hooks";

const Hooks = { CreateConversationFromHooks };

const liveSocket = new LiveSocket("/live", Socket, { hooks: Hooks });
liveSocket.connect();
