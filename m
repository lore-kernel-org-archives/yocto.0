Return-Path: <philippe.coval@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 607A7E0049F; Tue,  3 Jan 2017 08:32:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC,
	SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from osg.samsung.com
	(ec2-52-27-115-49.us-west-2.compute.amazonaws.com [52.27.115.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48D0DE0043F
	for <yocto@yoctoproject.org>; Tue,  3 Jan 2017 08:32:02 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by osg.samsung.com (Postfix) with ESMTP id AA65AA13E7;
	Tue,  3 Jan 2017 16:32:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osg.samsung.com
Received: from osg.samsung.com ([127.0.0.1])
	by localhost (s-opensource.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id jKlyYZPFyV6e; Tue,  3 Jan 2017 16:32:14 +0000 (UTC)
Received: from WSF-1127.8.8.8.8 (unknown [82.236.136.171])
	by osg.samsung.com (Postfix) with ESMTPSA id 4E18AA1352;
	Tue,  3 Jan 2017 16:32:12 +0000 (UTC)
From: Philippe Coval <philippe.coval@osg.samsung.com>
To: kishen.maloor@intel.com
Date: Tue,  3 Jan 2017 17:31:35 +0100
Message-Id: <1483461097-2615-1-git-send-email-philippe.coval@osg.samsung.com>
X-Mailer: git-send-email 1.9.1
Cc: iotivity-dev@lists.iotivity.org, yocto@yoctoproject.org,
	Philippe Coval <philippe.coval@osg.samsung.com>
Subject: [meta-oic][PATCH 1/3] meta-oic: Hotfix to support aarch64 for DragonBoard-410c
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
X-List-Received-Date: Tue, 03 Jan 2017 16:32:07 -0000

Apply patch from iotivity-1.2.1:

* [PATCH 081/341] yocto: Add aarch64 for DragonBoard-410c

Bug-AGL: SPEC-158
Change-Id: I06f56ae860760002a6376866488e1f55624f50cc
Origin: https://gerrit.automotivelinux.org/gerrit/#/c/7981/
Signed-off-by: Philippe Coval <philippe.coval@osg.samsung.com>
---
 ...81-yocto-Add-aarch64-for-DragonBoard-410c.patch | 48 ++++++++++++++++++++++
 recipes-core/iotivity/iotivity_1.2.0.bb            |  1 +
 2 files changed, 49 insertions(+)
 create mode 100644 recipes-core/iotivity/files/0081-yocto-Add-aarch64-for-DragonBoard-410c.patch

diff --git a/recipes-core/iotivity/files/0081-yocto-Add-aarch64-for-DragonBoard-410c.patch b/recipes-core/iotivity/files/0081-yocto-Add-aarch64-for-DragonBoard-410c.patch
new file mode 100644
index 0000000..08c93f6
--- /dev/null
+++ b/recipes-core/iotivity/files/0081-yocto-Add-aarch64-for-DragonBoard-410c.patch
@@ -0,0 +1,48 @@
+From 6554de025f4819f9f458cde70d706beab3ed11b8 Mon Sep 17 00:00:00 2001
+From: Philippe Coval <philippe.coval@osg.samsung.com>
+Date: Thu, 10 Nov 2016 12:47:39 +0100
+Subject: [PATCH 081/341] yocto: Add aarch64 for DragonBoard-410c
+
+Backported to 1.1-rel branch
+
+Change-Id: I0ebf93ca17a9a6624da3caaaf7487529b2c556d6
+Credit-to: Kotaro HASHIMOTO <Hashimoto.Kotaro@ds.MitsubishiElectric.co.jp>
+Origin: https://lists.linuxfoundation.org/pipermail/automotive-discussions/2016-November/002805.html
+Signed-off-by: Philippe Coval <philippe.coval@osg.samsung.com>
+Reviewed-on: https://gerrit.iotivity.org/gerrit/14187
+Tested-by: jenkins-iotivity <jenkins-iotivity@opendaylight.org>
+Reviewed-by: Habib Virji <habib.virji@samsung.com>
+---
+ build_common/SConscript                     | 2 +-
+ resource/csdk/connectivity/build/SConscript | 2 +-
+ 2 files changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/build_common/SConscript b/build_common/SConscript
+index 1427f08..56ea713 100644
+--- a/build_common/SConscript
++++ b/build_common/SConscript
+@@ -26,7 +26,7 @@ os_arch_map = {
+ 		'darwin': ['i386', 'x86_64'],
+ 		'ios': ['i386', 'x86_64', 'armv7', 'armv7s', 'arm64'],
+ 		'arduino': ['avr', 'arm'],
+-		'yocto': ['i586', 'i686', 'x86_64', 'arm', 'powerpc', 'powerpc64', 'mips', 'mipsel'],
++		'yocto': ['i586', 'i686', 'x86_64', 'arm', 'aarch64', 'powerpc', 'powerpc64', 'mips', 'mipsel'],
+ 		}
+ 
+ host = platform.system().lower()
+diff --git a/resource/csdk/connectivity/build/SConscript b/resource/csdk/connectivity/build/SConscript
+index b812fed..44c7d09 100644
+--- a/resource/csdk/connectivity/build/SConscript
++++ b/resource/csdk/connectivity/build/SConscript
+@@ -21,7 +21,7 @@ os_arch_map = {
+ 		'darwin': ['i386', 'x86_64'],
+ 		'ios': ['i386', 'x86_64', 'armv7', 'armv7s', 'arm64'],
+ 		'arduino': ['avr', 'arm'],
+-                'yocto': ['i586', 'i686', 'x86_64', 'arm', 'powerpc', 'powerpc64', 'mips', 'mipsel'],
++                'yocto': ['i586', 'i686', 'x86_64', 'arm', 'aarch64', 'powerpc', 'powerpc64', 'mips', 'mipsel'],
+ 		}
+ 
+ host = platform.system().lower()
+-- 
+1.9.1
+
diff --git a/recipes-core/iotivity/iotivity_1.2.0.bb b/recipes-core/iotivity/iotivity_1.2.0.bb
index dfae54b..60a2b56 100644
--- a/recipes-core/iotivity/iotivity_1.2.0.bb
+++ b/recipes-core/iotivity/iotivity_1.2.0.bb
@@ -10,6 +10,7 @@ LIC_FILES_CHKSUM = "file://LICENSE.md;md5=22bf216f3077c279aed7b36b1fa9e6d1"
 branch_iotivity = "1.2-rel"
 SRCREV = "1a2e71f9c470c7cc17157f83deb4488ee83050a4"
 SRC_URI = "git://github.com/iotivity/iotivity.git;destsuffix=${S};branch=${branch_iotivity};protocol=http;"
+SRC_URI += "file://0081-yocto-Add-aarch64-for-DragonBoard-410c.patch"
 
 url_tinycbor = "git://github.com/01org/tinycbor.git"
 SRCREV_tinycbor = "31c7f81d45d115d2007b1c881cbbd3a19618465c"
-- 
1.9.1


