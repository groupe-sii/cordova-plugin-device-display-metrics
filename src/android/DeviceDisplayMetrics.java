package com.groupe.sii.deviceDisplayMetrics;

import org.apache.cordova.*;
import org.json.JSONArray;
import org.json.JSONException;

import android.util.DisplayMetrics;

import android.util.Log;

public class DeviceDisplayMetrics extends CordovaPlugin {

    private int densityDpi;

    @Override
    public boolean execute(String action, JSONArray data, CallbackContext callbackContext) throws JSONException {

        DisplayMetrics metrics = new DisplayMetrics();

        densityDpi = metrics.densityDpi;

        Log.i("DeviceDisplayMetrics", " action: " + action);

        if (action.equals("getDpi")) {

            String message = "Dpi: " + densityDpi;
            callbackContext.success(message);

            return true;

        } else {
            
            return false;

        }
    }
}
