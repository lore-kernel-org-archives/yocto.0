Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C573BE00B58; Fri, 10 Aug 2018 01:10:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16822E00A38
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 01:10:26 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w7A8AQFw010858
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 01:10:26 -0700 (PDT)
Received: from pek-lpg-core2.corp.ad.wrs.com (128.224.153.41) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.399.0; Fri, 10 Aug 2018 01:10:26 -0700
From: <changqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Fri, 10 Aug 2018 16:09:59 +0800
Message-ID: <1533888603-57726-3-git-send-email-changqing.li@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1533888603-57726-1-git-send-email-changqing.li@windriver.com>
References: <1533888603-57726-1-git-send-email-changqing.li@windriver.com>
MIME-Version: 1.0
Subject: [PATCH][meta-cgl] libsocket6-perl: 0.23 -> 0.28
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
X-List-Received-Date: Fri, 10 Aug 2018 08:10:27 -0000
Content-Type: text/plain

From: Changqing Li <changqing.li@windriver.com>

License-Update: copyright year update

Signed-off-by: Changqing Li <changqing.li@windriver.com>
---
 .../0001-socket6-perl-fix-configure-error.patch    | 34 ++++++++++++++++++++++
 ...ocket6-perl_0.23.bb => libsocket6-perl_0.28.bb} | 10 ++++---
 2 files changed, 40 insertions(+), 4 deletions(-)
 create mode 100644 meta-cgl-common/recipes-perl/perl/libsocket6-perl/0001-socket6-perl-fix-configure-error.patch
 rename meta-cgl-common/recipes-perl/perl/{libsocket6-perl_0.23.bb => libsocket6-perl_0.28.bb} (72%)

diff --git a/meta-cgl-common/recipes-perl/perl/libsocket6-perl/0001-socket6-perl-fix-configure-error.patch b/meta-cgl-common/recipes-perl/perl/libsocket6-perl/0001-socket6-perl-fix-configure-error.patch
new file mode 100644
index 0000000..07745c8
--- /dev/null
+++ b/meta-cgl-common/recipes-perl/perl/libsocket6-perl/0001-socket6-perl-fix-configure-error.patch
@@ -0,0 +1,34 @@
+From b33a6a83687fc58cd5f662d44ba8819498cb80a4 Mon Sep 17 00:00:00 2001
+From: Changqing Li <changqing.li@windriver.com>
+Date: Thu, 9 Aug 2018 14:10:32 +0800
+Subject: [PATCH] socket6-perl: fix configure error
+
+only do IPv6_CHECK_INET_NTOP when not cross compile to fix below
+error: checking for working inet_ntop..., configure: error:
+cannot run test program while cross compiling
+
+Upstream-Status: Inappropriate [oe specific]
+
+Signed-off-by: Changqing Li <changqing.li@windriver.com>
+---
+ configure.in | 4 +++-
+ 1 file changed, 3 insertions(+), 1 deletion(-)
+
+diff --git a/configure.in b/configure.in
+index 1fe22e1..1a7cf94 100644
+--- a/configure.in
++++ b/configure.in
+@@ -63,7 +63,9 @@ if test $ac_cv_lib_inet6_getaddrinfo = yes; then
+ 	INET6LIBS="-L$ipv6_cv_dir/lib -linet6"
+ fi
+ 
+-IPv6_CHECK_INET_NTOP()
++if test "$cross_compiling" != yes; then
++	IPv6_CHECK_INET_NTOP()
++fi
+ IPv6_CHECK_SA_LEN()
+ IPv6_CHECK_SIN6_SCOPE_ID()
+ IPv6_CHECK_SOCKLEN_T()
+-- 
+2.7.4
+
diff --git a/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.23.bb b/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.28.bb
similarity index 72%
rename from meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.23.bb
rename to meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.28.bb
index 5ab0f4a..f76ff22 100644
--- a/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.23.bb
+++ b/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.28.bb
@@ -2,7 +2,7 @@ DESCRIPTION = "Perl extensions for IPv6"
 HOMEPAGE = "https://metacpan.org/release/Socket6"
 SECTION = "libs"
 LICENSE = "BSD"
-LIC_FILES_CHKSUM = "file://README;beginline=31;md5=ad207d410de6d8ca6b4655469baa1ab4"
+LIC_FILES_CHKSUM = "file://README;beginline=31;md5=aa15b0e3744ac40eaada8738eccd24df"
 PR = "r2"
 
 BBCLASSEXTEND = "native"
@@ -10,9 +10,11 @@ BBCLASSEXTEND = "native"
 CFLAGS += "-D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE"
 BUILD_CFLAGS += "-D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE"
 
-SRC_URI = "http://search.cpan.org/CPAN/authors/id/U/UM/UMEMOTO/Socket6-${PV}.tar.gz;name=socket6-perl-${PV}"
-SRC_URI[socket6-perl-0.23.md5sum] = "2c02adb13c449d48d232bb704ddbd492"
-SRC_URI[socket6-perl-0.23.sha256sum] = "eda753f0197e8c3c8d4ab20a634561ce84011fa51aa5ff40d4dbcb326ace0833"
+SRC_URI = "http://search.cpan.org/CPAN/authors/id/U/UM/UMEMOTO/Socket6-${PV}.tar.gz;name=socket6-perl-${PV} \
+           file://0001-socket6-perl-fix-configure-error.patch \
+"
+SRC_URI[socket6-perl-0.28.md5sum] = "aa8489135a3dbcec6233396e1aeb043b"
+SRC_URI[socket6-perl-0.28.sha256sum] = "bfd49ab99f3197c99285fed4683c4edc06277c1e4453f593e694d7bff0974586"
 
 S = "${WORKDIR}/Socket6-${PV}"
 
-- 
2.7.4


