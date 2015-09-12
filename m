Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 698E9E00B37; Fri, 11 Sep 2015 22:18:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6966EE00CD9
	for <yocto@yoctoproject.org>; Fri, 11 Sep 2015 22:18:35 -0700 (PDT)
Received: from c-50-137-125-184.hsd1.ma.comcast.net ([50.137.125.184]
	helo=localhost.localdomain)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1ZadBM-0000yR-Pv; Sat, 12 Sep 2015 05:17:02 +0000
From: Philip Tricca <flihp@twobit.us>
To: Joe_MacDonald@mentor.com
Date: Fri, 11 Sep 2015 22:18:20 -0700
Message-Id: <1442035106-9671-3-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1442035106-9671-1-git-send-email-flihp@twobit.us>
References: <1442035106-9671-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 50.137.125.184
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: [PATCH][meta-selinux 2/8] libsepol: Bump version to 2.4.
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
X-List-Received-Date: Sat, 12 Sep 2015 05:18:36 -0000

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 recipes-security/selinux/libsepol_2.3.bb | 7 -------
 recipes-security/selinux/libsepol_2.4.bb | 7 +++++++
 2 files changed, 7 insertions(+), 7 deletions(-)
 delete mode 100644 recipes-security/selinux/libsepol_2.3.bb
 create mode 100644 recipes-security/selinux/libsepol_2.4.bb

diff --git a/recipes-security/selinux/libsepol_2.3.bb b/recipes-security/selinux/libsepol_2.3.bb
deleted file mode 100644
index 478a6ee..0000000
--- a/recipes-security/selinux/libsepol_2.3.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-include selinux_20140506.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
-
-SRC_URI[md5sum] = "e47e8527b5d4ea971726c455f847efdd"
-SRC_URI[sha256sum] = "cc8d8642c3b7b95d6928d65dcbca2ab0627abc1c05166637851e63c1a6eae68f"
diff --git a/recipes-security/selinux/libsepol_2.4.bb b/recipes-security/selinux/libsepol_2.4.bb
new file mode 100644
index 0000000..fa83e5f
--- /dev/null
+++ b/recipes-security/selinux/libsepol_2.4.bb
@@ -0,0 +1,7 @@
+include selinux_20150202.inc
+include ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=a6f89e2100d9b6cdffcea4f398e37343"
+
+SRC_URI[md5sum] = "8a75d27acf17af1911797e6b12986b50"
+SRC_URI[sha256sum] = "299015d59932404c6b69d365fdecffe5c0e2f9c44e08b47286a4bfc02ee49659"
-- 
2.1.4


