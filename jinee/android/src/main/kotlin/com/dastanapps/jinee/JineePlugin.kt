package com.dastanapps.jinee

import android.content.Context
import android.content.pm.PackageInfo
import android.content.pm.PackageManager
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.plugin.common.PluginRegistry.Registrar

class JineePlugin() : MethodCallHandler {
    companion object {
        @JvmStatic
        lateinit var context: Context

        @JvmStatic
        fun registerWith(registrar: Registrar) {
            val channel = MethodChannel(registrar.messenger(), "jinee")
            channel.setMethodCallHandler(JineePlugin())
            context = registrar.context()
        }
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        return when (call.method) {
            "getPlatformVersion" ->
                result.success("Android ${android.os.Build.VERSION.RELEASE}")
            "getPackageList" -> result.success(getPackageList())
            else ->
                result.notImplemented()
        }
    }

    private fun getPackageList(): ArrayList<PackageInfo> {
        val appInfoList = ArrayList<PackageInfo>()
        val packageManager = context.run {
            packageManager
        }

        packageManager.run {
            appInfoList.addAll(getInstalledPackages(PackageManager.GET_META_DATA))
        }
        return appInfoList
    }
}
