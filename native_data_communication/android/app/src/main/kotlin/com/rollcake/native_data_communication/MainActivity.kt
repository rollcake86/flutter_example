package com.rollcake.native_data_communication

import android.content.Context
import android.os.Bundle

import io.flutter.app.FlutterActivity
import io.flutter.plugins.GeneratedPluginRegistrant
import io.flutter.plugin.common.MethodChannel
import android.os.BatteryManager
import android.content.Intent
import android.content.IntentFilter
import android.content.ContextWrapper
import android.os.Build
import android.os.Build.VERSION_CODES
import android.os.Build.VERSION



class MainActivity : FlutterActivity() {
    private val CHANNEL = "samples.flutter.dev/battery"
    private val CHANNEL_INFO = "samples.flutter.dev/info"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        GeneratedPluginRegistrant.registerWith(this)


        MethodChannel(flutterView, CHANNEL).setMethodCallHandler { methodCall, result ->
            if (methodCall.method == "getBatteryLevel") {
                val batteryLevel = getBatteryLevel()

                if (batteryLevel != -1) {
                    result.success(batteryLevel)
                } else {
                    result.error("UNAVAILABLE", "Battery level not available.", null)
                }
            } else {
                result.notImplemented()
            }

        }

        MethodChannel(flutterView,CHANNEL_INFO).setMethodCallHandler{call , result ->
            if(call.method == "getInfo") {
                val osInfo = getInfo()
                result.success(osInfo)
            }else{
                result.notImplemented()
            }
        }
    }

    private fun getInfo(): Any {
        val os = StringBuffer()
        os.append(Build.BOARD +"\n")
        os.append(Build.BOOTLOADER +"\n")
        os.append(Build.BRAND +"\n")
        os.append(Build.DEVICE +"\n")
        os.append(Build.DISPLAY +"\n")
        os.append(Build.MANUFACTURER +"\n")
        os.append(Build.PRODUCT +"\n")
        os.append(Build.FINGERPRINT +"\n")
        os.append(Build.HARDWARE +"\n")
        os.append(Build.TAGS +"\n")

        return os.toString();
    }

    private fun getBatteryLevel(): Int {
        var batteryLevel = -1
        if (VERSION.SDK_INT >= VERSION_CODES.LOLLIPOP) {
            val batteryManager = getSystemService(Context.BATTERY_SERVICE) as BatteryManager
            batteryLevel = batteryManager.getIntProperty(BatteryManager.BATTERY_PROPERTY_CAPACITY)
        } else {
            val intent = ContextWrapper(applicationContext).registerReceiver(null, IntentFilter(Intent.ACTION_BATTERY_CHANGED))
            batteryLevel = intent!!.getIntExtra(BatteryManager.EXTRA_LEVEL, -1) * 100 / intent.getIntExtra(BatteryManager.EXTRA_SCALE, -1)
        }
        return batteryLevel
    }
}
