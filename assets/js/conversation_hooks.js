const ConversationHooks = {
  updated() {
    if (!this.notifiedMessages) {
      this.notifiedMessages = [];
    }
  }
};
