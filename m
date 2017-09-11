Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E3D5E00C89; Sun, 10 Sep 2017 19:06:47 -0700 (PDT)
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
	*      [209.85.192.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E79EE00C35
	for <yocto@yoctoproject.org>; Sun, 10 Sep 2017 19:06:45 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id q76so4298365pfq.5
	for <yocto@yoctoproject.org>; Sun, 10 Sep 2017 19:06:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=bzhfEXr9LQZQw8uXW086/E9CtPlbC1cVxU4junS6cZk=;
	b=h+WdSw21JKVltZao1n9gsQbAnfOA5LHWH2uZSMiF4OxCp0+CrHyRop01Qw+1CV5trd
	zfA41Wk2FQYJxsd2UURZneInLYi3c5ieHHqISMTRMKKdbxjaMn2UKSiVIXhyMU8aq6Pe
	yF3aJqL8C7XZFV/Bmd9RJNX7Z6KUkpVD905SHqftn3lfFTf3Ew0IybjcGds2Wcj+gj1k
	ETv8lZJCYOFEbX0AOiuuaq2R5OT6jZhjGIqALrhwPX6Vh8+aeemYEwFlCW2quqAIS+yT
	xfr2aI3zxK5fqhAF0WT1b/9R26FLwk+/M/QOuUCMiG6cP0ptXii4Sk6d/wG6KJPSBo9c
	eVeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=bzhfEXr9LQZQw8uXW086/E9CtPlbC1cVxU4junS6cZk=;
	b=mNkiote2OMUeO8TblDCVd1RMDhWpdGmPeANMpoFDJG8Clk7jIBWJcj7i2yINuQoC2d
	LLDGLx/UFyxzcLVk2N0txewZWM+THYvW0GdhnCHMiJWdXTpnrJAC8pgxdH4mios7LExP
	A+sScZDTdvbLzfkpHvAbGebkbVJsq+j1jiUbk6U8K8ieDVwFZw92oeZWuzkCG208Jz0r
	ibfOH97Eg9kx7Xrk/yHVRnYKD8VuQzQcIn+jJidVrpBeUNhWoIA6oeQwDUulb82Lhtne
	gsdrUyNhzOgVcUCYFeAgQEbUIxYViVacwtlb42yC9ZEYwwNYXXKwy2gEF4U0zydmbtl3
	NLGg==
X-Gm-Message-State: AHPjjUhQKH5ovrEtfVsJSO8uXy7zkDalKUz0YXf8xv7OwX39ypOSzhfq
	A/pa1oyKNu6GqAkx
X-Google-Smtp-Source: ADKCNb6vXAE537sTocOMP4/2UuvrkQer6dy+rfkujjLqD+VUeS5VN1CxaVEuJHb0+1KJfkusmHt5lQ==
X-Received: by 10.99.56.29 with SMTP id f29mr10257195pga.328.1505095605485;
	Sun, 10 Sep 2017 19:06:45 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com
	([2601:202:4001:9ea0:645a:9f13:1c42:b124])
	by smtp.gmail.com with ESMTPSA id
	d5sm14012680pfg.26.2017.09.10.19.06.44
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 10 Sep 2017 19:06:45 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster@mvista.com,
	yocto@yoctoproject.org
Date: Sun, 10 Sep 2017 19:06:42 -0700
Message-Id: <1505095602-12683-2-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1505095602-12683-1-git-send-email-akuster808@gmail.com>
References: <1505095602-12683-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 2/2] apparmor: fix a few build issues
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
X-List-Received-Date: Mon, 11 Sep 2017 02:06:47 -0000

 configure.ac:8: http://www.gnu.org/software/automake/manual/automake.html#Modernize-AM_005fINIT_005fAUTOMAKE-invocation
| configure.ac:8: error: version mismatch.  This is Automake 1.15.1,
| configure.ac:8: but the definition used by this AM_INIT_AUTOMAKE

add aclocal

and

 make: Entering directory '/home/akuster/oss/clean/poky/build/tmp/work/mips64-poky-linux/apparmor/2.11.0-r0/apparmor-2.11.0/binutils'
| error: ../libraries/libapparmor//src/.libs/libapparmor.a is missing. Pick one of these possible solutions:

remove --disable-static

and

ERROR: apparmor-2.11.0-r0 do_package_qa: QA Issue: /usr/lib/apparmor/ptest/testsuite/parser/tst/gen-dbus.pl contained in package apparmor-ptest requires /usr/bin/perl, but no providers found in RDEPENDS_apparmor-ptest? [file-rdeps]

add perl to ptest RDEPENDS

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/AppArmor/apparmor_2.11.0.bb | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/recipes-security/AppArmor/apparmor_2.11.0.bb b/recipes-security/AppArmor/apparmor_2.11.0.bb
index ae3391d..a83c2c3 100644
--- a/recipes-security/AppArmor/apparmor_2.11.0.bb
+++ b/recipes-security/AppArmor/apparmor_2.11.0.bb
@@ -50,11 +50,14 @@ python() {
         raise bb.parse.SkipRecipe('Requires meta-webserver to be present.')
 }
 
+CONFIGUREOPTS_remove = "--disable-static"
+EXTRA_OECONF_append = " --enable-static"
 
 do_configure() {
 	cd ${S}/libraries/libapparmor
+	aclocal
 	autoconf --force
-	libtoolize --automake -c
+	libtoolize --automake -c --force
 	automake -ac
 	./configure ${CONFIGUREOPTS} ${EXTRA_OECONF}
 	sed -i -e 's#^YACC.*#YACC := bison#' ${S}/parser/Makefile
@@ -148,4 +151,4 @@ ALLOW_EMPTY_${PN} = "1"
 RDEPENDS_${PN} += "bash lsb"
 RDEPENDS_${PN} += "${@bb.utils.contains('PACKAGECONFIG','python','python3 python3-modules','', d)}"
 RDEPENDS_${PN}_remove += "${@bb.utils.contains('PACKAGECONFIG','perl','','perl', d)}"
-RDEPENDS_${PN}-ptest += "coreutils dbus-lib"
+RDEPENDS_${PN}-ptest += "perl coreutils dbus-lib"
-- 
2.7.4


