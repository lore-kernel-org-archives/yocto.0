Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8706AE00D0D; Thu, 10 Sep 2015 21:36:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDA69E00B63
	for <yocto@yoctoproject.org>; Thu, 10 Sep 2015 21:36:45 -0700 (PDT)
Received: from c-50-185-54-102.hsd1.ca.comcast.net ([50.185.54.102]
	helo=slag.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1ZaG3J-0008IY-OD; Fri, 11 Sep 2015 04:35:12 +0000
From: Philip Tricca <flihp@twobit.us>
To: Joe_MacDonald@mentor.com
Date: Fri, 11 Sep 2015 04:36:19 +0000
Message-Id: <1441946179-16001-1-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
X-SA-Exim-Connect-IP: 50.185.54.102
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: [PATCH][meta-selinux] net-tools: Rename net-tools bbappend with wildcard for minor version.
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
X-List-Received-Date: Fri, 11 Sep 2015 04:36:46 -0000

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 recipes-extended/net-tools/net-tools_1.%.bbappend     | 11 +++++++++++
 recipes-extended/net-tools/net-tools_1.60-25.bbappend | 11 -----------
 2 files changed, 11 insertions(+), 11 deletions(-)
 create mode 100644 recipes-extended/net-tools/net-tools_1.%.bbappend
 delete mode 100644 recipes-extended/net-tools/net-tools_1.60-25.bbappend

diff --git a/recipes-extended/net-tools/net-tools_1.%.bbappend b/recipes-extended/net-tools/net-tools_1.%.bbappend
new file mode 100644
index 0000000..e99a5bc
--- /dev/null
+++ b/recipes-extended/net-tools/net-tools_1.%.bbappend
@@ -0,0 +1,11 @@
+PR .= ".2"
+
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+SRC_URI += "file://netstat-selinux-support.patch"
+
+inherit selinux
+
+DEPENDS += "${LIBSELINUX}"
+
+EXTRA_OEMAKE += "${@target_selinux(d, 'HAVE_SELINUX=1', 'HAVE_SELINUX=0')}"
diff --git a/recipes-extended/net-tools/net-tools_1.60-25.bbappend b/recipes-extended/net-tools/net-tools_1.60-25.bbappend
deleted file mode 100644
index e99a5bc..0000000
--- a/recipes-extended/net-tools/net-tools_1.60-25.bbappend
+++ /dev/null
@@ -1,11 +0,0 @@
-PR .= ".2"
-
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-SRC_URI += "file://netstat-selinux-support.patch"
-
-inherit selinux
-
-DEPENDS += "${LIBSELINUX}"
-
-EXTRA_OEMAKE += "${@target_selinux(d, 'HAVE_SELINUX=1', 'HAVE_SELINUX=0')}"
-- 
2.1.4


