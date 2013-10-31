Return-Path: <flihp@twobit.us>
Received: from smtp.twobit.us (unknown [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0E6AE017BC
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 17:33:27 -0700 (PDT)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=localhost)
	by smtp.twobit.us with esmtpsa (TLS1.2:DHE_RSA_AES_128_CBC_SHA1:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1VbgCQ-0006wl-9l; Thu, 31 Oct 2013 00:33:23 +0000
Received: from flihp by localhost with local (Exim 4.80)
	(envelope-from <flihp@longhaul.twobit.us>)
	id 1VbgCc-0000eF-AI; Thu, 31 Oct 2013 00:33:34 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Thu, 31 Oct 2013 00:33:32 +0000
Message-Id: <1383179614-2457-2-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1383179614-2457-1-git-send-email-flihp@twobit.us>
References: <1383179614-2457-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on smtp.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
	version=3.3.2
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCH 1/3] Add RDEPENDS to selinux-config recipe.
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
X-List-Received-Date: Thu, 31 Oct 2013 00:33:31 -0000

These dependencies contain the utilities required for the selinux init
script to function properly.

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 recipes-security/selinux/selinux-config_0.1.bb |    8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/recipes-security/selinux/selinux-config_0.1.bb b/recipes-security/selinux/selinux-config_0.1.bb
index 6af9c54..27d9995 100644
--- a/recipes-security/selinux/selinux-config_0.1.bb
+++ b/recipes-security/selinux/selinux-config_0.1.bb
@@ -12,6 +12,14 @@ PR = "r3"
 
 SRC_URI = "file://selinux-init.sh"
 
+RDEPENDS_${PN} = " \
+        coreutils \
+        libselinux-bin \
+        policycoreutils-fixfiles \
+        policycoreutils-secon \
+        policycoreutils-setfiles \
+"
+
 inherit update-rc.d
 
 INITSCRIPT_NAME = "0selinux-init"
-- 
1.7.10.4


