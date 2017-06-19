Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7DEEE00BA2; Mon, 19 Jun 2017 03:28:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 383E8E00AF0
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 03:28:21 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id d64so16025689wmf.2
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 03:28:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=lTTvlgscEpJrMAwAoR5XUWCn1geg28XI/+4Tvu8rKSE=;
	b=XnUZPh8rVxnPfl/6NHaKWIFFoqJ7Zv29dIcX3RZDCxiV3BXrkfaFkRrcC3nMoi6MWP
	BtSTMv6zC984G495KkRiH6AiDdx3DbKqAd6QqxCSFvgovw4Jt7xYFV9kDo8C4+x8jCRL
	O/oLFtZ/1R6Ma4w9dRw0VSeB9//bIL0Jg0Y/aszmLtPbB+9yzwuy8tZjW1jBsrP017x+
	mddi4WyRvkMeNt56gZvNcFA2Y2rYQtU7nDqIbT8osLUXWvirYrGZedfot0qoXgp0HUWl
	/jZvj7IN/IC6t1sgc4Gk3S5Hte5DL2M9Z/ekKagTAQekbVJmr7/rJX1EROT5JC1/drFj
	qIkQ==
X-Gm-Message-State: AKS2vOy0jUHYguyNjQ61n2ZzMSj4D9nxdJdr1GArTXvUB+B9boNzFVlh
	TbAgV94G1hGn5kyttpE=
X-Received: by 10.28.19.11 with SMTP id 11mr14573972wmt.123.1497868100593;
	Mon, 19 Jun 2017 03:28:20 -0700 (PDT)
Received: from tfsielt31850.tycofs.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id 99sm2516274wrl.43.2017.06.19.03.28.19
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 19 Jun 2017 03:28:19 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Mon, 19 Jun 2017 11:28:17 +0100
Message-Id: <20170619102819.1181-1-git@andred.net>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-gplv2][PATCH] m4: fix security & musl issues
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
X-List-Received-Date: Mon, 19 Jun 2017 10:28:24 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <adraszik@tycoint.com>

As per the patches.

Signed-off-by: André Draszik <adraszik@tycoint.com>
Acked-by: Sylvain Lemieux <slemieux@tycoint.com>
---
 recipes-devtools/m4/m4-1.4.9.inc                   |  5 +++
 ...compilation-error-with-security-flags-ena.patch | 35 +++++++++++++++++
 ...-need-charset.alias-when-building-for-mus.patch | 44 ++++++++++++++++++++++
 3 files changed, 84 insertions(+)
 create mode 100644 recipes-devtools/m4/m4/0001-freeze-fix-compilation-error-with-security-flags-ena.patch
 create mode 100644 recipes-devtools/m4/m4/0002-build-don-t-need-charset.alias-when-building-for-mus.patch

diff --git a/recipes-devtools/m4/m4-1.4.9.inc b/recipes-devtools/m4/m4-1.4.9.inc
index aab2c1e..8c75dab 100644
--- a/recipes-devtools/m4/m4-1.4.9.inc
+++ b/recipes-devtools/m4/m4-1.4.9.inc
@@ -8,6 +8,11 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=751419260aa954499f7abaabaa882bbe\
 PR = "r2"
 SRC_URI += "file://fix_for_circular_dependency.patch"
 
+SRC_URI_append_class-target = "\
+    file://0001-freeze-fix-compilation-error-with-security-flags-ena.patch \
+    file://0002-build-don-t-need-charset.alias-when-building-for-mus.patch \
+"
+
 SRC_URI[md5sum] = "1ba8e147aff5e79bd2bfb983d86b53d5"
 SRC_URI[sha256sum] = "815ce53853fbf6493617f467389b799208b1ec98296b95be44a683f8bcfd7c47"
 
