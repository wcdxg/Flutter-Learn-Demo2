package com.yuaihen.flutterlearn2

import android.os.Bundle

import io.flutter.app.FlutterActivity
import io.flutter.plugins.GeneratedPluginRegistrant

class MainActivity : FlutterActivity() {
  val C_NAME = "com.flutter/call_native"

  override fun onCreate(savedInstanceState: Bundle?) {
    super.onCreate(savedInstanceState)
    var methodChannel =
            MethodChannel(flutterView, C_NAME)
                    .setMethodCallHandler { methodCall,
                                            result ->
                      if (methodCall.method.equals("call_native_method")) {
                        result.success("这是来自Android端的问候")
                      } else if (methodCall.method.equals("getBattery")) {
                        val bm: BatteryManager = getSystemService(Context.BATTERY_SERVICE) as BatteryManager
                        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.LOLLIPOP) {
                          val total = bm.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY)
                          result.success("当前电量为= $total")
                        } else {
                          result.error("调用Native 失败", "Battery", null)
                        }
                      } else {
                        result.success("调用失败,出现异常")
                      }
                    }
    GeneratedPluginRegistrant.registerWith(this)
  }
}
