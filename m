Return-Path: <flihp@twobit.us>
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 794DEE017E6
	for <yocto@yoctoproject.org>; Sat, 16 Nov 2013 11:04:17 -0800 (PST)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=localhost)
	by smtp.twobit.us with esmtpsa (TLS1.2:DHE_RSA_AES_128_CBC_SHA1:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1Vhl9w-0002Iq-AY; Sat, 16 Nov 2013 19:03:57 +0000
Received: from flihp by localhost with local (Exim 4.80)
	(envelope-from <flihp@longhaul.twobit.us>)
	id 1VhlAA-0003v4-4e; Sat, 16 Nov 2013 19:04:10 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Sat, 16 Nov 2013 19:04:04 +0000
Message-Id: <1384628650-15034-2-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <1384628650-15034-1-git-send-email-flihp@twobit.us>
References: <1384628650-15034-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on smtp.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
	version=3.3.2
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCH v2 1/6] glib-2.0: rename bbappend from 2.38.0 to 2.38.1
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
X-List-Received-Date: Sat, 16 Nov 2013 19:04:20 -0000


Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 recipes-core/glib-2.0/glib-2.0_2.38.0.bbappend |    1 -
 recipes-core/glib-2.0/glib-2.0_2.38.1.bbappend |    1 +
 2 files changed, 1 insertion(+), 1 deletion(-)
 delete mode 100644 recipes-core/glib-2.0/glib-2.0_2.38.0.bbappend
 create mode 100644 recipes-core/glib-2.0/glib-2.0_2.38.1.bbappend

diff --git a/recipes-core/glib-2.0/glib-2.0_2.38.0.bbappend b/recipes-core/glib-2.0/glib-2.0_2.38.0.bbappend
deleted file mode 100644
index 8c11cac..0000000
--- a/recipes-core/glib-2.0/glib-2.0_2.38.0.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-inherit enable-selinux
diff --git a/recipes-core/glib-2.0/glib-2.0_2.38.1.bbappend b/recipes-core/glib-2.0/glib-2.0_2.38.1.bbappend
new file mode 100644
index 0000000..8c11cac
--- /dev/null
+++ b/recipes-core/glib-2.0/glib-2.0_2.38.1.bbappend
@@ -0,0 +1 @@
+inherit enable-selinux
-- 
1.7.10.4


