Return-Path: <flihp@twobit.us>
Received: from www.twobit.us (www.twobit.us [50.19.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26B00E016D3
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 22:01:37 -0700 (PDT)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=longhaul.twobit.us)
	by www.twobit.us with esmtpsa (TLS1.0:DHE_RSA_AES_128_CBC_SHA1:16)
	(Exim 4.72) (envelope-from <flihp@twobit.us>)
	id 1VXOfQ-0000e3-2l; Sat, 19 Oct 2013 05:01:36 +0000
Received: from flihp by longhaul.twobit.us with local (Exim 4.80)
	(envelope-from <flihp@longhaul.twobit.us>)
	id 1VXOfM-0001bW-Bn; Sat, 19 Oct 2013 05:01:32 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Sat, 19 Oct 2013 05:01:32 +0000
Message-Id: <1382158892-6139-1-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 1.7.10.4
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on www.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
X-SA-Exim-Version: 4.2.1 (built Mon, 22 Mar 2010 06:26:47 +0000)
X-SA-Exim-Scanned: Yes (on www.twobit.us)
Subject: [meta-selinux] glib-2.0: upgrade from version 2.36.4 to 2.38.0
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
X-List-Received-Date: Sat, 19 Oct 2013 05:01:44 -0000

---
 recipes-core/glib-2.0/glib-2.0_2.36.4.bbappend |    1 -
 recipes-core/glib-2.0/glib-2.0_2.38.0.bbappend |    1 +
 2 files changed, 1 insertion(+), 1 deletion(-)
 delete mode 100644 recipes-core/glib-2.0/glib-2.0_2.36.4.bbappend
 create mode 100644 recipes-core/glib-2.0/glib-2.0_2.38.0.bbappend

diff --git a/recipes-core/glib-2.0/glib-2.0_2.36.4.bbappend b/recipes-core/glib-2.0/glib-2.0_2.36.4.bbappend
deleted file mode 100644
index 8c11cac..0000000
--- a/recipes-core/glib-2.0/glib-2.0_2.36.4.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-inherit enable-selinux
diff --git a/recipes-core/glib-2.0/glib-2.0_2.38.0.bbappend b/recipes-core/glib-2.0/glib-2.0_2.38.0.bbappend
new file mode 100644
index 0000000..8c11cac
--- /dev/null
+++ b/recipes-core/glib-2.0/glib-2.0_2.38.0.bbappend
@@ -0,0 +1 @@
+inherit enable-selinux
-- 
1.7.10.4


