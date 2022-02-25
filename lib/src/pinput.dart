import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

part 'pinput_state.dart';

part 'widgets.dart';

part 'enums.dart';

part 'always_disabled_focus_node.dart';

part 'pin_theme.dart';

part 'constants.dart';

part 'extensions.dart';

class Pinput extends StatefulWidget {
  const Pinput({
    Key? key,
    this.length = 4,
    this.defaultTheme,
    this.focusedPinTheme,
    this.submittedPinTheme,
    this.followingPinTheme,
    this.disabledPinTheme,
    this.errorPinTheme,
    this.onChanged,
    this.onCompleted,
    this.onSaved,
    this.onEditingComplete,
    this.onSubmitted,
    this.onTap,
    this.controller,
    this.focusNode,
    this.preFilledWidget,
    this.separatorPositions,
    this.separator = const SizedBox(width: 8),
    this.mainAxisAlignment = MainAxisAlignment.center,
    this.pinContentAlignment = Alignment.center,
    this.animationCurve = Curves.linear,
    this.animationDuration = const Duration(milliseconds: 180),
    this.pinAnimationType = PinAnimationType.scale,
    this.enabled = true,
    this.showError = false,
    this.useNativeKeyboard = true,
    this.enableInteractiveSelection = true,
    this.autofocus = false,
    this.obscureText = false,
    this.showCursor = false,
    this.enableSuggestions = true,
    this.enableIMEPersonalizedLearning = true,
    this.hapticFeedbackType = HapticFeedbackType.disabled,
    this.closeKeyboardWhenCompleted = true,
    this.keyboardType = TextInputType.number,
    this.textCapitalization = TextCapitalization.none,
    this.toolbarOptions = const ToolbarOptions(paste: true),
    this.slideTransitionBeginOffset,
    this.cursor,
    this.keyboardAppearance,
    this.inputFormatters,
    this.textInputAction,
    this.autofillHints,
    this.textDirection,
    this.obscuringCharacter = '•',
    this.obscuringWidget,
    this.selectionControls,
    this.restorationId,
    this.onClipboardFound,
  }) : super(key: key);

  final PinTheme? defaultTheme;
  final PinTheme? focusedPinTheme;
  final PinTheme? submittedPinTheme;
  final PinTheme? followingPinTheme;
  final PinTheme? disabledPinTheme;
  final PinTheme? errorPinTheme;

  final bool closeKeyboardWhenCompleted;

  final TextDirection? textDirection;

  /// Displayed fields count. PIN code length.
  final int length;

  /// Same as FormField onFieldSubmitted, called when PinPut submitted.
  final ValueChanged<String>? onCompleted;

  /// Signature for being notified when a form field changes value.
  final FormFieldSetter<String>? onSaved;

  /// Called every time input value changes.
  final ValueChanged<String>? onChanged;

  /// Called when user clicks on PinPut
  final VoidCallback? onTap;

  /// Used to get, modify PinPut value and more.
  final TextEditingController? controller;

  /// Defines the keyboard focus for this
  /// To give the keyboard focus to this widget, provide a [focusNode] and then
  /// use the current [FocusScope] to request the focus:
  final FocusNode? focusNode;

  /// Widget that is displayed before field submitted.
  final Widget? preFilledWidget;

  /// Sets the positions where the separator should be shown
  final List<int>? separatorPositions;

  /// Builds a PinPut separator
  final Widget? separator;

  /// Defines how [Pinput] fields are being placed inside [Row]
  final MainAxisAlignment mainAxisAlignment;

  /// Defines how each [Pinput] field are being placed within the container
  final AlignmentGeometry pinContentAlignment;

  /// curve of every [Pinput] Animation
  final Curve animationCurve;

  /// Duration of every [Pinput] Animation
  final Duration animationDuration;

  /// Animation Type of each [Pinput] field
  /// options:
  /// none, scale, fade, slide, rotation
  final PinAnimationType pinAnimationType;

  /// Begin Offset of ever [Pinput] field when [pinAnimationType] is slide
  final Offset? slideTransitionBeginOffset;

  /// Defines [Pinput] state
  final bool enabled;

  /// {@macro flutter.widgets.editableText.autofocus}
  final bool autofocus;

  /// Whether we use Native keyboard or custom `Numpad`
  /// when flag is set to false [Pinput] wont be focusable anymore
  /// so you should set value of [Pinput]'s [TextEditingController] programmatically
  final bool useNativeKeyboard;

  final bool enableInteractiveSelection;

  /// If true the [errorPinTheme] will be applied
  final bool showError;

  /// If true the focused field includes fake cursor
  final bool showCursor;

  /// If [showCursor] true the focused field includes cursor widget or '|'
  final Widget? cursor;

  /// The appearance of the keyboard.
  /// This setting is only honored on iOS devices.
  /// If unset, defaults to [ThemeData.brightness].
  final Brightness? keyboardAppearance;

  /// {@macro flutter.widgets.editableText.inputFormatters}
  final List<TextInputFormatter>? inputFormatters;

  /// {@macro flutter.widgets.editableText.keyboardType}
  final TextInputType keyboardType;

  /// Provide any symbol to obscure each [Pinput] field
  /// Recommended ●
  final String obscuringCharacter;

  final Widget? obscuringWidget;

  final bool obscureText;

  /// {@macro flutter.widgets.editableText.textCapitalization}
  final TextCapitalization textCapitalization;

  /// The type of action button to use for the keyboard.
  ///
  /// Defaults to [TextInputAction.newline] if [keyboardType] is
  /// [TextInputType.multiline] and [TextInputAction.done] otherwise.
  final TextInputAction? textInputAction;

  /// Configuration of toolbar options.
  ///
  /// If not set, select all and paste will default to be enabled. Copy and cut
  /// will be disabled if [obscureText] is true. If [readOnly] is true,
  /// paste and cut will be disabled regardless.
  final ToolbarOptions? toolbarOptions;

  /// lists of auto fill hints
  final Iterable<String>? autofillHints;

  final bool enableSuggestions;
  final VoidCallback? onEditingComplete;
  final ValueChanged<String>? onSubmitted;
  final TextSelectionControls? selectionControls;
  final String? restorationId;
  final bool enableIMEPersonalizedLearning;
  final ValueChanged<String>? onClipboardFound;

  /// Use haptic feedback everytime user types on keyboard
  /// See more details in [HapticFeedback]
  final HapticFeedbackType hapticFeedbackType;

  @override
  _PinputState createState() => _PinputState();
}