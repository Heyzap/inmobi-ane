# InMobi ANE

A thin wrapper around the InMobi Android and iOS SDK for use on Heyzap's mediation.

The latest release can be found in [Releases](https://github.com/Heyzap/inmobi-ane/releases).

Pull requests and issues are welcome.

#### InMobi Versions
- iOS: 6.2.1
- Android: 6.2.4

#### Adding to your project

- Add the `InMobi.ane` to your Adobe Flex Builder or Adobe Flash project.
- If on Android, follow the [integration instructions on Heyzap](https://developers.heyzap.com/docs/ane_setup_and_requirements#step-3-modify-your-application-descriptor) or add the following permissions and activities to your Android Manifest in your application descriptor:
 
	```xml
	<uses-permission android:name="android.permission.INTERNET"/>
	<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"/>
  <uses-permission android:name="com.google.android.gms.permission.ACTIVITY_RECOGNITION" />

  <!-- Optionally used by InMobi -->
  <!-- GET_TASKS only needed for API 14 and lower -->
  <uses-permission android:name="android.permission.GET_TASKS" />

  <!-- Optionally used by InMobi -->
  <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />

  <!-- Optionally used by InMobi -->
  <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />

  <!-- Optionally used by InMobi -->
  <uses-permission android:name="android.permission.ACCESS_WIFI_STATE" />

  <!-- Optionally used by InMobi -->
  <uses-permission android:name="android.permission.CHANGE_WIFI_STATE" />

  <!-- Optionally used by InMobi -->
  <uses-permission android:name="android.permission.READ_CALENDAR" />

  <!-- Optionally used by InMobi -->
  <uses-permission android:name="android.permission.RECORD_AUDIO" />

  <!-- Optionally used by InMobi -->
  <uses-permission android:name="android.permission.VIBRATE" />

  <!-- Optionally used by InMobi -->
  <uses-permission android:name="android.permission.WRITE_CALENDAR" />

  <!-- Optionally used by InMobi -->
  <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
	```

	```xml
	<!-- InMobi -->
	<activity android:name="com.inmobi.rendering.InMobiAdActivity" android:configChanges="keyboardHidden|orientation|keyboard|smallestScreenSize|screenSize" android:theme="@android:style/Theme.Translucent.NoTitleBar" android:hardwareAccelerated="true" />
	<receiver android:name="com.inmobi.commons.core.utilities.uid.ImIdShareBroadCastReceiver" android:enabled="true" android:exported="true" >
	<intent-filter>
	<action android:name="com.inmobi.share.id" />
	</intent-filter>
	</receiver>
	<service android:name="com.inmobi.signals.activityrecognition.ActivityRecognitionManager" android:enabled="true" />
	```

- If not done automatically, add the follow extension context to your application descriptor:

	```xml
	<extensions>
	    <extensionID>com.heyzap.sdk.extensions.inmobi</extensionID>
	</extensions>
	```

#### Updating InMobi
**For iOS**:
- Replace `InMobiSDK.framework` in `ios/Vendor` with a newer version.

**For Android**:
- Replace `InMobi.jar` in `android/libs` with a newer version.
- Update `android/platform.xml` with any new android libraries that the newer version might be dependent on. Android libraries can be added under the _packagedDependencies_ tag. The actual `.jar` files can be added to the `andorid/libs` directory.

After making the necessary modifications, build the new ANE by following the [building](#building) instructions below.

#### Building

##### Requirements:
- Mac OS X
- XCode
- [Apache Ant](http://ant.apache.org/)
- [AIR SDK](http://www.adobe.com/devnet/air/air-sdk-download.html)

##### Building:
- Make a `build.config` by copying `build.config.dist` (your local config file)
- Add the path to your AIR SDK in `build.config` (under `air.sdk`)
- From the root of the repository, run `ant`.

After build completes, the native extension will be in `bin/InMobi.ane`.
