Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4C714E015DA; Fri, 20 Jul 2018 02:57:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6154E010FD
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2018 02:57:30 -0700 (PDT)
Received: by mail-wm0-f50.google.com with SMTP id o11-v6so8876349wmh.2
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2018 02:57:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id;
	bh=1wDmpX1+agUpXRnK+oWyYjHvxJhnFsflAg7hE7NdIME=;
	b=E7lBTOR1aDOnCi+0ncQZPoM+azieB+oCU1SkMjPJpJfzGKHl+fCEr19VdC4jzdIlJD
	GhZPksbpxm9e/JC0AjqSE3chE5xb00WsFg+S//dzRI44R1VPDp0zZnNGQCdbr6ZGpZbI
	jGJQ2FXfFZMVbzzHAubMkNIR7xEeD/9BtQQWHO6FMWx5HBbItiyOyUaIzL7AZ4IJHyjh
	w8OfSRYxsvnHcb3b/TausE5rrNSj5+dVdU2A1QdUpSl+1QlSjUPTElAdhIetpkc4TWBQ
	qkzTDT0jJPVKp0dxqfsrMst+KK5GE7jIrmLvPy2dwX/JZ1IK4IAUl8mLOBTvvRnBTjgK
	hAtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=1wDmpX1+agUpXRnK+oWyYjHvxJhnFsflAg7hE7NdIME=;
	b=XZy0HPCHZrKlWUKZFRj1NzOUi4LJICK5rIcNys6JkHXS3SbK0PYsTeVguwjCwOZiJo
	4Hww6DNyMbNI3pNa1kDMS+vL7HQT8amO1BZIIKzRY4fKY4arOA06T68xKHR9+esazEjI
	xTlULh/4OBLY3AoSXj/Xvgs50sbarWmyKvV4qdE7GmTZ99ZdTs0ZpWtIpBCt8ytUerzr
	iuETHWonO1mebwHc8M3I705mF3IAT4couH/e9GwHEdpfWB6J1Mb+NEVDgBOwC0Zx9F2L
	EiGB6Wk26WmSZZRK/0KhnY7Mg6DUV29c9w7iQTHMWtrgNkpjUnPqqCXW+qATS12nMiuB
	XzIQ==
X-Gm-Message-State: AOUpUlG2ZY2OghdqIklqxj0glVR4cSwcOO7xVkd8YpiqhurA+XnKUJSx
	k+cX6JTyTd62llv3xkEQYUkO4jBtBAY=
X-Google-Smtp-Source: AAOMgpdZPD7YxG/LhKUIONvwSMNolJd7ZV9jzTZ+WBhXNzxXNFMAc0jIVKs9Hngyo173W3+fNHJwDA==
X-Received: by 2002:a1c:8dd1:: with SMTP id
	p200-v6mr992592wmd.145.1532080648746; 
	Fri, 20 Jul 2018 02:57:28 -0700 (PDT)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	g75-v6sm1217422wmd.38.2018.07.20.02.57.27
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 20 Jul 2018 02:57:28 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 20 Jul 2018 10:57:26 +0100
Message-Id: <20180720095726.25476-1-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [PATCH meta-gplv2] bc: add
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
X-List-Received-Date: Fri, 20 Jul 2018 09:57:32 -0000

Add 1.06 from oe-core as bc 1.07 is GPLv3.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 recipes-extended/bc/bc_1.06.bb                    | 26 +++++++++++++++++++++
 recipes-extended/bc/files/fix-segment-fault.patch | 28 +++++++++++++++++++++++
 2 files changed, 54 insertions(+)
 create mode 100644 recipes-extended/bc/bc_1.06.bb
 create mode 100644 recipes-extended/bc/files/fix-segment-fault.patch

diff --git a/recipes-extended/bc/bc_1.06.bb b/recipes-extended/bc/bc_1.06.bb
new file mode 100644
index 0000000..d8c8a86
--- /dev/null
+++ b/recipes-extended/bc/bc_1.06.bb
@@ -0,0 +1,26 @@
+SUMMARY = "Arbitrary precision calculator language"
+HOMEPAGE = "http://www.gnu.org/software/bc/bc.html"
+
+LICENSE = "GPLv2+ & LGPLv2.1"
+LIC_FILES_CHKSUM = "file://COPYING;md5=94d55d512a9ba36caa9b7df079bae19f \
+                    file://COPYING.LIB;md5=d8045f3b8f929c1cb29a1e3fd737b499 \
+                    file://bc/bcdefs.h;endline=31;md5=46dffdaf10a99728dd8ce358e45d46d8 \
+                    file://dc/dc.h;endline=25;md5=2f9c558cdd80e31b4d904e48c2374328 \
+                    file://lib/number.c;endline=31;md5=99434a0898abca7784acfd36b8191199"
+
+SECTION = "base"
+DEPENDS = "flex"
+PR = "r3"
+
+SRC_URI = "${GNU_MIRROR}/bc/bc-${PV}.tar.gz \
+           file://fix-segment-fault.patch "
+
+SRC_URI[md5sum] = "d44b5dddebd8a7a7309aea6c36fda117"
+SRC_URI[sha256sum] = "4ef6d9f17c3c0d92d8798e35666175ecd3d8efac4009d6457b5c99cea72c0e33"
+
+inherit autotools texinfo update-alternatives
+
+ALTERNATIVE_${PN} = "dc"
+ALTERNATIVE_PRIORITY = "100"
+
+BBCLASSEXTEND = "native"
diff --git a/recipes-extended/bc/files/fix-segment-fault.patch b/recipes-extended/bc/files/fix-segment-fault.patch
new file mode 100644
index 0000000..20c0da2
--- /dev/null
+++ b/recipes-extended/bc/files/fix-segment-fault.patch
@@ -0,0 +1,28 @@
+Upstream-Status: Pending
+
+when run command such as 'echo "a = 13" | bc -l', it segmentation faults.
+This patch is from http://www.mail-archive.com/blfs-support@linuxfromscratch.org/msg04602.html.
+
+Signed-off-by: Kai Kang <kai.kang@windriver.com>
+
+--- bc-1.06/lib/number.c.orig	2003-09-26 21:14:02.000000000 +0000
++++ bc-1.06/lib/number.c	2003-09-26 21:14:26.000000000 +0000
+@@ -34,6 +34,7 @@
+ #include <number.h>
+ #include <assert.h>
+ #include <stdlib.h>
++#include <string.h>
+ #include <ctype.h>/* Prototypes needed for external utility routines. */
+ 
+ #define bc_rt_warn rt_warn
+--- bc-1.06/bc/load.c.orig	2003-09-26 21:14:14.000000000 +0000
++++ bc-1.06/bc/load.c	2003-09-26 21:14:26.000000000 +0000
+@@ -156,7 +156,7 @@
+   long  label_no;
+   long  vaf_name;	/* variable, array or function number. */
+   long  func;
+-  program_counter save_adr;
++  static program_counter save_adr;
+ 
+   /* Initialize. */
+   str = code;
-- 
2.11.0


