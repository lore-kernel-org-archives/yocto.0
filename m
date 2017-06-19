Return-Path: <andre.draszik@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 870EDE00BA2; Mon, 19 Jun 2017 03:28:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8B2BE00B27
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 03:28:22 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id d64so16025852wmf.2
	for <yocto@yoctoproject.org>; Mon, 19 Jun 2017 03:28:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-transfer-encoding;
	bh=CAk8db5H6pGGx5AULKlM3Gcy8xP3nlmm/v1FzSLnyNI=;
	b=qjHndtVmMJBEZn4nWhDLFVyfZuWjQ56wfXmyxtYwLMWLm7AiKvNVOXjKjuqLgwuayE
	4k+5SRS/oQa9EF8MRUwjKtHB0/zL+Ot55fyTjiQe9yKJ/a/EzO+rMtlmV+GDZmuH+yW6
	4NPSFDlX4crYvZSqK1DZrsrkCCqifgjNmjBPgBaBzD+QZhvjtkUtJIj0t0r6zxIRImwo
	WlSJ0/xfKwGp8RTZ56VCYOw1ll1xJfljrF1dXKSQlw8jY+TEsTHHDunisr/qnw/jvVxJ
	nyngb2mAsC1fM156+u67zV+q83BEekVRFKBC80JpqyaxcqIPbD5juRfmj58jaEb3yhd3
	2N3Q==
X-Gm-Message-State: AKS2vOxp5RfBgrlxGPBxXFSy9VQTU4kpS5kEmwbzzkRkDdBZlRs8JvJz
	8khQuCV/AoaMebmigu4=
X-Received: by 10.28.66.86 with SMTP id p83mr15552116wma.31.1497868101478;
	Mon, 19 Jun 2017 03:28:21 -0700 (PDT)
Received: from tfsielt31850.tycofs.com ([77.107.218.170])
	by smtp.gmail.com with ESMTPSA id 99sm2516274wrl.43.2017.06.19.03.28.20
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 19 Jun 2017 03:28:20 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <git@andred.net>
To: yocto@yoctoproject.org
Date: Mon, 19 Jun 2017 11:28:18 +0100
Message-Id: <20170619102819.1181-2-git@andred.net>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Subject: [meta-gplv2][PATCH] coreutils: fix musl compilation
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
X-List-Received-Date: Mon, 19 Jun 2017 10:28:23 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: André Draszik <adraszik@tycoint.com>

As per the patch

Signed-off-by: André Draszik <adraszik@tycoint.com>
Acked-by: Sylvain Lemieux <slemieux@tycoint.com>
---
 ...-need-charset.alias-when-building-for-mus.patch | 44 ++++++++++++++++++++++
 recipes-core/coreutils/coreutils_6.9.bb            |  1 +
 2 files changed, 45 insertions(+)
 create mode 100644 recipes-core/coreutils/coreutils-6.9/build-don-t-need-charset.alias-when-building-for-mus.patch

diff --git a/recipes-core/coreutils/coreutils-6.9/build-don-t-need-charset.alias-when-building-for-mus.patch b/recipes-core/coreutils/coreutils-6.9/build-don-t-need-charset.alias-when-building-for-mus.patch
new file mode 100644
index 0000000..2e0bfb7
--- /dev/null
+++ b/recipes-core/coreutils/coreutils-6.9/build-don-t-need-charset.alias-when-building-for-mus.patch
@@ -0,0 +1,44 @@
+From 542811eecc05c6c43590bde3852598aa6277abf3 Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Andr=C3=A9=20Draszik?= <adraszik@tycoint.com>
+Date: Thu, 23 Mar 2017 12:46:07 +0000
+Subject: [PATCH] build: don't need charset.alias when building for musl
+MIME-Version: 1.0
+Content-Type: text/plain; charset=UTF-8
+Content-Transfer-Encoding: 8bit
+
+Upstream-Status: Inappropriate [required for coreutils 6.9 (GPLv2) recipe only]
+Signed-off-by: André Draszik <adraszik@tycoint.com>
+---
+ lib/gnulib.mk | 9 +++++++--
+ 1 file changed, 7 insertions(+), 2 deletions(-)
+
+diff --git a/lib/gnulib.mk b/lib/gnulib.mk
+index e833d14..04b2b74 100644
+--- a/lib/gnulib.mk
++++ b/lib/gnulib.mk
+@@ -907,7 +907,11 @@ all-local: charset.alias ref-add.sed ref-del.sed
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
+@@ -918,7 +922,8 @@ install-exec-local: all-local
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
diff --git a/recipes-core/coreutils/coreutils_6.9.bb b/recipes-core/coreutils/coreutils_6.9.bb
index 5c60048..31e5c7e 100644
--- a/recipes-core/coreutils/coreutils_6.9.bb
+++ b/recipes-core/coreutils/coreutils_6.9.bb
@@ -27,6 +27,7 @@ SRC_URI = "${GNU_MIRROR}/coreutils/${BP}.tar.bz2 \
            file://fix_for_manpage_building.patch \
            file://loadavg.patch \
            file://no-man.patch \
+           file://build-don-t-need-charset.alias-when-building-for-mus.patch \
            "
 
 SRC_URI[md5sum] = "c9607d8495f16e98906e7ed2d9751a06"
-- 
2.11.0


