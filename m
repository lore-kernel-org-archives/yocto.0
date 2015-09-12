Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1E352E00CFC; Fri, 11 Sep 2015 22:18:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BCFCE00AD2
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 22:18:36 -0700 (PDT)
Received: from c-50-137-125-184.hsd1.ma.comcast.net ([50.137.125.184]
	helo=localhost.localdomain)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1ZadBO-0000yR-HL; Sat, 12 Sep 2015 05:17:03 +0000
From: Philip Tricca <flihp@twobit.us>
To: Joe_MacDonald@mentor.com
Date: Fri, 11 Sep 2015 22:18:21 -0700
Message-Id: <1442035106-9671-4-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1442035106-9671-1-git-send-email-flihp@twobit.us>
References: <1442035106-9671-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 50.137.125.184
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: [PATCH][meta-selinux 3/8] libselinux: Bump version to 2.4.
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
X-List-Received-Date: Sat, 12 Sep 2015 05:18:37 -0000

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 recipes-security/selinux/libselinux_2.3.bb | 15 ---------------
 recipes-security/selinux/libselinux_2.4.bb | 15 +++++++++++++++
 2 files changed, 15 insertions(+), 15 deletions(-)
 delete mode 100644 recipes-security/selinux/libselinux_2.3.bb
 create mode 100644 recipes-security/selinux/libselinux_2.4.bb

diff --git a/recipes-security/selinux/libselinux_2.3.bb b/recipes-security/selinux/libselinux_2.3.bb
deleted file mode 100644
index 8c2d918..0000000
--- a/recipes-security/selinux/libselinux_2.3.bb
+++ /dev/null
@@ -1,15 +0,0 @@
-include selinux_20140506.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://LICENSE;md5=84b4d2c6ef954a2d4081e775a270d0d0"
-
-SRC_URI[md5sum] = "b11d4d95ef4bde732dbc8462df57a1e5"
-SRC_URI[sha256sum] = "0b1e0b43ecd84a812713d09564019b08e7c205d89072b5cbcd07b052cd8e77b2"
-
-SRC_URI += "\
-        file://libselinux-drop-Wno-unused-but-set-variable.patch \
-        file://libselinux-make-O_CLOEXEC-optional.patch \
-        file://libselinux-make-SOCK_CLOEXEC-optional.patch \
-        file://libselinux-define-FD_CLOEXEC-as-necessary.patch \
-        file://libselinux-get-pywrap-depends-on-selinux.py.patch \
-        "
diff --git a/recipes-security/selinux/libselinux_2.4.bb b/recipes-security/selinux/libselinux_2.4.bb
new file mode 100644
index 0000000..e084df2
--- /dev/null
+++ b/recipes-security/selinux/libselinux_2.4.bb
@@ -0,0 +1,15 @@
+include selinux_20150202.inc
+include ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://LICENSE;md5=84b4d2c6ef954a2d4081e775a270d0d0"
+
+SRC_URI[md5sum] = "d19af2a367a81fb00bedc1b381694995"
+SRC_URI[sha256sum] = "46043091f4c5ba4f43e8d3715f30d665a2d571c9126c1f03945c9ea4ed380f7b"
+
+SRC_URI += "\
+        file://libselinux-drop-Wno-unused-but-set-variable.patch \
+        file://libselinux-make-O_CLOEXEC-optional.patch \
+        file://libselinux-make-SOCK_CLOEXEC-optional.patch \
+        file://libselinux-define-FD_CLOEXEC-as-necessary.patch \
+        file://libselinux-get-pywrap-depends-on-selinux.py.patch \
+        "
-- 
2.1.4


