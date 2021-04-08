import consumer from "./consumer"

consumer.subscriptions.create({ channel: "RoomChannel", room_id:2}, {
  connected() {
    console.log("connected......")
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    console.log(data)
    const messageContainer = document.getElementById('messages')
    messageContainer.innerHTML = messageContainer.innerHTML + data.html
  }
});
