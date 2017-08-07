Return-Path: <amanda.r.brindle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3660BE00BC0; Mon,  7 Aug 2017 16:18:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E547E00B8E
	for <yocto@yoctoproject.org>; Mon,  7 Aug 2017 16:18:40 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga105.jf.intel.com with ESMTP; 07 Aug 2017 16:18:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,340,1498546800"; d="scan'208";a="134795907"
Received: from arbrindl-dev.jf.intel.com ([10.7.159.149])
	by orsmga005.jf.intel.com with ESMTP; 07 Aug 2017 16:18:40 -0700
From: Amanda Brindle <amanda.r.brindle@intel.com>
To: yocto@yoctoproject.org
Date: Mon,  7 Aug 2017 16:17:54 -0700
Message-Id: <1502147875-4801-2-git-send-email-amanda.r.brindle@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1502147875-4801-1-git-send-email-amanda.r.brindle@intel.com>
References: <1502147875-4801-1-git-send-email-amanda.r.brindle@intel.com>
Cc: Matthew Hansen <matthew.k.hansen@intel.com>
Subject: [meta-alexa-demo][PATCH 2/3] Added meta-alexa-led for demo files
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 07 Aug 2017 23:18:43 -0000

From: Matthew Hansen <matthew.k.hansen@intel.com>

---
 meta-alexa-led/COPYING.MIT                         |  17 +++
 meta-alexa-led/LICENSE                             |   2 +
 meta-alexa-led/README                              |  64 ++++++++++
 meta-alexa-led/conf/layer.conf                     |  10 ++
 meta-alexa-led/recipes-demo/alexa-led/alexa-led.bb |  16 +++
 .../recipes-demo/alexa-led/files/COPYING.MIT       |  17 +++
 .../recipes-demo/alexa-led/files/LICENSE           |   2 +
 .../recipes-demo/alexa-led/files/index.js          | 142 +++++++++++++++++++++
 .../recipes-demo/alexa-led/files/main.js           |  89 +++++++++++++
 9 files changed, 359 insertions(+)
 create mode 100644 meta-alexa-led/COPYING.MIT
 create mode 100644 meta-alexa-led/LICENSE
 create mode 100644 meta-alexa-led/README
 create mode 100644 meta-alexa-led/conf/layer.conf
 create mode 100644 meta-alexa-led/recipes-demo/alexa-led/alexa-led.bb
 create mode 100644 meta-alexa-led/recipes-demo/alexa-led/files/COPYING.MIT
 create mode 100644 meta-alexa-led/recipes-demo/alexa-led/files/LICENSE
 create mode 100644 meta-alexa-led/recipes-demo/alexa-led/files/index.js
 create mode 100755 meta-alexa-led/recipes-demo/alexa-led/files/main.js