diff --git a/recipes-devtools/m4/m4/0001-freeze-fix-compilation-error-with-security-flags-ena.patch b/recipes-devtools/m4/m4/0001-freeze-fix-compilation-error-with-security-flags-ena.patch
new file mode 100644
index 0000000..b5a6413
--- /dev/null
+++ b/recipes-devtools/m4/m4/0001-freeze-fix-compilation-error-with-security-flags-ena.patch
@@ -0,0 +1,35 @@
+From 5f07971ef7f087500f19beb778ff1c8fb176d76d Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <adraszik@tycoint.com>
+Date: Thu, 23 Mar 2017 12:23:24 +0000
+Subject: [PATCH 1/2] freeze: fix compilation error with security flags enabled
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+| ../../m4-1.4.9/src/freeze.c: In function 'produce_frozen_state':
+| ../../m4-1.4.9/src/freeze.c:61:7: error: format not a string literal and no format arguments [-Werror=format-security]
+|        M4ERROR ((warning_status, errno, name));
+|        ^~~~~~~
+
+Upstream-Status: Inappropriate [required for m4 1.4.9 (GPLv2) recipe only]
+Signed-off-by: André Draszik <adraszik@tycoint.com>
+---
+ src/freeze.c | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/src/freeze.c b/src/freeze.c
+index 7b8a7bc..eebcc59 100644
+--- a/src/freeze.c
++++ b/src/freeze.c
+@@ -58,7 +58,7 @@ produce_frozen_state (const char *name)
+ 
+   if (file = fopen (name, O_BINARY ? "wb" : "w"), !file)
+     {
+-      M4ERROR ((warning_status, errno, name));
++      M4ERROR ((warning_status, errno, "fopen failed: %s", name));
+       return;
+     }
+ 
+-- 
+2.11.0
+
diff --git a/recipes-devtools/m4/m4/0002-build-don-t-need-charset.alias-when-building-for-mus.patch b/recipes-devtools/m4/m4/0002-build-don-t-need-charset.alias-when-building-for-mus.patch
new file mode 100644
index 0000000..4cd4889
--- /dev/null
+++ b/recipes-devtools/m4/m4/0002-build-don-t-need-charset.alias-when-building-for-mus.patch
@@ -0,0 +1,44 @@
+From c7fa0a47956570682e289937bf6f2d0516f491c6 Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <adraszik@tycoint.com>
+Date: Thu, 23 Mar 2017 12:24:02 +0000
+Subject: [PATCH 2/2] build: don't need charset.alias when building for musl
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+Upstream-Status: Inappropriate [required for m4 1.4.9 (GPLv2) recipe only]
+Signed-off-by: André Draszik <adraszik@tycoint.com>
+---
+ lib/Makefile.am | 9 +++++++--
+ 1 file changed, 7 insertions(+), 2 deletions(-)
+
+diff --git a/lib/Makefile.am b/lib/Makefile.am
+index 2575743..4dc17fe 100644
+--- a/lib/Makefile.am
++++ b/lib/Makefile.am
+@@ -290,7 +290,11 @@ all-local: charset.alias ref-add.sed ref-del.sed
+ charset_alias = $(DESTDIR)$(libdir)/charset.alias
+ charset_tmp = $(DESTDIR)$(libdir)/charset.tmp
+ install-exec-local: all-local
+-	test $(GLIBC21) != no || $(mkinstalldirs) $(DESTDIR)$(libdir)
++	case '$(host_os)' in \
++	    linux-musl*) \
++	      : ;;\
++	    *) \
++	test $(GLIBC21) != no || $(mkinstalldirs) $(DESTDIR)$(libdir) ;\
+ 	if test -f $(charset_alias); then \
+ 	  sed -f ref-add.sed $(charset_alias) > $(charset_tmp) ; \
+ 	  $(INSTALL_DATA) $(charset_tmp) $(charset_alias) ; \
+@@ -301,7 +305,8 @@ install-exec-local: all-local
+ 	    $(INSTALL_DATA) $(charset_tmp) $(charset_alias) ; \
+ 	    rm -f $(charset_tmp) ; \
+ 	  fi ; \
+-	fi
++	fi ;\
++	esac
+ 
+ uninstall-local: all-local
+ 	if test -f $(charset_alias); then \
+-- 
+2.11.0
+
-- 
2.11.0


