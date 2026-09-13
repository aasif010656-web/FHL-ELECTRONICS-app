package com.abdulasif.pdtstockscanner;

import android.app.Activity;
import android.content.Intent;
import com.getcapacitor.ActivityCallback;
import com.getcapacitor.JSObject;
import com.getcapacitor.Plugin;
import com.getcapacitor.PluginCall;
import com.getcapacitor.annotation.CapacitorPlugin;
import com.getcapacitor.annotation.PluginMethod;

/**
 * Reconstructed native barcode bridge. It launches ScannerActivity, whose design
 * is based on the CameraX + ML Kit scanner recovered from the APK smali artifacts.
 */
@CapacitorPlugin(name = "NativeBarcode")
public class NativeBarcodePlugin extends Plugin {
    @PluginMethod
    public void scan(PluginCall call) {
        Intent intent = new Intent(getActivity(), ScannerActivity.class);
        startActivityForResult(call, intent, "barcodeResult");
    }

    @ActivityCallback
    private void barcodeResult(PluginCall call, ActivityResult result) {
        if (call == null) return;
        if (result.getResultCode() != Activity.RESULT_OK || result.getData() == null) {
            call.reject("Barcode scan cancelled");
            return;
        }
        JSObject output = new JSObject();
        output.put("value", result.getData().getStringExtra(ScannerActivity.EXTRA_BARCODE));
        call.resolve(output);
    }
}
