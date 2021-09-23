class ChatModel {
  String name = "0";
  String message = "0";
  String time = "0";
  String avatarUrl = "0";

  ChatModel(this.name, this.message, this.time, this.avatarUrl);
}

List<ChatModel> dummyData = [
  new ChatModel("حسام موسوی", "سلام چطوری, دوره فلاتر چطوره ؟", "15:30",
      "https://zakarya-roohi.ir/wp-content/uploads/2021/09/hero2-1-400x465.jpg"),
  new ChatModel("رضا صفری", "سلام, امروز چیکاره ایم ؟", "17:30",
      "https://zakarya-roohi.ir/wp-content/uploads/2019/09/3-1-540x540.jpg"),
  new ChatModel("محمد احمدی", "به به چه خبر", "5:00",
      "https://zakarya-roohi.ir/wp-content/uploads/2019/09/1-1-255x255.jpg"),
  new ChatModel("فاطمه محمدیان", "سلام دوره فلاتر کی به اتمام میرسه ؟", "10:30",
      "https://zakarya-roohi.ir/wp-content/uploads/2019/09/6-255x255.jpg"),
  new ChatModel("حسین بابای", "سلام آقا راکت اصلا بدرد نمیخوره :))", "12:30",
      "https://zakarya-roohi.ir/wp-content/uploads/2019/09/5-255x255.jpg"),
  new ChatModel("اکبر", "سلام کی تخفیف میزارید", "15:30",
      "http://www.usanetwork.com/sites/usanetwork/files/styles/629x720/public/suits_cast_harvey.jpg?itok=fpTOeeBb"),
];
