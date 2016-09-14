Return-Path: <philippe.coval@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5621CE00A44; Wed, 14 Sep 2016 07:15:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
X-Greylist: delayed 334 seconds by postgrey-1.32 at yocto-www;
	Wed, 14 Sep 2016 07:15:12 PDT
Received: from s-opensource.com
	(ec2-52-27-115-49.us-west-2.compute.amazonaws.com [52.27.115.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47610E00A16
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2016 07:15:12 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by s-opensource.com (Postfix) with ESMTP id 71000A0E78;
	Wed, 14 Sep 2016 14:10:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osg.samsung.com
Received: from s-opensource.com ([127.0.0.1])
	by localhost (s-opensource.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 3sgi9H_AQIJ0; Wed, 14 Sep 2016 14:09:57 +0000 (UTC)
Received: from WSF-1127.8.8.8.8 (unknown [82.236.136.171])
	by s-opensource.com (Postfix) with ESMTPSA id A5438A0DFA;
	Wed, 14 Sep 2016 14:09:55 +0000 (UTC)
From: Philippe Coval <philippe.coval@osg.samsung.com>
To: kishen.maloor@intel.com
Date: Wed, 14 Sep 2016 16:09:20 +0200
Message-Id: <1473862161-4121-2-git-send-email-philippe.coval@osg.samsung.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1473862161-4121-1-git-send-email-philippe.coval@osg.samsung.com>
References: <1473862161-4121-1-git-send-email-philippe.coval@osg.samsung.com>
Cc: iotivity-dev@lists.iotivity.org, yocto@yoctoproject.org,
	Philippe Coval <philippe.coval@osg.samsung.com>
Subject: [meta-oic][PATCH 2/3] iotivity-sensorboard: Use regular LDFLAGS variable and pthread
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
X-List-Received-Date: Wed, 14 Sep 2016 14:15:16 -0000

Without this change and error on linkage is displayed :

  ld: observer.o: undefined reference to symbol 'pthread_create@@GLIBC_2.2.5'
  libpthread.so.0: error adding symbols: DSO missing from command line
  collect2: error: ld returned 1 exit status

Also YOCTOLDFLAGS are replaced with regular LDFLAGS,
 to use quality check.

Without this, QA check is failing and this message is reported:

  do_package_qa: QA Issue: No GNU_HASH in the elf binary:

Change-Id: I80e4ab17128b8539a45843611e4aec3650e2ddef
Bug: https://jira.iotivity.org/browse/IOT-1111
Cc: iotivity-dev@lists.iotivity.org
Cc: yocto@yoctoproject.org
Origin: https://github.com/tizenteam/meta-oic
Signed-off-by: Philippe Coval <philippe.coval@osg.samsung.com>
---
 ...DFLAGS-variable-from-env-and-add-pthread-.patch | 50 ++++++++++++++++++++++
 .../iotivity-sensorboard_1.0.0.bb                  |  1 +
 2 files changed, 51 insertions(+)
 create mode 100644 recipes-apps/iotivity-sensorboard/files/0001-Build-Use-LDFLAGS-variable-from-env-and-add-pthread-.patch

diff --git a/recipes-apps/iotivity-sensorboard/files/0001-Build-Use-LDFLAGS-variable-from-env-and-add-pthread-.patch b/recipes-apps/iotivity-sensorboard/files/0001-Build-Use-LDFLAGS-variable-from-env-and-add-pthread-.patch
new file mode 100644
index 0000000..cb3b16d
--- /dev/null
+++ b/recipes-apps/iotivity-sensorboard/files/0001-Build-Use-LDFLAGS-variable-from-env-and-add-pthread-.patch
@@ -0,0 +1,50 @@
+From c6fc833f4ce28c2a811fa1077f5e0975eadc4a23 Mon Sep 17 00:00:00 2001
+From: Philippe Coval <philippe.coval@osg.samsung.com>
+Date: Tue, 13 Sep 2016 18:14:07 +0200
+Subject: [PATCH] Build: Use LDFLAGS variable from env and add -pthread flag
+
+Without this change and error on linkage is displayed :
+
+  ld: observer.o: undefined reference to symbol 'pthread_create@@GLIBC_2.2.5'
+  libpthread.so.0: error adding symbols: DSO missing from command line
+  collect2: error: ld returned 1 exit status
+
+Also YOCTOLDFLAGS are replaced with regular LDFLAGS,
+to use quality check.
+
+Without this, QA check is failing and this message is reported:
+
+  do_package_qa: QA Issue: No GNU_HASH in the elf binary:
+
+Change-Id: I2f73b1c09908be38a9053943a894832519312751
+Bug: https://jira.iotivity.org/browse/IOT-1111
+Origin: https://github.com/TizenTeam/meta-oic
+Signed-off-by: Philippe Coval <philippe.coval@osg.samsung.com>
+---
+ Makefile | 3 ++-
+ 1 file changed, 2 insertions(+), 1 deletion(-)
+
+diff --git a/Makefile b/Makefile
+index e78b777..5d09cc1 100644
+--- a/Makefile
++++ b/Makefile
+@@ -1,6 +1,7 @@
+ YOCTOCXXFLAGS=-I$(PKG_CONFIG_SYSROOT_DIR)/usr/include/iotivity/resource/ -I$(PKG_CONFIG_SYSROOT_DIR)/usr/include/iotivity/resource/stack -I$(PKG_CONFIG_SYSROOT_DIR)/usr/include/iotivity/resource/ocrandom -I$(PKG_CONFIG_SYSROOT_DIR)/usr/include/iotivity/resource/logger -I$(PKG_CONFIG_SYSROOT_DIR)/usr/include/iotivity/resource/oc_logger
+ 
+ YOCTOLDFLAGS=-loc -loctbstack -loc_logger -lmraa
++YOCTOLDFLAGS+=-pthread
+ 
+ all: sensorboard
+ 
+@@ -12,7 +13,7 @@ endif
+ 	$(CXX) -std=c++0x -c -o $@ $< $(YOCTOCXXFLAGS)
+ 
+ sensorboard: server.o observer.o
+-	$(CXX) -o sensorboard server.o observer.o $(YOCTOLDFLAGS)
++	$(CXX) -o $@ $^ $(LDFLAGS) $(YOCTOLDFLAGS)
+ 
+ clean:
+ 	rm -rf sensorboard *.o
+-- 
+1.9.1
+
diff --git a/recipes-apps/iotivity-sensorboard/iotivity-sensorboard_1.0.0.bb b/recipes-apps/iotivity-sensorboard/iotivity-sensorboard_1.0.0.bb
index 71518bd..828c81e 100644
--- a/recipes-apps/iotivity-sensorboard/iotivity-sensorboard_1.0.0.bb
+++ b/recipes-apps/iotivity-sensorboard/iotivity-sensorboard_1.0.0.bb
@@ -7,6 +7,7 @@ LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://server.cpp;beginline=1;endline=19;md5=a692dd0c72bcfa341a4ba826b37caf15"
 
 SRC_URI = "file://iotivity-sensorboard.tar.gz \
+        file://0001-Build-Use-LDFLAGS-variable-from-env-and-add-pthread-.patch \
           "
 
 S = "${WORKDIR}/iotivity-sensorboard"
-- 
1.9.1


