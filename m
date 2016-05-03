Return-Path: <george.mccollister@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2B7EE00D69; Tue,  3 May 2016 06:19:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (george.mccollister[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f68.google.com (mail-oi0-f68.google.com
	[209.85.218.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12B0FE00D59
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 06:19:20 -0700 (PDT)
Received: by mail-oi0-f68.google.com with SMTP id w198so2698128oiw.2
	for <yocto@yoctoproject.org>; Tue, 03 May 2016 06:19:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=C3v+1KLj9EUDJoV3nTEJad21orjpGyDrrd4iUzfmQOo=;
	b=QpCMGV+JtIzq4mUctvPUg76uMzKVUbcPpOGC9w5rKM/oshVh0mDAAkLbZRhGoc2aFA
	6zWkJOdpleVF/BrAfsnfjYsnfUwVyTNTwMidRlF/W7Gw9VMG8cBvWZeCZJdaeLL3h/25
	Khh5MZyirqciYtMSlwNXhvxKSSc8Pq+aaydWKXLTEZzfX/74E5B2F6EQZf7/6FCrWMJI
	0YWVWuN7jOkb5haXW1PVKHYWNT/CsrAMbOYnLd7lsM++8C+aX048HEeIBITHb0R4euUk
	1xawmF9rkPAwdSKoty1u0MZMKdFV6qxSXaKhCkunSsUObXCf3Cd7ijOoxg/O58PelJVw
	cH1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=C3v+1KLj9EUDJoV3nTEJad21orjpGyDrrd4iUzfmQOo=;
	b=mk5e4/bdhX9PqFkVRS3koU3gDfxkxa3v2p3jZXpahaC18kq/ntWn3ok4rd0XKGFVqV
	df9HebZ75JHkJgSu2AKbcMdNfmQA9yYKdxcGqnogUtUTLSPbyfeDEH2EK04fivZrQH4q
	eCkf5VWWn0cnBW117wOVzHHu5nc4sSM/ifXI5pG/dgPuzJLGX8o9N2bvypdoH5se5Zlg
	Gntxr1SGVZcQeXToipBRpKG1wRYsNwJv8DEzadEhektpDjQVx1z08qc8MVEQ/gmfatKt
	oj723nIjkLf3AiZXUP1yKMk4IZezxUOIuV88Vk7xthpe+4FCLbaRzuMj+a8eU0qZv/5i
	DzjQ==
X-Gm-Message-State: AOPr4FU+HiXZyDeHNFoVzaUR8TSUAw9xz48mbHpN4mrK67JQz7vTmJKzo2tru5OfTQ6q2A==
X-Received: by 10.157.9.104 with SMTP id 95mr1187160otp.157.1462281559279;
	Tue, 03 May 2016 06:19:19 -0700 (PDT)
Received: from localhost.localdomain (216-21-169-52.slc.googlefiber.net.
	[216.21.169.52])
	by smtp.gmail.com with ESMTPSA id w4sm1025472oex.9.2016.05.03.06.19.18
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 03 May 2016 06:19:18 -0700 (PDT)
From: George McCollister <george.mccollister@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  3 May 2016 08:18:37 -0500
Message-Id: <1462281517-4888-1-git-send-email-george.mccollister@gmail.com>
X-Mailer: git-send-email 2.8.0
Subject: [pseudo][PATCH] Add capset pseudo function that always succeeds
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
X-List-Received-Date: Tue, 03 May 2016 13:19:22 -0000

The setcap utility supplied by libcap is used to set capabilities on a
file. Before setting a file's capabilities with cap_set_file() (which uses
setxattr()) it calls cap_set_flag(mycaps, CAP_EFFECTIVE, 1, &capflag,
CAP_SET). cap_set_flag() uses the capset syscall to raise the process'
effective capability. In most cases if the process isn't running as root
this will fail and setcap will exit with an error. Because setxattr is
intercepted by pseudo it's unnecessary for setcap to call capset().

Override capset with a pseudo function that does nothing and always
returns 0.

Signed-off-by: George McCollister <george.mccollister@gmail.com>
---
 ports/linux/guts/capset.c     | 13 +++++++++++++
 ports/linux/portdefs.h        |  2 ++
 ports/linux/pseudo_wrappers.c |  7 +++++++
 ports/linux/wrapfuncs.in      |  1 +
 4 files changed, 23 insertions(+)
 create mode 100644 ports/linux/guts/capset.c

diff --git a/ports/linux/guts/capset.c b/ports/linux/guts/capset.c
new file mode 100644
index 0000000..51e0cdf
--- /dev/null
+++ b/ports/linux/guts/capset.c
@@ -0,0 +1,13 @@
+/*
+ * Copyright (c) 2016 Wind River Systems; see
+ * guts/COPYRIGHT for information.
+ *
+ * int capset(cap_user_header_t hdrp, const cap_user_data_t datap)
+ *	int rc = -1;
+ */
+
+	rc = real_capset(hdrp, datap);
+
+/*	return rc;
+ * }
+ */
diff --git a/ports/linux/portdefs.h b/ports/linux/portdefs.h
index f0a0e40..d8c5020 100644
--- a/ports/linux/portdefs.h
+++ b/ports/linux/portdefs.h
@@ -25,3 +25,5 @@ GLIBC_COMPAT_SYMBOL(memcpy,2.2.5);
 #elif defined(__i386__)
 GLIBC_COMPAT_SYMBOL(memcpy,2.0);
 #endif
+
+#include <linux/capability.h>
diff --git a/ports/linux/pseudo_wrappers.c b/ports/linux/pseudo_wrappers.c
index 26b29b0..c6c072b 100644
--- a/ports/linux/pseudo_wrappers.c
+++ b/ports/linux/pseudo_wrappers.c
@@ -31,3 +31,10 @@ int
 pseudo_fstat64(int fd, struct stat64 *buf) {
 	return real___fxstat64(_STAT_VER, fd, buf);
 }
+
+int pseudo_capset(cap_user_header_t hdrp, const cap_user_data_t datap) {
+	(void)hdrp;
+	(void)datap;
+
+	return 0;
+}
diff --git a/ports/linux/wrapfuncs.in b/ports/linux/wrapfuncs.in
index 3b8955a..578db35 100644
--- a/ports/linux/wrapfuncs.in
+++ b/ports/linux/wrapfuncs.in
@@ -51,3 +51,4 @@ int euidaccess(const char *path, int mode);
 int getpw(uid_t uid, char *buf);
 int getpwent_r(struct passwd *pwbuf, char *buf, size_t buflen, struct passwd **pwbufp);
 int getgrent_r(struct group *gbuf, char *buf, size_t buflen, struct group **gbufp);
+int capset(cap_user_header_t hdrp, const cap_user_data_t datap); /* real_func=pseudo_capset */
-- 
2.8.0


