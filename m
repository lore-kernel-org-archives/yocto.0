Return-Path: <philippe.coval@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 557B5E00A48; Wed, 14 Sep 2016 07:15:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from s-opensource.com
	(ec2-52-27-115-49.us-west-2.compute.amazonaws.com [52.27.115.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 484F2E00A1A
	for <yocto@yoctoproject.org>; Wed, 14 Sep 2016 07:15:12 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by s-opensource.com (Postfix) with ESMTP id 3EB60A0E77;
	Wed, 14 Sep 2016 14:09:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osg.samsung.com
Received: from s-opensource.com ([127.0.0.1])
	by localhost (s-opensource.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 50E1suDWqtX0; Wed, 14 Sep 2016 14:09:40 +0000 (UTC)
Received: from WSF-1127.8.8.8.8 (unknown [82.236.136.171])
	by s-opensource.com (Postfix) with ESMTPSA id DF17DA0DFA;
	Wed, 14 Sep 2016 14:09:38 +0000 (UTC)
From: Philippe Coval <philippe.coval@osg.samsung.com>
To: kishen.maloor@intel.com
Date: Wed, 14 Sep 2016 16:09:19 +0200
Message-Id: <1473862161-4121-1-git-send-email-philippe.coval@osg.samsung.com>
X-Mailer: git-send-email 1.9.1
Cc: iotivity-dev@lists.iotivity.org, yocto@yoctoproject.org,
	Philippe Coval <philippe.coval@osg.samsung.com>
Subject: [meta-oic][PATCH 1/3] iotivity-simple-client: Use regular LDFLAGS variable
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

This has been tested with iotivity-1.1.1
 but also applies to earlier versions.

Without this, QA check is failing and this message is reported:

  do_package_qa: QA Issue: No GNU_HASH in the elf binary:
  (...)
  iotivity-simple-client/simpleclient' [ldflags]

Change-Id: Ib77c70331b1aaba193bc32bcd190f939d9456dc4
Bug: https://jira.iotivity.org/browse/IOT-1111
Cc: iotivity-dev@lists.iotivity.org
Cc: yocto@yoctoproject.org
Origin: https://github.com/tizenteam/meta-oic
Signed-off-by: Philippe Coval <philippe.coval@osg.samsung.com>
---
 .../0001-build-Use-LDFLAGS-variable-from-env.patch | 35 ++++++++++++++++++++++
 .../iotivity-simple-client_1.1.0.bb                |  3 +-
 2 files changed, 37 insertions(+), 1 deletion(-)
 create mode 100644 recipes-apps/iotivity-simple-client/files/0001-build-Use-LDFLAGS-variable-from-env.patch

diff --git a/recipes-apps/iotivity-simple-client/files/0001-build-Use-LDFLAGS-variable-from-env.patch b/recipes-apps/iotivity-simple-client/files/0001-build-Use-LDFLAGS-variable-from-env.patch
new file mode 100644
index 0000000..e121ddd
--- /dev/null
+++ b/recipes-apps/iotivity-simple-client/files/0001-build-Use-LDFLAGS-variable-from-env.patch
@@ -0,0 +1,35 @@
+From c513e8e44345d7fff2a38ef5ddb108d513a40ae7 Mon Sep 17 00:00:00 2001
+From: Philippe Coval <philippe.coval@osg.samsung.com>
+Date: Tue, 13 Sep 2016 17:14:03 +0200
+Subject: [PATCH] build: Use LDFLAGS variable from env
+
+Without this, QA check is failing and this message is reported:
+
+  do_package_qa: QA Issue: No GNU_HASH in the elf binary:
+  (...)
+  'iotivity-simple-client/simpleclient' [ldflags]
+
+Change-Id: Id22e5358f75b46861cf0dfb7b2af267dbe7d7014
+Bug: https://jira.iotivity.org/browse/IOT-1111
+Origin: https://github.com/TizenTeam/meta-oic
+Signed-off-by: Philippe Coval <philippe.coval@osg.samsung.com>
+---
+ Makefile | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/Makefile b/Makefile
+index 9323169..2389f43 100644
+--- a/Makefile
++++ b/Makefile
+@@ -12,7 +12,7 @@ endif
+ 	$(CXX) -std=c++0x -c -o $@ $< $(YOCTOCXXFLAGS)
+ 
+ simpleclient: simpleclient.o
+-	$(CXX) -o simpleclient simpleclient.o $(YOCTOLDFLAGS)
++	$(CXX) -o $@ $^ $(LDFLAGS) $(YOCTOLDFLAGS)
+ 
+ clean:
+ 	rm -rf simpleclient *.o
+-- 
+1.9.1
+
diff --git a/recipes-apps/iotivity-simple-client/iotivity-simple-client_1.1.0.bb b/recipes-apps/iotivity-simple-client/iotivity-simple-client_1.1.0.bb
index a01f58e..caf02f8 100644
--- a/recipes-apps/iotivity-simple-client/iotivity-simple-client_1.1.0.bb
+++ b/recipes-apps/iotivity-simple-client/iotivity-simple-client_1.1.0.bb
@@ -7,7 +7,8 @@ LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://simpleclient.cpp;beginline=1;endline=19;md5=fc5a615cf1dc3880967127bc853b3e0c"
 
 SRC_URI = "file://iotivity-simple-client.tar.bz2 \
-          "
+        file://0001-build-Use-LDFLAGS-variable-from-env.patch \
+        "
 
 S = "${WORKDIR}/iotivity-simple-client"
 
-- 
1.9.1


