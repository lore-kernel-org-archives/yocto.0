Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6746BE00992; Wed, 22 Mar 2017 05:46:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f196.google.com (mail-pf0-f196.google.com
	[209.85.192.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 514EDE00839
	for <yocto@yoctoproject.org>; Wed, 22 Mar 2017 05:46:46 -0700 (PDT)
Received: by mail-pf0-f196.google.com with SMTP id n11so15361443pfg.2
	for <yocto@yoctoproject.org>; Wed, 22 Mar 2017 05:46:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=gwp55pnxuX8ooDUtE6EMoLlH0VOeu+gY/lnFf2OcPwo=;
	b=JbCK8TS1ZUUIK0le/ufTVoaVH31myQOihXtk/MPuI4SQqg8EFppRO8gMQAsHBsTta8
	Y9Sxwt+sJjDyYlfGuJ/4dO+zOeA3/lTKyDeKHSMdoMOu0XcEU5kBMtpu4ogPpq3GcR1Y
	xWWKCJfRnWsIA/sj40qb71wf7/i6Max8auwGNQ0xVFl3wFIFj2i0HAJPQv3odeIZByis
	VOaQhR26Ww98zB9HF13aCy/HKiSQS959x3EY6VMOeljZ+h2iPEjhzVyb/Rrc+e+Ms1uB
	MP07LQcTn92b+IUMyxJUnnxdBKVNtbObg+WY+sdg0q4zCirgnSKseJGkm3+R/cywjhqF
	6qrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=gwp55pnxuX8ooDUtE6EMoLlH0VOeu+gY/lnFf2OcPwo=;
	b=oHKkEd1KFw3QUyoYdcb4izQjBbpclaq0NV7lCDxLo7jgYLrbtRYFvdsVfnlYaUhZVt
	wo/kOEND2R7yTwxn10itFjiSDXZeTHiAePrpKhofE0RziTU21NBDSwAvKhnzDnqgXUnC
	TFVEejoSPZqyntzV0l+3Rh71mMWxMthxf1b3XpcU0hMDfoZJRnCl348+TZO+HmpkLRXI
	1PnTHeBaseyMu4LDxN6So2xRQNuHC3JdLoRh4Rc2ctOpog9Xvkl/zJwKtjsnLxOzkiwR
	tNSeAU3hh8coZpPD2BRJf7f9+EFsm4G+cXCOqjMjmH8KFd+MiGMi5QyziiDMgooRUOoX
	XAKg==
X-Gm-Message-State: AFeK/H1OCjKCtna7ApIx4yxtGWdFpDn7kvC/95SJESOfJ/kbN95qSTOWEqybGSLY2LMc0w==
X-Received: by 10.98.158.219 with SMTP id f88mr46379630pfk.50.1490186806544;
	Wed, 22 Mar 2017 05:46:46 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id
	e70sm3935214pfl.105.2017.03.22.05.46.45
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 22 Mar 2017 05:46:46 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Wed, 22 Mar 2017 05:46:40 -0700
Message-Id: <1490186804-22928-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1490186804-22928-1-git-send-email-akuster808@gmail.com>
References: <1490186804-22928-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/6] swtpm: fix musl build issues
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
X-List-Received-Date: Wed, 22 Mar 2017 12:46:48 -0000

add two fixes for musl build issues.

also update to latest tip

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-tpm/swtpm/files/fix_fcntl_h.patch | 21 +++++++++++++++++++++
 recipes-tpm/swtpm/files/ioctl_h.patch     | 22 ++++++++++++++++++++++
 recipes-tpm/swtpm/swtpm_1.0.bb            |  4 +++-
 3 files changed, 46 insertions(+), 1 deletion(-)
 create mode 100644 recipes-tpm/swtpm/files/fix_fcntl_h.patch
 create mode 100644 recipes-tpm/swtpm/files/ioctl_h.patch

diff --git a/recipes-tpm/swtpm/files/fix_fcntl_h.patch b/recipes-tpm/swtpm/files/fix_fcntl_h.patch
new file mode 100644
index 0000000..e844045
--- /dev/null
+++ b/recipes-tpm/swtpm/files/fix_fcntl_h.patch
@@ -0,0 +1,21 @@
+logging: Fix musl build issue with fcntl
+
+ error: #warning redirecting incorrect #include <sys/fcntl.h> to <fcntl.h> [-Werror=cpp]
+ #warning redirecting incorrect #include <sys/fcntl.h> to <fcntl.
+
+Upstream-Status: Pending
+Signed-off-by: Armin Kuster <akuster@mvista.com>
+
+Index: git/src/swtpm/logging.c
+===================================================================
+--- git.orig/src/swtpm/logging.c
++++ git/src/swtpm/logging.c
+@@ -43,7 +43,7 @@
+ #include <errno.h>
+ #include <string.h>
+ #include <sys/types.h>
+-#include <sys/fcntl.h>
++#include <fcntl.h>
+ #include <stdio.h>
+ #include <stdlib.h>
+ #include <stdarg.h>
diff --git a/recipes-tpm/swtpm/files/ioctl_h.patch b/recipes-tpm/swtpm/files/ioctl_h.patch
new file mode 100644
index 0000000..d736bc6
--- /dev/null
+++ b/recipes-tpm/swtpm/files/ioctl_h.patch
@@ -0,0 +1,22 @@
+tpm_ioctl: fix musl for missing ioctl
+
+tpm_ioctl.c: In function 'ioctl_to_cmd':
+tpm_ioctl.c:86:26: error: '_IOC_NRSHIFT' undeclared (first use in this function)
+     return ((ioctlnum >> _IOC_NRSHIFT) & _IOC_NRMASK) + 1;
+
+
+Upstream-status:
+Signed-off-by: Armin Kuster <akuster@mvista.com>
+
+Index: git/src/swtpm_ioctl/tpm_ioctl.c
+===================================================================
+--- git.orig/src/swtpm_ioctl/tpm_ioctl.c
++++ git/src/swtpm_ioctl/tpm_ioctl.c
+@@ -58,6 +58,7 @@
+ #include <fcntl.h>
+ #include <unistd.h>
+ #include <sys/ioctl.h>
++#include <asm/ioctl.h>
+ #include <getopt.h>
+ #include <sys/un.h>
+ #include <sys/types.h>
diff --git a/recipes-tpm/swtpm/swtpm_1.0.bb b/recipes-tpm/swtpm/swtpm_1.0.bb
index 7b9662a..99c6fdc 100644
--- a/recipes-tpm/swtpm/swtpm_1.0.bb
+++ b/recipes-tpm/swtpm/swtpm_1.0.bb
@@ -10,11 +10,13 @@ DEPENDS = "libtasn1 fuse expect socat glib-2.0 libtpm libtpm-native"
 DEPENDS += "tpm-tools-native expect-native socat-native"
 RDEPENDS_${PN} += "tpm-tools"
 
-SRCREV = "65d8e4d83447f4c13a41a6f995bd0490f49bc5ef"
+SRCREV = "d7bbe3de5cc58c1dca41149df89cfdc08019a722"
 SRC_URI = " \
 	git://github.com/stefanberger/swtpm.git \
 	file://fix_signed_issue.patch \
 	file://fix_lib_search_path.patch \
+        file://fix_fcntl_h.patch \
+        file://ioctl_h.patch \
 	"
 
 S = "${WORKDIR}/git"
-- 
2.7.4


