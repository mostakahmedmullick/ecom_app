import 'package:ecom_app/utils/app_color_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AddNewAddress extends StatefulWidget {
  const AddNewAddress({Key? key}) : super(key: key);

  @override
  _AddNewAddressState createState() => _AddNewAddressState();
}

class _AddNewAddressState extends State<AddNewAddress> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _mobileController = TextEditingController();
  final _pinCodeController = TextEditingController();
  final _addressController = TextEditingController();
  final _cityController = TextEditingController();
  final _stateController = TextEditingController();
  final _landMarkController = TextEditingController();
  final _altMobileController = TextEditingController();

  FocusNode nameFocusNode = new FocusNode();
  FocusNode mobileFocusNode = new FocusNode();
  FocusNode pinCodeFocusNode = new FocusNode();
  FocusNode addressFocusNode = new FocusNode();
  FocusNode cityFocusNode = new FocusNode();
  FocusNode stateFocusNode = new FocusNode();
  FocusNode landMarkFocusNode = new FocusNode();
  FocusNode altMobileFocusNode = new FocusNode();

  bool _hasNameError = false;
  bool _hasMobileError = false;
  bool _hasPincodeError = false;
  bool _hasAddressError = false;
  bool _hasCityError = false;
  bool _hasStateError = false;

  void _requestNameFocus() {
    setState(() {
      FocusScope.of(context).requestFocus(nameFocusNode);
    });
  }

  void _requestMobileFocus() {
    setState(() {
      FocusScope.of(context).requestFocus(mobileFocusNode);
    });
  }

  void _requestPinCodeFocus() {
    setState(() {
      FocusScope.of(context).requestFocus(pinCodeFocusNode);
    });
  }

  void _requestAddressFocus() {
    setState(() {
      FocusScope.of(context).requestFocus(addressFocusNode);
    });
  }

  void _requestCityFocus() {
    setState(() {
      FocusScope.of(context).requestFocus(cityFocusNode);
    });
  }

  void _requestStateFocus() {
    setState(() {
      FocusScope.of(context).requestFocus(stateFocusNode);
    });
  }

  void _requestLandMarkFocus() {
    setState(() {
      FocusScope.of(context).requestFocus(landMarkFocusNode);
    });
  }

  void _requestAltMobileFocus() {
    setState(() {
      FocusScope.of(context).requestFocus(altMobileFocusNode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColorConstants.primaryColor,
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/svg-icons/left-arrow.svg',
            height: 15,
            width: 15,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          "Add New Address",
          style: GoogleFonts.lato(),
        ),
        elevation: 0.0,
        bottomOpacity: 0.0,
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 12.0,
          ),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  SizedBox(height: 12.0,),
                  // Name field
                  TextFormField(
                    controller: _nameController,
                    focusNode: nameFocusNode,
                    onTap: _requestNameFocus,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFE3E0E0), width: 1.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFD8000C), width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColorConstants.primaryColor, width: 1.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFD8000C), width: 1.0),
                      ),
                      labelStyle: TextStyle(
                          color: _hasNameError
                              ? Color(0xFFD8000C)
                              : (nameFocusNode.hasFocus
                                  ? AppColorConstants.primaryColor
                                  : Color(0xFFA4A4A4))),
                      labelText: "Name*",
                      isDense: true,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        setState(() {
                          _hasNameError = true;
                        });
                        return "Please enter your name";
                      }
                      setState(() {
                        _hasNameError = false;
                      });
                      return null;
                    },
                  ),
                  SizedBox(height: 20.0),
                  // Mobile field
                  TextFormField(
                    controller: _mobileController,
                    focusNode: mobileFocusNode,
                    onTap: _requestMobileFocus,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFE3E0E0), width: 1.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFD8000C), width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColorConstants.primaryColor, width: 1.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFD8000C), width: 1.0),
                      ),
                      labelStyle: TextStyle(
                          color: _hasMobileError
                              ? Color(0xFFD8000C)
                              : (nameFocusNode.hasFocus
                                  ? AppColorConstants.primaryColor
                                  : Color(0xFFA4A4A4))),
                      labelText: "Mobile*",
                      isDense: true,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        setState(() {
                          _hasMobileError = true;
                        });
                        return "Please enter your mobile";
                      }
                      setState(() {
                        _hasMobileError = false;
                      });
                      return null;
                    },
                  ),
                  SizedBox(height: 20.0),
                  // Pincode field
                  TextFormField(
                    controller: _pinCodeController,
                    focusNode: pinCodeFocusNode,
                    onTap: _requestPinCodeFocus,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFE3E0E0), width: 1.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFD8000C), width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColorConstants.primaryColor, width: 1.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFD8000C), width: 1.0),
                      ),
                      labelStyle: TextStyle(
                          color: _hasPincodeError
                              ? Color(0xFFD8000C)
                              : (nameFocusNode.hasFocus
                                  ? AppColorConstants.primaryColor
                                  : Color(0xFFA4A4A4))),
                      labelText: "Pincode*",
                      isDense: true,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        setState(() {
                          _hasPincodeError = true;
                        });
                        return "Please enter your pincode";
                      }
                      setState(() {
                        _hasPincodeError = false;
                      });
                      return null;
                    },
                  ),
                  SizedBox(height: 20.0),
                  // Address field
                  TextFormField(
                    controller: _addressController,
                    focusNode: addressFocusNode,
                    onTap: _requestAddressFocus,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFE3E0E0), width: 1.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFD8000C), width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColorConstants.primaryColor, width: 1.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFD8000C), width: 1.0),
                      ),
                      labelStyle: TextStyle(
                          color: _hasAddressError
                              ? Color(0xFFD8000C)
                              : (addressFocusNode.hasFocus
                                  ? AppColorConstants.primaryColor
                                  : Color(0xFFA4A4A4))),
                      labelText: "Address*",
                      isDense: true,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        setState(() {
                          _hasAddressError = true;
                        });
                        return "Please enter your address";
                      }
                      setState(() {
                        _hasAddressError = false;
                      });
                      return null;
                    },
                  ),
                  SizedBox(height: 20.0),
                  // City field
                  TextFormField(
                    controller: _cityController,
                    focusNode: cityFocusNode,
                    onTap: _requestCityFocus,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFE3E0E0), width: 1.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFD8000C), width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColorConstants.primaryColor, width: 1.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFD8000C), width: 1.0),
                      ),
                      labelStyle: TextStyle(
                          color: _hasCityError
                              ? Color(0xFFD8000C)
                              : (cityFocusNode.hasFocus
                                  ? AppColorConstants.primaryColor
                                  : Color(0xFFA4A4A4))),
                      labelText: "City*",
                      isDense: true,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        setState(() {
                          _hasCityError = true;
                        });
                        return "Please enter your city";
                      }
                      setState(() {
                        _hasCityError = false;
                      });
                      return null;
                    },
                  ),
                  SizedBox(height: 20.0),
                  // State field
                  TextFormField(
                    controller: _stateController,
                    focusNode: stateFocusNode,
                    onTap: _requestStateFocus,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFE3E0E0), width: 1.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFD8000C), width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColorConstants.primaryColor, width: 1.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFD8000C), width: 1.0),
                      ),
                      labelStyle: TextStyle(
                          color: _hasStateError
                              ? Color(0xFFD8000C)
                              : (stateFocusNode.hasFocus
                                  ? AppColorConstants.primaryColor
                                  : Color(0xFFA4A4A4))),
                      labelText: "State*",
                      isDense: true,
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        setState(() {
                          _hasStateError = true;
                        });
                        return "Please enter your state";
                      }
                      setState(() {
                        _hasStateError = false;
                      });
                      return null;
                    },
                  ),
                  SizedBox(height: 20.0),
                  // Landmark field
                  TextFormField(
                    controller: _landMarkController,
                    focusNode: landMarkFocusNode,
                    onTap: _requestLandMarkFocus,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFE3E0E0), width: 1.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFD8000C), width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColorConstants.primaryColor, width: 1.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFD8000C), width: 1.0),
                      ),
                      labelStyle: TextStyle(
                        color: stateFocusNode.hasFocus
                            ? AppColorConstants.primaryColor
                            : Color(0xFFA4A4A4),
                      ),
                      labelText: "Landmark(Optional)",
                      isDense: true,
                    ),
                    // validator: (value) {
                    //   if (value == null || value.isEmpty) {
                    //     setState(() {
                    //       _hasStateError = true;
                    //     });
                    //     return "Please enter your state";
                    //   }
                    //   setState(() {
                    //     _hasStateError = false;
                    //   });
                    //   return null;
                    // },
                  ),
                  SizedBox(height: 20.0),
                  // Alternate field
                  TextFormField(
                    controller: _altMobileController,
                    focusNode: altMobileFocusNode,
                    onTap: _requestAltMobileFocus,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFE3E0E0), width: 1.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFD8000C), width: 1.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: AppColorConstants.primaryColor, width: 1.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFD8000C), width: 1.0),
                      ),
                      labelStyle: TextStyle(
                        color: altMobileFocusNode.hasFocus
                            ? AppColorConstants.primaryColor
                            : Color(0xFFA4A4A4),
                      ),
                      labelText: "Alternate Mobile(Optional)",
                      isDense: true,
                    ),
                    // validator: (value) {
                    //   if (value == null || value.isEmpty) {
                    //     setState(() {
                    //       _hasStateError = true;
                    //     });
                    //     return "Please enter your state";
                    //   }
                    //   setState(() {
                    //     _hasStateError = false;
                    //   });
                    //   return null;
                    // },
                  ),
                  SizedBox(height: 20.0),
                  _saveAddressButton(),
                  SizedBox(height: 12.0),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Order Summery button
  Widget _saveAddressButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(builder: (context) => CheckoutAddress()),
          // );
        },
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          primary: AppColorConstants.secondaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          padding:
              const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
        ),
        child: Text(
          "Save Address",
          style: GoogleFonts.lato(
            fontSize: 16.0,
            // color: AppColorConstants.primaryColorDark,
            // fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
