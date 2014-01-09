Return-Path: <flihp@twobit.us>
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E51BE0082D
	for <yocto@yoctoproject.org>; Thu,  9 Jan 2014 15:25:32 -0800 (PST)
Received: from c-76-24-20-220.hsd1.ma.comcast.net ([76.24.20.220]
	helo=localhost)
	by smtp.twobit.us with esmtpsa (TLS1.2:DHE_RSA_AES_128_CBC_SHA1:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1W1OxV-0005cD-Re; Thu, 09 Jan 2014 23:24:18 +0000
Received: from flihp by localhost with local (Exim 4.80)
	(envelope-from <flihp@longhaul.twobit.us>)
	id 1W1P02-00085I-Rh; Thu, 09 Jan 2014 23:26:54 +0000
From: flihp@twobit.us
To: joe@deserted.net
Date: Thu,  9 Jan 2014 23:26:54 +0000
Message-Id: <1389310014-31051-1-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 1.7.10.4
X-SA-Exim-Connect-IP: 76.24.20.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on smtp.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: [meta-selinux][PATCH] policycoreutils: Patch Makefile to get load_policy symlink right.
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
X-List-Received-Date: Thu, 09 Jan 2014 23:25:38 -0000

From: Philip Tricca <flihp@twobit.us>

Setting DESTDIR in the policycoreutils do_install creates a bad
symlink for load_policy. This patch fixes up the Makefile to
create the symlink relative to DESTDIR.

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 .../policycoreutils-loadpolicy-symlink.patch                |   11 +++++++++++
 recipes-security/selinux/policycoreutils_2.1.14.bb          |    1 +
 2 files changed, 12 insertions(+)
 create mode 100644 recipes-security/selinux/policycoreutils/policycoreutils-loadpolicy-symlink.patch

diff --git a/recipes-security/selinux/policycoreutils/policycoreutils-loadpolicy-symlink.patch b/recipes-security/selinux/policycoreutils/policycoreutils-loadpolicy-symlink.patch
new file mode 100644
index 0000000..e0bd352
--- /dev/null
+++ b/recipes-security/selinux/policycoreutils/policycoreutils-loadpolicy-symlink.patch
@@ -0,0 +1,11 @@
+--- a/load_policy/Makefile
++++ b/load_policy/Makefile
+@@ -19,7 +19,7 @@ install: all
+ 	test -d $(MANDIR)/man8 || install -m 755 -d $(MANDIR)/man8
+ 	install -m 644 load_policy.8 $(MANDIR)/man8/
+ 	-mkdir -p $(USRSBINDIR)
+-	-ln -sf $(SBINDIR)/load_policy $(USRSBINDIR)/load_policy 
++	-ln -sf $(subst $(DESTDIR),,$(SBINDIR))/load_policy $(USRSBINDIR)/load_policy 
+ 
+ clean:
+ 	-rm -f $(TARGETS) *.o 
diff --git a/recipes-security/selinux/policycoreutils_2.1.14.bb b/recipes-security/selinux/policycoreutils_2.1.14.bb
index b177042..8a35322 100644
--- a/recipes-security/selinux/policycoreutils_2.1.14.bb
+++ b/recipes-security/selinux/policycoreutils_2.1.14.bb
@@ -12,4 +12,5 @@ SRC_URI += "\
 	file://policycoreutils-fix-strict-prototypes.patch \
 	file://policycoreutils-revert-run_init-open_init_pty.patch \
 	file://policycoreutils-fix-sepolicy-install-path.patch \
+	file://policycoreutils-loadpolicy-symlink.patch \
 	"
-- 
1.7.10.4


