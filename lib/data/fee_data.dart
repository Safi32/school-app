class FeeData{
  final String receiptNo;
  final String month;
  final String date;
  final String paymentStatus;
  final String totalAmount;
  final String btnStatus;

  FeeData(this.receiptNo, this.month, this.date, this.paymentStatus, this.totalAmount, this.btnStatus);
}

  List<FeeData> fee = [
      FeeData("90871", "November", "8-Nov-2020", "Pending", "980\$", "Pay Now"),
      FeeData("90872", "September", "29-Sep-2020", "Paid", "1080\$", "Download"),
      FeeData("90816",  "October", "29-Dec-2020", "Paid", "1020\$", "Download"),
  ];