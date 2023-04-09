import 'receipt_text_style.dart';
import 'receipt_text_style_type.dart';

class ReceiptTextLeftRight {
  ReceiptTextLeftRight(
    this.leftText,
    this.countText,
    this.priceText,
    this.rightText, {
    this.leftTextStyle = const ReceiptTextStyle(
      type: ReceiptTextStyleType.normal,
      useSpan: true,
    ),
    this.rightTextStyle = const ReceiptTextStyle(
      type: ReceiptTextStyleType.normal,
      useSpan: true,
    ),
  });

  final String leftText;
  final String rightText;
  final String countText;
  final String priceText;
  final ReceiptTextStyle leftTextStyle;
  final ReceiptTextStyle rightTextStyle;

  String get html => '''
    <p class="full-width inline-block">
      <${leftTextStyle.textStyleHTML} class="left set-w-item ${leftTextStyle.textSizeHtml}">$leftText</${leftTextStyle.textStyleHTML}>
      <${rightTextStyle.textStyleHTML} class=" set-w-count ${rightTextStyle.textSizeHtml}">$countText</${rightTextStyle.textStyleHTML}>
       <${rightTextStyle.textStyleHTML} class="set-w-price ${rightTextStyle.textSizeHtml}">$priceText</${rightTextStyle.textStyleHTML}>
      <${rightTextStyle.textStyleHTML} class="right set-w-amount ${rightTextStyle.textSizeHtml}">$rightText</${rightTextStyle.textStyleHTML}>
    </p>
  ''';
}
