import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

const baseUrl = "https://10.0.2.2:5000";

class API {
  static Future getUsers() {
    var url = baseUrl + "/course/SST";
    return http.get(url);
  }
}
