Return-Path: <flihp@twobit.us>
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E039CE006EE
	for <yocto@yoctoproject.org>; Thu,  6 Feb 2014 19:07:45 -0800 (PST)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=localhost)
	by smtp.twobit.us with esmtpsa (TLS1.2:DHE_RSA_AES_128_CBC_SHA1:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1WBbkr-0008Ms-FC; Fri, 07 Feb 2014 03:05:47 +0000
Received: from flihp by localhost with local (Exim 4.80)
	(envelope-from <flihp@longhaul.twobit.us>)
	id 1WBboX-00080i-Kf; Fri, 07 Feb 2014 03:09:13 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Fri,  7 Feb 2014 03:09:13 +0000
Message-Id: <1391742553-30745-5-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1391742553-30745-1-git-send-email-flihp@twobit.us>
References: <1391742553-30745-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on smtp.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCH 4/4] libxcb: Use wildcard for version number in libxcb bbappend.
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
X-List-Received-Date: Fri, 07 Feb 2014 03:07:46 -0000


Signed-off-by: Philip Tricca <flihp@twobit.us>

 create mode 100644 recipes-graphics/xcb/libxcb_%.bbappend
 delete mode 100644 recipes-graphics/xcb/libxcb_1.9.3.bbappend

diff --git a/recipes-graphics/xcb/libxcb_%.bbappend b/recipes-graphics/xcb/libxcb_%.bbappend
new file mode 100644
index 0000000..f1bd5a8
--- /dev/null
+++ b/recipes-graphics/xcb/libxcb_%.bbappend
@@ -0,0 +1,8 @@
+PR .= ".1"
+
+inherit enable-selinux
+# libxcb-xselinux will not build with libselinux, so remove the depend
+PACKAGECONFIG[selinux] = "--enable-selinux,--disable-selinux,,"
+
+PACKAGES += "${PN}-xselinux"
+FILES_${PN}-xselinux += "${libdir}/libxcb-xselinux.so.*"
diff --git a/recipes-graphics/xcb/libxcb_1.9.3.bbappend b/recipes-graphics/xcb/libxcb_1.9.3.bbappend
deleted file mode 100644
index f1bd5a8..0000000
--- a/recipes-graphics/xcb/libxcb_1.9.3.bbappend
+++ /dev/null
@@ -1,8 +0,0 @@
-PR .= ".1"
-
-inherit enable-selinux
-# libxcb-xselinux will not build with libselinux, so remove the depend
-PACKAGECONFIG[selinux] = "--enable-selinux,--disable-selinux,,"
-
-PACKAGES += "${PN}-xselinux"
-FILES_${PN}-xselinux += "${libdir}/libxcb-xselinux.so.*"
-- 
1.7.10.4


