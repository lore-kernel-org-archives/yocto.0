Return-Path: <flihp@twobit.us>
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F5CDE017EF
	for <yocto@yoctoproject.org>; Sat, 16 Nov 2013 11:04:19 -0800 (PST)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=localhost)
	by smtp.twobit.us with esmtpsa (TLS1.2:DHE_RSA_AES_128_CBC_SHA1:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1Vhl9w-0002Iv-Ig; Sat, 16 Nov 2013 19:03:58 +0000
Received: from flihp by localhost with local (Exim 4.80)
	(envelope-from <flihp@longhaul.twobit.us>)
	id 1VhlAA-0003vT-Bm; Sat, 16 Nov 2013 19:04:10 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Sat, 16 Nov 2013 19:04:09 +0000
Message-Id: <1384628650-15034-7-git-send-email-flihp@twobit.us>
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
Subject: [meta-selinux][PATCH v2 6/6] at: bump from 3.1.13 to 3.1.14
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

This renames the bbappend as well as a minor tweak to the selinux patch.

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 recipes-extended/at/at/at-3.1.13-selinux.patch |    4 ++--
 recipes-extended/at/at_3.1.13.bbappend         |    7 -------
 recipes-extended/at/at_3.1.14.bbappend         |    7 +++++++
 3 files changed, 9 insertions(+), 9 deletions(-)
 delete mode 100644 recipes-extended/at/at_3.1.13.bbappend
 create mode 100644 recipes-extended/at/at_3.1.14.bbappend

diff --git a/recipes-extended/at/at/at-3.1.13-selinux.patch b/recipes-extended/at/at/at-3.1.13-selinux.patch
index 5a08a43..4e5e18c 100644
--- a/recipes-extended/at/at/at-3.1.13-selinux.patch
+++ b/recipes-extended/at/at/at-3.1.13-selinux.patch
@@ -28,8 +28,8 @@ index 10e7ed2..35792cd 100644
 	$(LN_S) -f at atrm
  
  atd: $(RUNOBJECTS)
--	$(CC) $(CFLAGS) -o atd $(RUNOBJECTS) $(LIBS) $(PAMLIB) $(LDFLAGS)
-+	$(CC) $(CFLAGS) -o atd $(RUNOBJECTS) $(LIBS) $(PAMLIB) $(SELINUXLIB) $(LDFLAGS)
+-	$(CC) $(LDFLAGS) -o atd $(RUNOBJECTS) $(LIBS) $(PAMLIB)
++	$(CC) $(LDFLAGS) -o atd $(RUNOBJECTS) $(LIBS) $(PAMLIB) $(SELINUXLIB)
  
  y.tab.c y.tab.h: parsetime.y
 	$(YACC) -d parsetime.y
diff --git a/recipes-extended/at/at_3.1.13.bbappend b/recipes-extended/at/at_3.1.13.bbappend
deleted file mode 100644
index f30abab..0000000
--- a/recipes-extended/at/at_3.1.13.bbappend
+++ /dev/null
@@ -1,7 +0,0 @@
-PR .= ".2"
-
-FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
-
-SRC_URI += "file://at-3.1.13-selinux.patch"
-
-inherit with-selinux
diff --git a/recipes-extended/at/at_3.1.14.bbappend b/recipes-extended/at/at_3.1.14.bbappend
new file mode 100644
index 0000000..f30abab
--- /dev/null
+++ b/recipes-extended/at/at_3.1.14.bbappend
@@ -0,0 +1,7 @@
+PR .= ".2"
+
+FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
+
+SRC_URI += "file://at-3.1.13-selinux.patch"
+
+inherit with-selinux
-- 
1.7.10.4


