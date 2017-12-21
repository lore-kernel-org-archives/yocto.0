Return-Path: <philippe.coval@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8AEF7E00D97; Thu, 21 Dec 2017 04:08:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from osg.samsung.com (osg.samsung.com [64.30.133.232])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43787E00CE8
	for <yocto@yoctoproject.org>; Thu, 21 Dec 2017 04:08:16 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by osg.samsung.com (Postfix) with ESMTP id B798618806;
	Thu, 21 Dec 2017 04:02:56 -0800 (PST)
X-Virus-Scanned: Debian amavisd-new at dev.s-opensource.com
Received: from osg.samsung.com ([127.0.0.1])
	by localhost (localhost [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J7IYS2Z7LRfp; Thu, 21 Dec 2017 04:02:46 -0800 (PST)
Received: from WSF-1127.8.8.8.8 (unknown [82.236.136.171])
	by osg.samsung.com (Postfix) with ESMTPSA id BE84C187BB;
	Thu, 21 Dec 2017 04:02:28 -0800 (PST)
From: Philippe Coval <philippe.coval@osg.samsung.com>
To: kishen.maloor@intel.com
Date: Thu, 21 Dec 2017 13:02:17 +0100
Message-Id: <1513857738-29097-4-git-send-email-philippe.coval@osg.samsung.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1513857738-29097-1-git-send-email-philippe.coval@osg.samsung.com>
References: <1513857738-29097-1-git-send-email-philippe.coval@osg.samsung.com>
Cc: iotivity-dev@lists.iotivity.org, yocto@yoctoproject.org,
	Philippe Coval <philippe.coval@osg.samsung.com>
Subject: [meta-oic][PATCH 4/5] iotivity-sensorboard: Support pkg-config
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
X-List-Received-Date: Thu, 21 Dec 2017 12:08:19 -0000

Since IoTivity-1.3.0

Signed-off-by: Philippe Coval <philippe.coval@osg.samsung.com>
---
 .../files/0003-server-Port-to-iotivity-1.2.0.patch | 68 ++++++++++++++++++++++
 .../files/0004-build-Use-pkg-config.patch          | 48 +++++++++++++++
 .../iotivity-sensorboard_1.0.0.bb                  | 11 ++++
 3 files changed, 127 insertions(+)
 create mode 100644 recipes-apps/iotivity-sensorboard/files/0003-server-Port-to-iotivity-1.2.0.patch
 create mode 100644 recipes-apps/iotivity-sensorboard/files/0004-build-Use-pkg-config.patch

diff --git a/recipes-apps/iotivity-sensorboard/files/0003-server-Port-to-iotivity-1.2.0.patch b/recipes-apps/iotivity-sensorboard/files/0003-server-Port-to-iotivity-1.2.0.patch
new file mode 100644
index 0000000..6f59e6a
--- /dev/null
+++ b/recipes-apps/iotivity-sensorboard/files/0003-server-Port-to-iotivity-1.2.0.patch
@@ -0,0 +1,68 @@
+From dcc5e1fd4204f08126ff940232283347b4963b15 Mon Sep 17 00:00:00 2001
+From: Philippe Coval <philippe.coval@osg.samsung.com>
+Date: Thu, 20 Jul 2017 15:33:36 +0200
+Subject: [PATCH 3/4] server: Port to iotivity-1.2.0+
+
+Bug: https://jira.iotivity.org/browse/IOT-1111
+
+Origin: https://github.com/TizenTeam/meta-oic/tree/iotivity-sensorboard/master
+Signed-off-by: Philippe Coval <philippe.coval@osg.samsung.com>
+---
+ server.cpp | 6 ------
+ 1 file changed, 6 deletions(-)
+
+diff --git a/server.cpp b/server.cpp
+index 8308577..5cb3215 100644
+--- a/server.cpp
++++ b/server.cpp
+@@ -107,7 +107,6 @@ void IoTServer::temperatureObserverLoop()
+     usleep(1500000);
+     cout << "Temperature Observer Callback" << endl;
+     shared_ptr<OCResourceResponse> resourceResponse(new OCResourceResponse());
+-    resourceResponse->setErrorCode(200);
+     resourceResponse->setResourceRepresentation(getTemperatureRepresentation(),
+     EDISON_RESOURCE_INTERFACE);
+     OCStackResult result = OCPlatform::notifyListOfObservers(m_temperatureResource,
+@@ -125,7 +124,6 @@ void IoTServer::lightObserverLoop()
+     usleep(1500000);
+     cout << "Light Observer Callback" << endl;
+     shared_ptr<OCResourceResponse> resourceResponse(new OCResourceResponse());
+-    resourceResponse->setErrorCode(200);
+     resourceResponse->setResourceRepresentation(getLightRepresentation(),
+     EDISON_RESOURCE_INTERFACE);
+     OCStackResult result = OCPlatform::notifyListOfObservers(m_ambientLightResource,
+@@ -167,7 +165,6 @@ OCEntityHandlerResult IoTServer::lightEntityHandler(shared_ptr<OCResourceRequest
+                 cout << "GET request for ambient light reading" << endl;
+                 if (Response)
+                 {
+-                    Response->setErrorCode(200);
+                     Response->setResponseResult(OC_EH_OK);
+                     Response->setResourceRepresentation(getLightRepresentation());
+                     if (OCPlatform::sendResponse(Response) == OC_STACK_OK)
+@@ -224,7 +221,6 @@ OCEntityHandlerResult IoTServer::temperatureEntityHandler(shared_ptr<OCResourceR
+                 cout << "GET request for temperature sensor reading" << endl;
+                 if (Response)
+                 {
+-                    Response->setErrorCode(200);
+                     Response->setResponseResult(OC_EH_OK);
+                     Response->setResourceRepresentation(getTemperatureRepresentation());
+                     if (OCPlatform::sendResponse(Response) == OC_STACK_OK)
+@@ -305,7 +301,6 @@ OCEntityHandlerResult IoTServer::LEDEntityHandler(shared_ptr<OCResourceRequest>
+                 putLEDRepresentation();
+                 if (Response)
+                 {
+-                    Response->setErrorCode(200);
+                     Response->setResourceRepresentation(getLEDRepresentation());
+                     Response->setResponseResult(OC_EH_OK);
+                     if (OCPlatform::sendResponse(Response) == OC_STACK_OK)
+@@ -319,7 +314,6 @@ OCEntityHandlerResult IoTServer::LEDEntityHandler(shared_ptr<OCResourceRequest>
+                 cout << "GET request for platform LED" << endl;
+                 if (Response)
+                 {
+-                    Response->setErrorCode(200);
+                     Response->setResourceRepresentation(getLEDRepresentation());
+                     Response->setResponseResult(OC_EH_OK);
+                     if (OCPlatform::sendResponse(Response) == OC_STACK_OK)
+-- 
+1.9.1
+
diff --git a/recipes-apps/iotivity-sensorboard/files/0004-build-Use-pkg-config.patch b/recipes-apps/iotivity-sensorboard/files/0004-build-Use-pkg-config.patch
new file mode 100644
index 0000000..12f9323
--- /dev/null
+++ b/recipes-apps/iotivity-sensorboard/files/0004-build-Use-pkg-config.patch
@@ -0,0 +1,48 @@
+From eace0b8280eda68aacbc396b9fe6756298af81b1 Mon Sep 17 00:00:00 2001
+From: Philippe Coval <philippe.coval@osg.samsung.com>
+Date: Thu, 20 Jul 2017 15:22:56 +0200
+Subject: [PATCH 4/4] build: Use pkg-config
+
+Bug: https://jira.iotivity.org/browse/IOT-1111
+Origin: https://github.com/TizenTeam/meta-oic/tree/iotivity-sensorboard/master
+
+Signed-off-by: Philippe Coval <philippe.coval@osg.samsung.com>
+---
+ Makefile | 17 ++++++++---------
+ 1 file changed, 8 insertions(+), 9 deletions(-)
+
+diff --git a/Makefile b/Makefile
+index 5d09cc1..ab3d632 100644
+--- a/Makefile
++++ b/Makefile
+@@ -1,19 +1,18 @@
+-YOCTOCXXFLAGS=-I$(PKG_CONFIG_SYSROOT_DIR)/usr/include/iotivity/resource/ -I$(PKG_CONFIG_SYSROOT_DIR)/usr/include/iotivity/resource/stack -I$(PKG_CONFIG_SYSROOT_DIR)/usr/include/iotivity/resource/ocrandom -I$(PKG_CONFIG_SYSROOT_DIR)/usr/include/iotivity/resource/logger -I$(PKG_CONFIG_SYSROOT_DIR)/usr/include/iotivity/resource/oc_logger
++PKG_CONFIG?=pkg-config
+ 
+-YOCTOLDFLAGS=-loc -loctbstack -loc_logger -lmraa
+-YOCTOLDFLAGS+=-pthread
++override CXXFLAGS+=$(shell $(PKG_CONFIG) iotivity --cflags)
++override CXXFLAGS+=-std=c++0x
++override LDLIBS+=$(shell $(PKG_CONFIG) iotivity --libs)
++override LDLIBS+=-lmraa
++override LDFLAGS+=-pthread
+ 
+ all: sensorboard
+ 
+ %.o: %.cpp
+-ifeq ($(PKG_CONFIG_SYSROOT_DIR),)
+-	echo "Error: Yocto cross-toolchain environment not initialized"
+-	exit 1 
+-endif
+-	$(CXX) -std=c++0x -c -o $@ $< $(YOCTOCXXFLAGS)
++	$(CXX) $(CXXFLAGS) -c -o $@ $<
+ 
+ sensorboard: server.o observer.o
+-	$(CXX) -o $@ $^ $(LDFLAGS) $(YOCTOLDFLAGS)
++	$(CXX) $(LDFLAGS) $^ $(LDLIBS) -o $@
+ 
+ clean:
+ 	rm -rf sensorboard *.o
+-- 
+1.9.1
+
diff --git a/recipes-apps/iotivity-sensorboard/iotivity-sensorboard_1.0.0.bb b/recipes-apps/iotivity-sensorboard/iotivity-sensorboard_1.0.0.bb
index 828c81e..2c7d0cc 100644
--- a/recipes-apps/iotivity-sensorboard/iotivity-sensorboard_1.0.0.bb
+++ b/recipes-apps/iotivity-sensorboard/iotivity-sensorboard_1.0.0.bb
@@ -1,3 +1,4 @@
+PR = "r1"
 SUMMARY = "Iotivity SensorBoard"
 DESCRIPTION = "Iotivity Server application for Edison which demonstrates Iotivity server capabilities through the integration of an add-on breadboard that hosts temperature, ambient light and LED resources"
 HOMEPAGE = "https://www.iotivity.org/"
@@ -8,13 +9,22 @@ LIC_FILES_CHKSUM = "file://server.cpp;beginline=1;endline=19;md5=a692dd0c72bcfa3
 
 SRC_URI = "file://iotivity-sensorboard.tar.gz \
         file://0001-Build-Use-LDFLAGS-variable-from-env-and-add-pthread-.patch \
+        file://0003-server-Port-to-iotivity-1.2.0.patch \
+        file://0004-build-Use-pkg-config.patch \
           "
+inherit pkgconfig
 
 S = "${WORKDIR}/iotivity-sensorboard"
 
 IOTIVITY_BIN_DIR = "/opt/iotivity"
 IOTIVITY_BIN_DIR_D = "${D}${IOTIVITY_BIN_DIR}"
 
+do_compile_prepend() {
+    export PKG_CONFIG_PATH="${PKG_CONFIG_PATH}"
+    export PKG_CONFIG="PKG_CONFIG_SYSROOT_DIR=\"${PKG_CONFIG_SYSROOT_DIR}\" pkg-config"
+    export LD_FLAGS="${LD_FLAGS}"
+}
+
 do_install() {
     install -d ${IOTIVITY_BIN_DIR_D}/apps/iotivity-sensorboard
     install -c -m 555 ${S}/sensorboard ${IOTIVITY_BIN_DIR_D}/apps/iotivity-sensorboard
@@ -24,3 +34,4 @@ FILES_${PN} = "${IOTIVITY_BIN_DIR}/apps/iotivity-sensorboard/sensorboard"
 FILES_${PN}-dbg = "${IOTIVITY_BIN_DIR}/apps/iotivity-sensorboard/.debug"
 RDEPENDS_${PN} += "iotivity-resource mraa"
 BBCLASSEXTEND = "native nativesdk"
+PACKAGE_DEBUG_SPLIT_STYLE = "debug-without-src"
-- 
1.9.1


