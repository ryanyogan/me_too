const CreateConversationFormHooks = {
  disconnected() {
    console.log("Disconnected", this);
  },

  reconnected() {
    console.log("Reconnected", this);
    const formData = new FormData(this.el);
    const queryString = new URLSearchParams(formData);
    this.pushEvent("restore_state", { form_data: queryString.toString() });
  },

  mounted() {
    console.log("Mounted", this);
  },

  destroyed() {
    console.log("Destroyed", this);
  },

  updated() {
    console.log("Updated", this);
  }
};

export default CreateConversationFormHooks;
