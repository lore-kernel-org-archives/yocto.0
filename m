Return-Path: <philippe.coval@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3959E00CE6; Sat,  9 Sep 2017 23:40:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC,
	SPF_HELO_PASS,TVD_SPACE_RATIO autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from osg.samsung.com
	(ec2-52-27-115-49.us-west-2.compute.amazonaws.com [52.27.115.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3C5CE00C77
	for <yocto@yoctoproject.org>; Sat,  9 Sep 2017 23:40:43 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by osg.samsung.com (Postfix) with ESMTP id 1CA16A0D54;
	Sun, 10 Sep 2017 06:41:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osg.samsung.com
Received: from osg.samsung.com ([127.0.0.1])
	by localhost (s-opensource.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 8IClOSuyiwOg; Sun, 10 Sep 2017 06:41:10 +0000 (UTC)
Received: from WSF-1127.8.8.8.8 (unknown [82.236.136.171])
	by osg.samsung.com (Postfix) with ESMTPSA id 13A23A0D4E;
	Sun, 10 Sep 2017 06:41:08 +0000 (UTC)
From: Philippe Coval <philippe.coval@osg.samsung.com>
To: kishen.maloor@intel.com
Date: Sun, 10 Sep 2017 08:40:19 +0200
Message-Id: <1505025620-31613-2-git-send-email-philippe.coval@osg.samsung.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1505025620-31613-1-git-send-email-philippe.coval@osg.samsung.com>
References: <1505025620-31613-1-git-send-email-philippe.coval@osg.samsung.com>
Cc: iotivity-dev@lists.iotivity.org, yocto@yoctoproject.org,
	Philippe Coval <philippe.coval@osg.samsung.com>
Subject: [meta-oic][PATCH 2/3] iotivity-simple-client: Support pkg-config
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
X-List-Received-Date: Sun, 10 Sep 2017 06:40:44 -0000

Since IoTivity-1.3.0

Signed-off-by: Philippe Coval <philippe.coval@osg.samsung.com>
---
 .../files/0002-build-Use-pkg-config.patch          | 43 ++++++++++++++++++++++
 .../iotivity-simple-client_1.1.0.bb                |  8 +++-
 2 files changed, 50 insertions(+), 1 deletion(-)
 create mode 100644 recipes-apps/iotivity-simple-client/files/0002-build-Use-pkg-config.patch

diff --git a/recipes-apps/iotivity-simple-client/files/0002-build-Use-pkg-config.patch b/recipes-apps/iotivity-simple-client/files/0002-build-Use-pkg-config.patch
new file mode 100644
index 0000000..026f68f
--- /dev/null
+++ b/recipes-apps/iotivity-simple-client/files/0002-build-Use-pkg-config.patch
@@ -0,0 +1,43 @@
+From 0a1f2273605ce775aede46ab3ec31bd73814f8b2 Mon Sep 17 00:00:00 2001
+From: Philippe Coval <philippe.coval@osg.samsung.com>
+Date: Tue, 6 Jun 2017 17:14:39 +0200
+Subject: [PATCH 2/2] build: Use pkg-config
+
+
+Bug: https://jira.iotivity.org/browse/IOT-1111
+Origin: https://github.com/TizenTeam/meta-oic
+Signed-off-by: Philippe Coval <philippe.coval@osg.samsung.com>
+---
+ Makefile | 17 ++++-------------
+ 1 file changed, 4 insertions(+), 13 deletions(-)
+
+diff --git a/Makefile b/Makefile
+index 2389f43..ac34940 100644
+--- a/Makefile
++++ b/Makefile
+@@ -1,18 +1,9 @@
+-YOCTOCXXFLAGS=-I$(PKG_CONFIG_SYSROOT_DIR)/usr/include/iotivity/resource/ -I$(PKG_CONFIG_SYSROOT_DIR)/usr/include/iotivity/resource/stack -I$(PKG_CONFIG_SYSROOT_DIR)/usr/include/iotivity/resource/ocrandom -I$(PKG_CONFIG_SYSROOT_DIR)/usr/include/iotivity/resource/logger -I$(PKG_CONFIG_SYSROOT_DIR)/usr/include/iotivity/resource/oc_logger
+-
+-YOCTOLDFLAGS=-loc -loctbstack -loc_logger 
++PKG_CONFIG?=pkg-config
++override CPPFLAGS+=$(shell ${PKG_CONFIG} iotivity --cflags)
++override LDLIBS+=$(shell ${PKG_CONFIG} iotivity --libs)
++override CXXFLAGS+=-std=c++0x
+ 
+ all: simpleclient
+ 
+-simpleclient.o: simpleclient.cpp
+-ifeq ($(PKG_CONFIG_SYSROOT_DIR),)
+-	echo "Error: Yocto cross-toolchain environment not initialized"
+-	exit 1 
+-endif
+-	$(CXX) -std=c++0x -c -o $@ $< $(YOCTOCXXFLAGS)
+-
+-simpleclient: simpleclient.o
+-	$(CXX) -o $@ $^ $(LDFLAGS) $(YOCTOLDFLAGS)
+-
+ clean:
+ 	rm -rf simpleclient *.o
+-- 
+1.9.1
+
diff --git a/recipes-apps/iotivity-simple-client/iotivity-simple-client_1.1.0.bb b/recipes-apps/iotivity-simple-client/iotivity-simple-client_1.1.0.bb
index caf02f8..ea3bd64 100644
--- a/recipes-apps/iotivity-simple-client/iotivity-simple-client_1.1.0.bb
+++ b/recipes-apps/iotivity-simple-client/iotivity-simple-client_1.1.0.bb
@@ -1,3 +1,6 @@
+#TODO
+PR = "r1" 
+
 SUMMARY = "Iotivity Simple Client"
 DESCRIPTION = "Iotivity Simple Client example which talks to the Simple Server example."
 HOMEPAGE = "https://www.iotivity.org/"
@@ -8,17 +11,20 @@ LIC_FILES_CHKSUM = "file://simpleclient.cpp;beginline=1;endline=19;md5=fc5a615cf
 
 SRC_URI = "file://iotivity-simple-client.tar.bz2 \
         file://0001-build-Use-LDFLAGS-variable-from-env.patch \
+        file://0002-build-Use-pkg-config.patch \
         "
 
 S = "${WORKDIR}/iotivity-simple-client"
 
 IOTIVITY_BIN_DIR = "/opt/iotivity"
 IOTIVITY_BIN_DIR_D = "${D}${IOTIVITY_BIN_DIR}"
+inherit pkgconfig
 
 do_install() {
     install -d ${IOTIVITY_BIN_DIR_D}/apps/iotivity-simple-client
     install -c -m 555 ${S}/simpleclient ${IOTIVITY_BIN_DIR_D}/apps/iotivity-simple-client
     install -c -m 444 ${S}/oic_svr_db_client.dat ${IOTIVITY_BIN_DIR_D}/apps/iotivity-simple-client
+    rm -rf ${D}/usr/src/debug/${PN}
 }
 
 FILES_${PN} = "${IOTIVITY_BIN_DIR}/apps/iotivity-simple-client/simpleclient \
@@ -26,4 +32,4 @@ FILES_${PN} = "${IOTIVITY_BIN_DIR}/apps/iotivity-simple-client/simpleclient \
 FILES_${PN}-dbg = "${IOTIVITY_BIN_DIR}/apps/iotivity-simple-client/.debug"
 RDEPENDS_${PN} += "iotivity-resource"
 BBCLASSEXTEND = "native nativesdk"
-
+PACKAGE_DEBUG_SPLIT_STYLE = "debug-without-src"
-- 
1.9.1


