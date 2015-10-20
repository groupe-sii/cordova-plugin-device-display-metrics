package com.groupesii.displaymetrics;

import org.apache.cordova.*;
import org.json.JSONArray;
import org.json.JSONException;

import android.util.DisplayMetrics;
import android.content.Context;

public class DeviceDisplayMetrics extends CordovaPlugin {

    private int densityDpi;

    @Override
    public boolean execute(String action, JSONArray data, CallbackContext callbackContext) throws JSONException {

        Context context=this.cordova.getActivity().getApplicationContext();

        DisplayMetrics metrics = context.getResources().getDisplayMetrics();
        densityDpi = metrics.densityDpi;

        if (action.equals("getDpi")) {

            callbackContext.success(densityDpi);

            return true;
        } else {
            return false;
        }
    }
}
