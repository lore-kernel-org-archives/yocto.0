Return-Path: <wd@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD917E008C9; Wed,  5 Nov 2014 11:30:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.18.0.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 533C2E0080D
	for <yocto@yoctoproject.org>; Wed,  5 Nov 2014 11:30:17 -0800 (PST)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 3jXycm1mzhz3hjcY
	for <yocto@yoctoproject.org>; Wed,  5 Nov 2014 20:30:15 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3jXycl6VLGzvh43
	for <yocto@yoctoproject.org>; Wed,  5 Nov 2014 20:30:15 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.184])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024) with ESMTP id ibW1s4LVhFfs for <yocto@yoctoproject.org>;
	Wed,  5 Nov 2014 20:30:13 +0100 (CET)
X-Auth-Info: baefX/6fGTcw00Mp8ljDFi1oNkqPXrtAw1IeSGnccHc=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA
	for <yocto@yoctoproject.org>; Wed,  5 Nov 2014 20:30:12 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id A2D081AAC2F
	for <yocto@yoctoproject.org>; Wed,  5 Nov 2014 20:30:08 +0100 (CET)
Received: by gemini.denx.de (Postfix, from userid 500)
	id 709413833C8; Wed,  5 Nov 2014 20:30:08 +0100 (MET)
From: Wolfgang Denk <wd@denx.de>
To: yocto@yoctoproject.org
Date: Wed,  5 Nov 2014 20:29:51 +0100
Message-Id: <1415215791-27197-1-git-send-email-wd@denx.de>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <20141027080733.D8D1F380909@gemini.denx.de>
References: <20141027080733.D8D1F380909@gemini.denx.de>
Subject: [PATCH] Perl: fix PERL5LIB settings
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
X-List-Received-Date: Wed, 05 Nov 2014 19:30:32 -0000

The PERL5LIB settings in the perl wrapper script did not include the
"site_perl" or "vendor_perl" directories, which caused some errors.

See https://bugzilla.yoctoproject.org/show_bug.cgi?id=6890

Signed-off-by: Wolfgang Denk <wd@denx.de>
---
 meta/recipes-devtools/perl/perl-native_5.14.3.bb | 4 ++--
 meta/recipes-devtools/perl/perl_5.14.3.bb        | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta/recipes-devtools/perl/perl-native_5.14.3.bb b/meta/recipes-devtools/perl/perl-native_5.14.3.bb
index c9ec2d2..8ea7ddb 100644
--- a/meta/recipes-devtools/perl/perl-native_5.14.3.bb
+++ b/meta/recipes-devtools/perl/perl-native_5.14.3.bb
@@ -101,8 +101,8 @@ do_install () {
 		install $i ${D}${libdir}/perl/${PV}/CORE
 	done
 
-	create_wrapper ${D}${bindir}/perl PERL5LIB='$PERL5LIB:${STAGING_LIBDIR}/perl/${PV}:${STAGING_LIBDIR}/perl/'
-	create_wrapper ${D}${bindir}/perl${PV} PERL5LIB='$PERL5LIB:${STAGING_LIBDIR}/perl/${PV}:${STAGING_LIBDIR}/perl/'
+	create_wrapper ${D}${bindir}/perl PERL5LIB='$PERL5LIB:${STAGING_LIBDIR}/perl/${PV}:${STAGING_LIBDIR}/perl:${STAGING_LIBDIR}/perl/site_perl/${PV}:${STAGING_LIBDIR}/perl/vendor_perl/${PV}'
+	create_wrapper ${D}${bindir}/perl${PV} PERL5LIB='$PERL5LIB:${STAGING_LIBDIR}/perl/${PV}:${STAGING_LIBDIR}/perl${STAGING_LIBDIR}/perl:${STAGING_LIBDIR}/perl/site_perl/${PV}:${STAGING_LIBDIR}/perl/vendor_perl/${PV}'
 }
 
 SYSROOT_PREPROCESS_FUNCS += "perl_sysroot_create_wrapper"
diff --git a/meta/recipes-devtools/perl/perl_5.14.3.bb b/meta/recipes-devtools/perl/perl_5.14.3.bb
index 1e14e17..7ea2c99 100644
--- a/meta/recipes-devtools/perl/perl_5.14.3.bb
+++ b/meta/recipes-devtools/perl/perl_5.14.3.bb
@@ -215,7 +215,7 @@ do_install() {
 
 do_install_append_class-nativesdk () {
         create_wrapper ${D}${bindir}/perl \
-            PERL5LIB='$PERL5LIB:$OECORE_NATIVE_SYSROOT/${libdir_nativesdk}/perl:$OECORE_NATIVE_SYSROOT/${libdir_nativesdk}/perl/${PV}'
+            PERL5LIB='$PERL5LIB:$OECORE_NATIVE_SYSROOT/${libdir_nativesdk}/perl:$OECORE_NATIVE_SYSROOT/${libdir_nativesdk}/perl/${PV}:$OECORE_NATIVE_SYSROOT/${libdir_nativesdk}/perl/site_perl/${PV}:$OECORE_NATIVE_SYSROOT/${libdir_nativesdk}/perl/vendor_perl/${PV}'
 }
 
 PACKAGE_PREPROCESS_FUNCS += "perl_package_preprocess"
-- 
1.8.3.1


