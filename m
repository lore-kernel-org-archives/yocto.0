Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1F26E00D24; Mon, 14 Jan 2019 06:42:31 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com
	[209.85.221.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A315E00D2D
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 06:42:27 -0800 (PST)
Received: by mail-wr1-f42.google.com with SMTP id p4so23139687wrt.7
	for <yocto@yoctoproject.org>; Mon, 14 Jan 2019 06:42:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=lQlQy3IltGgieZR4sYjbj0ZXn27UXgMi3vE166nVx+0=;
	b=atji7WlnhGkzhNeHEZKIR2Gp84RXySpPfyfE0+ab63EjjphwrA4gPtgCXbGt9UwacZ
	UzJLRgDa0dzI91IJe6Tuq0SIcy8vXz786/8OrVcaoEg97Nt+fkI2cndOdrOEtPU86H43
	sx0WxCC/MNqqKubHFA8YM/nXGO39ZlHu9jzb2SzTYOL7jGAg99eQ9gjhESr0jV85bjIR
	6YLxnngOL0z4agF3t6d5KJ8+kHMINmM4AOagqFwI567hb+VoKg5FwGm0voDwkqefp6Cc
	Mfl4fwkzsCDyZL1kheSyOCr55JKVO5X7egZhn5Bw27owrwYumTpWYQBSGtnk6AyoQy5Z
	nYSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=lQlQy3IltGgieZR4sYjbj0ZXn27UXgMi3vE166nVx+0=;
	b=AV8tc+A4p20gE789ysed1qJX/4QjTprJ5N+rS7/y2sW4g1f+IxRQ19f0JeB2SShH1U
	z1MjVtwgAbzIVxc2kzHHXZNkUzgIG6SiUTcQQeNSWXniZEqDQ33ZT2tV8gK/PaT9pu9E
	XJ5xge/CFO8a3nP/sMaMaaJa8CN8E6uZC3+iIG4JNe6vgM3InU379+SgoraaJVz9PQFH
	N7ziB2shGIyFItlmJTWE65r0xttZ7d9cfO8/d1ZuvYWJXapEQ8NVJFrOrorOit/8W0GS
	TGWdwILzSxWvB1zxGhzorPfSvtg4EhbtkXzDdfpRQ8bFxzSbzujP+L6l5zzq5e0Kx2GN
	dhHg==
X-Gm-Message-State: AJcUukfER+Oo3Cf/Z4ZCSYjCBIy4KrMgWVyukkWp696uNCjPTjz6+HsV
	UbKU/U2h/B0y19xEJywKq18DWfwK/lo=
X-Google-Smtp-Source: ALg8bN5K0j3O7q/7FJALZ9K6FiL4SJuOL+iEcuS2s10BLC0KhCdz3Iao3R+GWfyo8KjBikT/IMQgnA==
X-Received: by 2002:adf:c846:: with SMTP id e6mr23620448wrh.243.1547476946957; 
	Mon, 14 Jan 2019 06:42:26 -0800 (PST)
Received: from flashheart.burtonini.com (35.106.2.81.in-addr.arpa.
	[81.2.106.35]) by smtp.gmail.com with ESMTPSA id
	s3sm22517084wmj.23.2019.01.14.06.42.25 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 14 Jan 2019 06:42:26 -0800 (PST)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Mon, 14 Jan 2019 14:42:08 +0000
Message-Id: <20190114144208.14353-11-ross.burton@intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190114144208.14353-1-ross.burton@intel.com>
References: <20190114144208.14353-1-ross.burton@intel.com>
Subject: [meta-security][PATCH 11/11] apparmor: backport a patch to fix tool paths instead of sedding
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
X-List-Received-Date: Mon, 14 Jan 2019 14:42:31 -0000

Sedding is ugly, and as upstream have already fixed this cherry-pick the patch
instead.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 recipes-security/AppArmor/apparmor_2.12.bb       |  3 +-
 recipes-security/AppArmor/files/tool-paths.patch | 37 ++++++++++++++++++++++++
 2 files changed, 38 insertions(+), 2 deletions(-)
 create mode 100644 recipes-security/AppArmor/files/tool-paths.patch

diff --git a/recipes-security/AppArmor/apparmor_2.12.bb b/recipes-security/AppArmor/apparmor_2.12.bb
index ac03a56..efa93e6 100644
--- a/recipes-security/AppArmor/apparmor_2.12.bb
+++ b/recipes-security/AppArmor/apparmor_2.12.bb
@@ -17,6 +17,7 @@ SRC_URI = " \
 	http://archive.ubuntu.com/ubuntu/pool/main/a/${BPN}/${BPN}_${PV}.orig.tar.gz \
 	file://disable_perl_h_check.patch \
 	file://crosscompile_perl_bindings.patch \
+	file://tool-paths.patch \
 	file://apparmor.rc \
 	file://functions \
 	file://apparmor \
@@ -56,8 +57,6 @@ do_configure() {
 	libtoolize --automake -c --force
 	automake -ac
 	./configure ${CONFIGUREOPTS} ${EXTRA_OECONF}
-	sed -i -e 's#^YACC.*#YACC := bison#' ${S}/parser/Makefile
-	sed -i -e 's#^LEX.*#LEX := flex#' ${S}/parser/Makefile
 }
 
 do_compile () {
diff --git a/recipes-security/AppArmor/files/tool-paths.patch b/recipes-security/AppArmor/files/tool-paths.patch
new file mode 100644
index 0000000..aaf08da
--- /dev/null
+++ b/recipes-security/AppArmor/files/tool-paths.patch
@@ -0,0 +1,37 @@
+Upstream-Status: Backport
+Signed-off-by: Ross Burton <ross.burton@intel.com>
+
+From e7edd937adcbf1b3c8d38a31de5bacb2029b1965 Mon Sep 17 00:00:00 2001
+From: John Johansen <john.johansen@canonical.com>
+Date: Thu, 4 Oct 2018 23:15:28 -0700
+Subject: [PATCH] parser: fix Makefile hardcoded paths to flex and bison
+
+The hardcoded paths for flex and python can break builds on systems
+where those tools are stored in an alternate location. Use which
+to lookup where flex and bison are available.
+
+This fixes issue #4
+
+Signed-off-by: John Johansen <john.johansen@canonical.com>
+---
+ parser/Makefile | 4 ++--
+ 1 file changed, 2 insertions(+), 2 deletions(-)
+
+diff --git a/parser/Makefile b/parser/Makefile
+index 4d370c36..015c218d 100644
+--- a/parser/Makefile
++++ b/parser/Makefile
+@@ -27,9 +27,9 @@ INSTALL_CONFDIR=${DESTDIR}${CONFDIR}
+ LOCALEDIR=/usr/share/locale
+ MANPAGES=apparmor.d.5 apparmor.7 apparmor_parser.8 subdomain.conf.5
+ 
+-YACC	:= /usr/bin/bison
++YACC	:= bison
+ YFLAGS	:= -d
+-LEX	:= /usr/bin/flex
++LEX	:= flex
+ LEXFLAGS = -B -v
+ WARNINGS = -Wall
+ EXTRA_WARNINGS = -Wsign-compare -Wmissing-field-initializers -Wformat-security -Wunused-parameter
+-- 
+2.11.0
-- 
2.11.0