diff --git a/meta-alexa-led/COPYING.MIT b/meta-alexa-led/COPYING.MIT
new file mode 100644
index 0000000..89de354
--- /dev/null
+++ b/meta-alexa-led/COPYING.MIT
@@ -0,0 +1,17 @@
+Permission is hereby granted, free of charge, to any person obtaining a copy
+of this software and associated documentation files (the "Software"), to deal
+in the Software without restriction, including without limitation the rights
+to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
+copies of the Software, and to permit persons to whom the Software is
+furnished to do so, subject to the following conditions:
+
+The above copyright notice and this permission notice shall be included in
+all copies or substantial portions of the Software.
+
+THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
+AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
+OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
+THE SOFTWARE.
diff --git a/meta-alexa-led/LICENSE b/meta-alexa-led/LICENSE
new file mode 100644
index 0000000..5190d8e
--- /dev/null
+++ b/meta-alexa-led/LICENSE
@@ -0,0 +1,2 @@
+All files in this layer are under the MIT license unless a file specifically notes otherwise.
+See COPYING.MIT for license details.
diff --git a/meta-alexa-led/README b/meta-alexa-led/README
new file mode 100644
index 0000000..c671cfe
--- /dev/null
+++ b/meta-alexa-led/README
@@ -0,0 +1,64 @@
+This README file contains information on the contents of the
+alexa-led layer.
+
+Please see the corresponding sections below for details.
+
+
+Dependencies
+============
+
+This layer depends on:
+
+  URI: git://git.openembedded.org/bitbake
+  branch: master
+
+  URI: git://git.openembedded.org/openembedded-core
+  layers: meta
+  branch: master
+
+  URI: git://git.yoctoproject.org/xxxx
+  layers: xxxx
+  branch: master
+
+
+Patches
+=======
+
+Please submit any patches against the alexa-led layer to the
+xxxx mailing list (xxxx@zzzz.org) and cc: the maintainer:
+
+Maintainer: XXX YYYYYY <xxx.yyyyyy@zzzzz.com>
+
+
+Table of Contents
+=================
+
+  I. Adding the alexa-led layer to your build
+ II. Misc
+
+
+I. Adding the alexa-led layer to your build
+=================================================
+
+--- replace with specific instructions for the alexa-led layer ---
+
+In order to use this layer, you need to make the build system aware of
+it.
+
+Assuming the alexa-led layer exists at the top-level of your
+yocto build tree, you can add it to the build system by adding the
+location of the alexa-led layer to bblayers.conf, along with any
+other layers needed. e.g.:
+
+  BBLAYERS ?= " \
+    /path/to/yocto/meta \
+    /path/to/yocto/meta-poky \
+    /path/to/yocto/meta-yocto-bsp \
+    /path/to/yocto/meta-alexa-led \
+    "
+
+
+II. Misc
+========
+
+--- replace with specific information about the alexa-led layer ---
diff --git a/meta-alexa-led/conf/layer.conf b/meta-alexa-led/conf/layer.conf
new file mode 100644
index 0000000..d469d0a
--- /dev/null
+++ b/meta-alexa-led/conf/layer.conf
@@ -0,0 +1,10 @@
+# We have a conf and classes directory, add to BBPATH
+BBPATH .= ":${LAYERDIR}"
+
+# We have recipes-* directories, add to BBFILES
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
+	${LAYERDIR}/recipes-*/*/*.bbappend"
+
+BBFILE_COLLECTIONS += "alexa-led"
+BBFILE_PATTERN_alexa-led = "^${LAYERDIR}/"
+BBFILE_PRIORITY_alexa-led = "6"
diff --git a/meta-alexa-led/recipes-demo/alexa-led/alexa-led.bb b/meta-alexa-led/recipes-demo/alexa-led/alexa-led.bb
new file mode 100644
index 0000000..3e09f30
--- /dev/null
+++ b/meta-alexa-led/recipes-demo/alexa-led/alexa-led.bb
@@ -0,0 +1,16 @@
+LICENSE = "MIT"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=afaffb6a59e1896be335c5dd05c69e4b"
+
+SRC_URI = "file://main.js"
+
+RDEPENDS_${PN} = "nodejs \
+                  alexapi"
+
+do_install () {
+    install -d ${D}${libdir}/node_modules/alexa_led
+    install ${WORKDIR}/main.js ${D}${libdir}/node_modules/alexa_led
+}
+
+FILES_${PN} = " \
+    ${libdir}/node_modules \
+    "
diff --git a/meta-alexa-led/recipes-demo/alexa-led/files/COPYING.MIT b/meta-alexa-led/recipes-demo/alexa-led/files/COPYING.MIT
new file mode 100644
index 0000000..89de354
--- /dev/null
+++ b/meta-alexa-led/recipes-demo/alexa-led/files/COPYING.MIT
@@ -0,0 +1,17 @@
+Permission is hereby granted, free of charge, to any person obtaining a copy
+of this software and associated documentation files (the "Software"), to deal
+in the Software without restriction, including without limitation the rights
+to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
+copies of the Software, and to permit persons to whom the Software is
+furnished to do so, subject to the following conditions:
+
+The above copyright notice and this permission notice shall be included in
+all copies or substantial portions of the Software.
+
+THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
+IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
+FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
+AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
+LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
+OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
+THE SOFTWARE.
diff --git a/meta-alexa-led/recipes-demo/alexa-led/files/LICENSE b/meta-alexa-led/recipes-demo/alexa-led/files/LICENSE
new file mode 100644
index 0000000..5190d8e
--- /dev/null
+++ b/meta-alexa-led/recipes-demo/alexa-led/files/LICENSE
@@ -0,0 +1,2 @@
+All files in this layer are under the MIT license unless a file specifically notes otherwise.
+See COPYING.MIT for license details.
diff --git a/meta-alexa-led/recipes-demo/alexa-led/files/index.js b/meta-alexa-led/recipes-demo/alexa-led/files/index.js
new file mode 100644
index 0000000..5c5503f
--- /dev/null
+++ b/meta-alexa-led/recipes-demo/alexa-led/files/index.js
@@ -0,0 +1,142 @@
+'use strict';
+var config = {};
+
+var AWS = require('aws-sdk');
+var Alexa = require('alexa-sdk');
+
+//replace with endpoint from AWS IoT Device
+var iotData = new AWS.IotData({endpoint: 'a22iwj71w43omu.iot.us-east-2.amazonaws.com', region: 'us-east-2'});
+var APP_ID = undefined; //OPTIONAL: replace with 'amzn1.echo-sdk-ams.app.[your-unique-value-here]';
+var SKILL_NAME = 'gateway-demo';
+
+exports.handler = function(event, context, callback) {
+    var alexa = Alexa.handler(event, context);
+    alexa.APP_ID = APP_ID;
+    alexa.registerHandlers(handlers);
+    alexa.execute();
+};
+
+var led_state = 0;
+
+var handlers = {
+    'LaunchRequest': function () {
+
+      var LEDState = [
+        {"state":{ "desired":{"device":"minnowboard_1","led":0}}}
+      ];
+      var speechOutput="Gateway Operational";
+      AWSIoT.sendMessage(this, LEDState,speechOutput);
+
+    },
+    'DeviceStateIntent': function () {
+
+      var speechOutput;
+      var itemSlot = this.event.request.intent.slots.LEDState;
+      console.log("itemSlot: "+itemSlot);
+      var LED_State="none";
+      if (itemSlot && itemSlot.value) {
+          LED_State = itemSlot.value.toLowerCase();
+      }
+      console.log("LED_State: "+ LED_State);
+      var deviceState=null;
+
+      switch (LED_State) {
+        case "on":
+        led_state = 1;
+        deviceState = [
+        {'state':{ 'desired':{'device':'minnowboard_1','led_state':led_state}}}
+        ];
+        speechOutput="L E D on";
+        console.log('on recieved')
+        break;
+        case "off":
+        led_state = 0;
+        deviceState = [
+        {'state':{ 'desired':{'device':'minnowboard_1','led_state':led_state}}}
+        ];
+        speechOutput="L E D off";
+        break;
+        default:
+        speechOutput="no L E D state";
+        break;
+      }
+      if (deviceState===null) {
+        this.emit(':tell',speechOutput);
+      } else {
+        AWSIoT.sendMessage(this, deviceState, speechOutput);
+        console.log("message sent: ", deviceState )
+      }
+
+
+    },
+    'AMAZON.HelpIntent': function () {
+        this.attributes['speechOutput'] = 'You can ask questions such as, what\'s the L E D state, or, you can say exit... ' +
+            'Now, what can I help you with?';
+        this.attributes['repromptSpeech'] = 'You can say things like, what\'s the L E D state, or you can say exit...' +
+            ' Now, what can I help you with?';
+        this.emit(':ask', this.attributes['speechOutput'], this.attributes['repromptSpeech'])
+    },
+    'AMAZON.RepeatIntent': function () {
+        this.emit(':ask', this.attributes['speechOutput'], this.attributes['repromptSpeech'])
+    },
+    'AMAZON.StopIntent': function () {
+        this.emit('SessionEndedRequest');
+    },
+    'AMAZON.CancelIntent': function () {
+        this.emit('SessionEndedRequest');
+    },
+    'SessionEndedRequest':function () {
+        this.emit(':tell', 'Goodbye!');
+    }
+  };
+
+var AWSIoT = {
+    postSendMessage: function (thisOfParent,speechOutput) {
+      console.log('doot doot, all doot');
+      thisOfParent.emit(':tell', speechOutput);
+    },
+    sendMessage: function (thisOfParent, deviceState, speechOutput) {
+
+      var itemsProcessed = 0;
+
+      deviceState.forEach((item, index, array) => {
+          console.log("item "+index+": "+JSON.stringify(item));
+          console.log("device "+index+": "+item.state.desired.device)
+
+          var thingNameAndPayload= {
+            thingName: 'minnowboard_1',
+            payload: JSON.stringify(item)
+          };
+
+         iotData.updateThingShadow(thingNameAndPayload, function(err, data) {
+            console.log('sent shadow update')
+            if (err) console.log(err, err.stack); // an error occurred
+            else     console.log(data);           // successful response
+
+
+            if (err){
+              console.log("update error: ");
+              console.log(err);
+              //Handle the error here
+              speechOutput += " - Error updating device state: " + err + " ";
+              speechOutput += thingNameAndPayload.thingName + " ";
+              speechOutput += thingNameAndPayload.payload;
+            }
+
+            else {
+              console.log("update success: ");
+              console.log(data);
+            }
+          itemsProcessed++;
+          if(itemsProcessed === array.length) {
+              AWSIoT.postSendMessage(thisOfParent, speechOutput);
+            }
+
+
+          });
+
+        });
+
+    }
+
+  };
diff --git a/meta-alexa-led/recipes-demo/alexa-led/files/main.js b/meta-alexa-led/recipes-demo/alexa-led/files/main.js
new file mode 100755
index 0000000..6224890
--- /dev/null
+++ b/meta-alexa-led/recipes-demo/alexa-led/files/main.js
@@ -0,0 +1,89 @@
+"use strict" ;
+
+var APP_NAME = "Alexa Demo" ;
+console.log("Initializing " + APP_NAME) ;
+
+
+var fs = require ('fs');
+if (!fs.existsSync('/sys/class/gpio/gpio360/value')) {
+	fs.writeFile('/sys/class/gpio/export', 360, (err) => {
+		if (err) console.log('Error - couldnt export gpio 360');
+	});
+}
+fs.writeFile('/sys/class/gpio/gpio360/direction', 'out', (err) => {
+	if (err) console.log('Error - couldnt set gpio direction');
+});
+
+fs.writeFile('/sys/class/gpio/gpio360/value', '0', (err) => {
+	if (err) console.log('Error - couldnt set gpio value');
+}); 
+
+console.log("GPIO initialized...");
+
+const deviceModule = require('aws-iot-device-sdk').device;
+
+console.log("Device module found...");
+
+function connectAWS() {
+
+   const device = deviceModule({
+      keyPath: "/connect_device_package/Minnowboard.private.key", //Make sure these paths match your certifacte locations 
+      certPath: "/connect_device_package/Minnowboard.cert.pem",
+      caPath: "/connect_device_package/root-CA.crt",
+      host: "a22iwj71w43omu.iot.us-east-2.amazonaws.com", //Replace with your endpoint from AWS IoT Device Dashboard
+   });
+      console.log("deviceModule initialized...");
+
+      device.subscribe('$aws/things/minnowboard_1/shadow/update/accepted');
+      device.publish('topic_1', 'hello from Minnowboard')
+      console.log("Publish and subscribe started...");
+
+device
+      .on('connect', function() {
+         console.log('connect');
+      });
+   device
+      .on('close', function() {
+         console.log('close');
+      });
+   device
+      .on('reconnect', function() {
+         console.log('reconnect');
+      });
+   device
+      .on('offline', function() {
+         console.log('offline');
+      });
+   device
+      .on('error', function(error) {
+         console.log('error', error);
+      });
+   device
+      .on('message', function(topic, payload) {
+         console.log('message', topic, payload.toString());
+         updateState(payload)
+      });
+
+      console.log("Device callbacks set...");
+}
+
+
+//globals:
+var led_state = 0;
+var shadow = null;
+
+function updateState(payload){
+   var pay_json=JSON.parse(payload.toString())
+   led_state = 1 - pay_json.state.desired.led_state; // Invert state since on/off are 0/1
+
+   console.log("Setting gpio 360 (LED) to " + led_state);
+
+   fs.writeFile('/sys/class/gpio/gpio360/value', led_state, (err) => {
+      if (err) console.log('Error - couldnt set gpio value');
+}); 
+
+};
+
+
+connectAWS();
+
-- 
2.7.4


