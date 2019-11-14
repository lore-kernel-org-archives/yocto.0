Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAE6BE00E7B; Wed, 13 Nov 2019 17:50:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4BEFE00E59
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 17:49:42 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id xAE1nfZ5017002
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 13 Nov 2019 17:49:41 -0800
Received: from localhost (128.224.158.241) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.468.0;
	Wed, 13 Nov 2019 17:49:40 -0800
From: Yi Zhao <yi.zhao@windriver.com>
To: <yocto@yoctoproject.org>, <joe@deserted.net>, <Joe_MacDonald@mentor.com>
Date: Thu, 14 Nov 2019 09:48:53 +0800
Message-ID: <20191114014901.22862-12-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191114014901.22862-1-yi.zhao@windriver.com>
References: <20191114014901.22862-1-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.158.241]
Subject: [meta-selinux][PATCH 11/19] restorecond: uprev to 2.9 (20190315)
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
X-List-Received-Date: Thu, 14 Nov 2019 01:50:07 -0000
Content-Type: text/plain

* Rebase patches

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 ...icycoreutils-make-O_CLOEXEC-optional.patch | 29 +++++++++++--------
 recipes-security/selinux/restorecond_2.8.bb   |  7 -----
 recipes-security/selinux/restorecond_2.9.bb   |  7 +++++
 3 files changed, 24 insertions(+), 19 deletions(-)
 delete mode 100644 recipes-security/selinux/restorecond_2.8.bb
 create mode 100644 recipes-security/selinux/restorecond_2.9.bb

diff --git a/recipes-security/selinux/restorecond/policycoreutils-make-O_CLOEXEC-optional.patch b/recipes-security/selinux/restorecond/policycoreutils-make-O_CLOEXEC-optional.patch
index ab1a10a..2928aff 100644
--- a/recipes-security/selinux/restorecond/policycoreutils-make-O_CLOEXEC-optional.patch
+++ b/recipes-security/selinux/restorecond/policycoreutils-make-O_CLOEXEC-optional.patch
@@ -1,29 +1,34 @@
+From 4adc1c02e4da42f64249c05534875e732f043693 Mon Sep 17 00:00:00 2001
+From: Joe MacDonald <joe_macdonald@mentor.com>
+Date: Wed, 6 Nov 2019 23:17:50 +0800
 Subject: [PATCH] policycoreutils: make O_CLOEXEC optional
 
-Various commits in the selinux tree in the current release added O_CLOEXEC
-to open() calls in an attempt to address file descriptor leaks as
-described:
+Various commits in the selinux tree in the current release added
+O_CLOEXEC to open() calls in an attempt to address file descriptor leaks
+as described:
 
-   http://danwalsh.livejournal.com/53603.html
+  http://danwalsh.livejournal.com/53603.html
 
 However O_CLOEXEC isn't available on all platforms, so make it a
-compile-time option and generate a warning when it is not available.  The
-actual impact of leaking these file descriptors is minimal, though it does
-produce curious AVC Denied messages.
+compile-time option and generate a warning when it is not available.
+The actual impact of leaking these file descriptors is minimal, though
+it does produce curious AVC Denied messages.
 
-Uptream-Status: Inappropriate [O_CLOEXEC has been in Linux since 2007 and POSIX since 2008]
+Uptream-Status: Inappropriate
+[O_CLOEXEC has been in Linux since 2007 and POSIX since 2008]
 
 Signed-off-by: Joe MacDonald <joe.macdonald@windriver.com>
 Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
+Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
 ---
- user.c |    8 +++++++-
+ user.c | 8 +++++++-
  1 file changed, 7 insertions(+), 1 deletion(-)
 
 diff --git a/user.c b/user.c
-index 2c28676..6235772 100644
+index 714aae7..bbf018e 100644
 --- a/user.c
 +++ b/user.c
-@@ -202,7 +202,13 @@ static int local_server() {
+@@ -202,7 +202,13 @@ static int local_server(void) {
  			perror("asprintf");
  		return -1;
  	}
@@ -39,5 +44,5 @@ index 2c28676..6235772 100644
  		g_warning ("Lock file: %s", ptr);
  
 -- 
-1.7.9.5
+2.7.4
 
diff --git a/recipes-security/selinux/restorecond_2.8.bb b/recipes-security/selinux/restorecond_2.8.bb
deleted file mode 100644
index 4a83a23..0000000
--- a/recipes-security/selinux/restorecond_2.8.bb
+++ /dev/null
@@ -1,7 +0,0 @@
-include selinux_20180524.inc
-include ${BPN}.inc
-
-LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
-
-SRC_URI[md5sum] = "cfe4e4d6184623fdcb9bc2681e693abb"
-SRC_URI[sha256sum] = "323cab1128e5308cd85fea0e5c98e3c8973e1ada0b659f2fce76187e192271bf"
diff --git a/recipes-security/selinux/restorecond_2.9.bb b/recipes-security/selinux/restorecond_2.9.bb
new file mode 100644
index 0000000..2ccac18
--- /dev/null
+++ b/recipes-security/selinux/restorecond_2.9.bb
@@ -0,0 +1,7 @@
+require selinux_20190315.inc
+require ${BPN}.inc
+
+LIC_FILES_CHKSUM = "file://COPYING;md5=393a5ca445f6965873eca0259a17f833"
+
+SRC_URI[md5sum] = "1a24cb2a23d8bd01d3f8d9bb2031981f"
+SRC_URI[sha256sum] = "cbf9820583e641ee0462fa7bc89e6024676af281e025703e17b2d019b1a25a4f"
-- 
2.17.1


