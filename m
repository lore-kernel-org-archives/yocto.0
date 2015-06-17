Return-Path: <flihp@twobit.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCC76E00A68; Wed, 17 Jun 2015 15:31:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp.twobit.us (smtp.twobit.us [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C97FAE00A5B
	for <yocto@yoctoproject.org>; Wed, 17 Jun 2015 15:31:34 -0700 (PDT)
Received: from [172.56.2.220] (helo=lappy2.twobit.us)
	by smtp.twobit.us with esmtpsa (TLSv1.2:AES128-SHA256:128)
	(Exim 4.80) (envelope-from <flihp@twobit.us>)
	id 1Z5LnF-00032Z-Nh; Wed, 17 Jun 2015 22:26:50 +0000
From: Philip Tricca <flihp@twobit.us>
To: yocto@yoctoproject.org
Date: Wed, 17 Jun 2015 15:30:51 -0700
Message-Id: <1434580258-18121-2-git-send-email-flihp@twobit.us>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1434580258-18121-1-git-send-email-flihp@twobit.us>
References: <1434580258-18121-1-git-send-email-flihp@twobit.us>
X-SA-Exim-Connect-IP: 172.56.2.220
X-SA-Exim-Mail-From: flihp@twobit.us
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Subject: [meta-selinux][PATCHv2 1/8] policycoreutils: Patch setfiles to add FTS_NOCHDIR to fts_flags.
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
X-List-Received-Date: Wed, 17 Jun 2015 22:31:35 -0000

Signed-off-by: Philip Tricca <flihp@twobit.us>
---
 .../policycoreutils-fts_flags-FTS_NOCHDIR.patch    | 25 ++++++++++++++++++++++
 recipes-security/selinux/policycoreutils_2.3.bb    |  1 +
 2 files changed, 26 insertions(+)
 create mode 100644 recipes-security/selinux/policycoreutils/policycoreutils-fts_flags-FTS_NOCHDIR.patch

diff --git a/recipes-security/selinux/policycoreutils/policycoreutils-fts_flags-FTS_NOCHDIR.patch b/recipes-security/selinux/policycoreutils/policycoreutils-fts_flags-FTS_NOCHDIR.patch
new file mode 100644
index 0000000..fd04b51
--- /dev/null
+++ b/recipes-security/selinux/policycoreutils/policycoreutils-fts_flags-FTS_NOCHDIR.patch
@@ -0,0 +1,25 @@
+This works around a bug in the default libc used by OE. FTS functions are
+supposed to change the current working directory as they walk the file
+hierarchy. The fts_accpath member of the FTSENT structure relies on this
+behavior and without it the path is not relative to cwd as expected.
+Supplying the FTS_NOCHDIR flag disables this optimization and causes
+fts_accpath to be relative to the directory where the traversal started.
+Use of this flag doesn't effect compatibility with glibc.
+
+An alternative fix could replace the use of fts_accpath with fts_path
+which is absolute.
+
+Signed-off-by: Philip Tricca <flihp@twobit.us>
+Index: policycoreutils/setfiles/setfiles.c
+===================================================================
+--- policycoreutils.orig/setfiles/setfiles.c
++++ policycoreutils/setfiles/setfiles.c
+@@ -194,7 +194,7 @@ int main(int argc, char **argv)
+ 		r_opts.expand_realpath = 0;
+ 		r_opts.abort_on_error = 1;
+ 		r_opts.add_assoc = 1;
+-		r_opts.fts_flags = FTS_PHYSICAL | FTS_XDEV;
++		r_opts.fts_flags = FTS_PHYSICAL | FTS_XDEV | FTS_NOCHDIR;
+ 		ctx_validate = 1;
+ 	} else {
+ 		/*
diff --git a/recipes-security/selinux/policycoreutils_2.3.bb b/recipes-security/selinux/policycoreutils_2.3.bb
index 447e6c9..d3c36dc 100644
--- a/recipes-security/selinux/policycoreutils_2.3.bb
+++ b/recipes-security/selinux/policycoreutils_2.3.bb
@@ -13,4 +13,5 @@ SRC_URI += "\
 	file://policycoreutils-semanage-edit-user.patch \
 	file://policycoreutils-process-ValueError-for-sepolicy-seobject.patch \
 	file://policycoreutils-fix-TypeError-for-seobject.py.patch \
+	file://policycoreutils-fts_flags-FTS_NOCHDIR.patch \
 	"
-- 
2.1.4


