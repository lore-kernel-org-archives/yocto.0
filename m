Return-Path: <Ovidiu.Panait@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6549DE00DDC; Thu,  9 May 2019 05:55:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FC0CE00D8E
	for <yocto@yoctoproject.org>; Thu,  9 May 2019 05:55:32 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x49CtBGt010649
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 9 May 2019 05:55:22 -0700
Received: from otp-opanait-l1.corp.ad.wrs.com (128.224.124.169) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.439.0; Thu, 9 May 2019 05:55:01 -0700
From: Ovidiu Panait <ovidiu.panait@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 9 May 2019 15:53:40 +0300
Message-ID: <20190509125341.11345-1-ovidiu.panait@windriver.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Subject: [meta-anaconda][PATCH 1/2] python3-anaconda: Fix xserver detection
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
X-List-Received-Date: Thu, 09 May 2019 12:55:36 -0000
Content-Type: text/plain

When installing an image that has graphical interface,
/etc/systemd/system/default.target will point to multi-user.target
instead of graphical.target.

To fix this, use the right rpm query to detect the presence of xserver.

Signed-off-by: Ovidiu Panait <ovidiu.panait@windriver.com>
---
 ...aconda-payload-Fix-xserver-detection.patch | 35 +++++++++++++++++++
 .../anaconda/python3-anaconda_28.22.11.bb     |  1 +
 2 files changed, 36 insertions(+)
 create mode 100644 recipes-installer/anaconda/files/0001-pyanaconda-payload-Fix-xserver-detection.patch

diff --git a/recipes-installer/anaconda/files/0001-pyanaconda-payload-Fix-xserver-detection.patch b/recipes-installer/anaconda/files/0001-pyanaconda-payload-Fix-xserver-detection.patch
new file mode 100644
index 0000000..ae56019
--- /dev/null
+++ b/recipes-installer/anaconda/files/0001-pyanaconda-payload-Fix-xserver-detection.patch
@@ -0,0 +1,35 @@
+From f35925543f8b19c7b39cef4679cc0bc74bfa5253 Mon Sep 17 00:00:00 2001
+From: Ovidiu Panait <ovidiu.panait@windriver.com>
+Date: Thu, 9 May 2019 09:04:44 +0000
+Subject: [PATCH] pyanaconda: payload: Fix xserver detection
+
+When installing an image that has graphical interface,
+/etc/systemd/system/default.target will point to multi-user.target
+instead of graphical.target.
+
+To fix this, use the right rpm query to detect the presence of xserver.
+
+Upstream-Status: Inappropriate [OE specific]
+
+Signed-off-by: Ovidiu Panait <ovidiu.panait@windriver.com>
+---
+ pyanaconda/payload/__init__.py | 3 +--
+ 1 file changed, 1 insertion(+), 2 deletions(-)
+
+diff --git a/pyanaconda/payload/__init__.py b/pyanaconda/payload/__init__.py
+index f67a4cd94..7929407e7 100644
+--- a/pyanaconda/payload/__init__.py
++++ b/pyanaconda/payload/__init__.py
+@@ -897,8 +897,7 @@ class Payload(object):
+             ts = rpm.TransactionSet(util.getSysroot())
+ 
+             # XXX one day this might need to account for anaconda's display mode
+-            if ts.dbMatch("provides", 'service(graphical-login)').count() and \
+-               ts.dbMatch('provides', 'xorg-x11-server-Xorg').count() and \
++            if ts.dbMatch('provides', 'xserver-xorg').count() and \
+                not flags.usevnc:
+                 # We only manipulate the ksdata.  The symlink is made later
+                 # during the config write out.
+-- 
+2.18.1
+
diff --git a/recipes-installer/anaconda/python3-anaconda_28.22.11.bb b/recipes-installer/anaconda/python3-anaconda_28.22.11.bb
index 66bbc1c..5deeae4 100755
--- a/recipes-installer/anaconda/python3-anaconda_28.22.11.bb
+++ b/recipes-installer/anaconda/python3-anaconda_28.22.11.bb
@@ -119,6 +119,7 @@ SRC_URI = "git://github.com/rhinstaller/anaconda;protocol=https;branch=f28-relea
            file://0001-Make-pyanaconda.dbus.typing-work-with-Python-3.7-159.patch \
            file://0068-disable-chronyd.patch \
            file://0069-disable-location-detection-based-on-IP-address.patch \
+           file://0001-pyanaconda-payload-Fix-xserver-detection.patch \
           "
 
 SRCREV = "0b0d2f86b4323e6ee7a186bc8181ffe7553c9235"
-- 
2.20.1


