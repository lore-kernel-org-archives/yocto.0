Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAF43E0082F; Fri, 26 Dec 2014 18:48:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f175.google.com (mail-pd0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFB9AE0082F
	for <yocto@yoctoproject.org>; Fri, 26 Dec 2014 18:48:22 -0800 (PST)
Received: by mail-pd0-f175.google.com with SMTP id g10so13826790pdj.20
	for <yocto@yoctoproject.org>; Fri, 26 Dec 2014 18:48:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id;
	bh=IYHcbfGUsK09uoSmcj9dUv0BBsZPfI+B2/xkMXLRrL8=;
	b=0RDEq0BmmfqP0q86++1yYQKvmt+8IU5pqfWeBnke5sJU6mYDXa/XV7ukubOmR2kPnW
	uuC9ZYoV7VUKuGWdRXSny3Mmq1G41nxGp+J15JL0F7oAiXqBLNkFeShaT0VNAx/FkDlb
	HluOONCuTiA7jpM8PX9Bt2e8M5O7IdO4Qq6pLb4Q0qRr9Vy4m8LkIPidpbS9vH1Y72RL
	723V+e2LLRvv67W0bwthraiZE1Bo4JZNEMGxyVdBHCCoTVtUwwykZMbN+Y7Ae4cjevfD
	8F1Ke3cdgTczCAgnrcsI+fkW3OrfEwxr4KtbfMGx/1K7itUkNzK1ngAuVJQLLzscOmEv
	rjuA==
X-Received: by 10.66.119.239 with SMTP id kx15mr62715885pab.11.1419648502124; 
	Fri, 26 Dec 2014 18:48:22 -0800 (PST)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207])
	by mx.google.com with ESMTPSA id s3sm26212811pdg.28.2014.12.26.18.48.19
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 26 Dec 2014 18:48:20 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 26 Dec 2014 18:48:15 -0800
Message-Id: <1419648497-10738-1-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH 1/3] remove: libcurses-perl, libhtml-parser-perl, libnet-dns-perl
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
X-List-Received-Date: Sat, 27 Dec 2014 02:48:29 -0000

those packages are being moved to meta-perl.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/perl/libcurses-perl_1.31.bb      | 27 -----------------------
 recipes-security/perl/libhtml-parser-perl_3.71.bb | 25 ---------------------
 recipes-security/perl/libnet-dns-perl_0.72.bb     | 25 ---------------------
 3 files changed, 77 deletions(-)
 delete mode 100644 recipes-security/perl/libcurses-perl_1.31.bb
 delete mode 100644 recipes-security/perl/libhtml-parser-perl_3.71.bb
 delete mode 100644 recipes-security/perl/libnet-dns-perl_0.72.bb

diff --git a/recipes-security/perl/libcurses-perl_1.31.bb b/recipes-security/perl/libcurses-perl_1.31.bb
deleted file mode 100644
index bd74439..0000000
--- a/recipes-security/perl/libcurses-perl_1.31.bb
+++ /dev/null
@@ -1,27 +0,0 @@
-DESCRIPTION = "lib-curses provides an interface between Perl programs and \
-the curses library."
-
-SECTION = "libs"
-LICENSE = "Artistic-1.0 | GPL-1.0+"
-PR = "r0"
-
-LIC_FILES_CHKSUM = "file://README;beginline=26;endline=30;md5=0b37356c5e9e28080a3422d82af8af09"
-
-DEPENDS += "perl ncurses "
-
-SRC_URI = "http://www.cpan.org/authors/id/G/GI/GIRAFFED/Curses-${PV}.tgz"
-
-SRC_URI[md5sum] = "119aff0faaa9347ed32dad127c4a6707"
-SRC_URI[sha256sum] = "7bb4623ac97125c85e25f9fbf980103da7ca51c029f704f0aa129b7a2e50a27a"
-
-S = "${WORKDIR}/Curses-${PV}"
-
-EXTRA_CPANFLAGS = "INC=-I${STAGING_INCDIR} LIBS=-L${STAGING_LIBDIR}"
-
-inherit cpan
-
-do_compile() {
-    export LIBC="$(find ${STAGING_DIR_TARGET}/${base_libdir}/ -name 'libc-*.so')"
-    cpan_do_compile
-}
-
diff --git a/recipes-security/perl/libhtml-parser-perl_3.71.bb b/recipes-security/perl/libhtml-parser-perl_3.71.bb
deleted file mode 100644
index be0f4b2..0000000
--- a/recipes-security/perl/libhtml-parser-perl_3.71.bb
+++ /dev/null
@@ -1,25 +0,0 @@
-DESCRIPTION = "This package contains the Parser.pm module with friends."
-
-SECTION = "libs"
-LICENSE = "Artistic-1.0 | GPL-1.0+"
-
-LIC_FILES_CHKSUM = "file://README;md5=6c3dacf9f405c7483870ab5f148770c3"
-
-DEPENDS += "perl"
-
-SRC_URI = "http://search.cpan.org/CPAN/authors/id/G/GA/GAAS/HTML-Parser-${PV}.tar.gz"
-
-SRC_URI[md5sum] = "9128a45893097dfa3bf03301b19c5efe"
-SRC_URI[sha256sum] = "be918b3749d3ff93627f72ee4b825683332ecb4c81c67a3a8d72b0435ffbd802"
-
-S = "${WORKDIR}/HTML-Parser-${PV}"
-
-EXTRA_CPANFLAGS = "EXPATLIBPATH=${STAGING_LIBDIR} EXPATINCPATH=${STAGING_INCDIR}"
-
-inherit cpan
-
-do_compile() {
-	export LIBC="$(find ${STAGING_DIR_TARGET}/${base_libdir}/ -name 'libc-*.so')"
-	cpan_do_compile
-}
-BBCLASSEXTEND = "native"
diff --git a/recipes-security/perl/libnet-dns-perl_0.72.bb b/recipes-security/perl/libnet-dns-perl_0.72.bb
deleted file mode 100644
index 5c218b8..0000000
--- a/recipes-security/perl/libnet-dns-perl_0.72.bb
+++ /dev/null
@@ -1,25 +0,0 @@
-DESCRIPTION = "This package contains the DNS.pm module with friends."
-
-SECTION = "libs"
-LICENSE = "Artistic-1.0 | GPL-1.0+"
-
-LIC_FILES_CHKSUM = "file://README;md5=f21d77d9c6b56a07470bbce561b169e3"
-
-DEPENDS += "perl"
-
-SRC_URI = "http://search.cpan.org/CPAN/authors/id/N/NL/NLNETLABS/Net-DNS-${PV}.tar.gz"
-
-SRC_URI[md5sum] = "393e48ec6f28abe5ed30204276e02775"
-SRC_URI[sha256sum] = "a62cae0be54a9684c305456cb95515a0bd3128d6ef3093b6069fe8e8e8d5943f"
-
-S = "${WORKDIR}/Net-DNS-${PV}"
-
-EXTRA_CPANFLAGS = "EXPATLIBPATH=${STAGING_LIBDIR} EXPATINCPATH=${STAGING_INCDIR}"
-
-inherit cpan
-
-do_compile() {
-	export LIBC="$(find ${STAGING_DIR_TARGET}/${base_libdir}/ -name 'libc-*.so')"
-	cpan_do_compile
-}
-BBCLASSEXTEND = "native"
-- 
1.9.1


