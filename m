Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FABEE006EF; Sun, 27 Jul 2014 16:49:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.42 listed in list.dnswl.org]
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44BF1E004D9
	for <yocto@yoctoproject.org>; Sun, 27 Jul 2014 16:49:02 -0700 (PDT)
Received: by mail-pa0-f42.google.com with SMTP id lf10so9320656pab.15
	for <yocto@yoctoproject.org>; Sun, 27 Jul 2014 16:49:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Q4dg+XvQgR1LtYnGFLRuPua3jPLwr5YOS9jJ+KTr/mw=;
	b=fvnKROj12bq2KVT0k+5jepYC1tLfA0JWX3UW+BQJaUJdqeTwsy2gVPtwDxpWRb0L+Y
	EZqXparpNHmGkwSVX9q2eHeUIfdjC8ADEIFJ/cDtkDNkjkBd2YbKkHcZq23D9iHciREz
	h1bWiR9X+Mn4wRY/Qtg31fBimyrBgC1iNqe8VOmfSOU6d0eWnRQxknJ9HJ4qfDR4w3lN
	FlLSMWwM6AYwK3sijA3LGaewmkBXRrLVjRrTxQTR6lmHQcf/ghvVrlqYTcJ3bY9JhL2o
	V+6lEot5TBtjfuZN5w7qy69Qj79vVfLpYBCGpq/CMa8DGxmFtbmLK3CyXS7BiBwtDhfD
	In1w==
X-Gm-Message-State: ALoCoQknEopKIhH0jb7S6tP7/1SisRDrTSfiZcVhbsHnBz5i+up+IP9b0lFbY8S6Uy4+8rNm8dwM
X-Received: by 10.70.132.1 with SMTP id oq1mr29947938pdb.45.1406504942061;
	Sun, 27 Jul 2014 16:49:02 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-98-239-95-55.hsd1.ca.comcast.net.
	[98.239.95.55]) by mx.google.com with ESMTPSA id
	w10sm15651525pbt.17.2014.07.27.16.49.00 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sun, 27 Jul 2014 16:49:01 -0700 (PDT)
From: Armin Kuster <akuster@mvista.com>
To: yocto@yoctoproject.org
Date: Sun, 27 Jul 2014 16:48:50 -0700
Message-Id: <1406504930-30742-1-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 1.9.1
Subject: [meta-security][PATCH] libcurses-perl: Fix build issue
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
X-List-Received-Date: Sun, 27 Jul 2014 23:49:08 -0000

Update to later vesrion to fix build issue.

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 recipes-security/perl/libcurses-perl_1.28.bb | 26 --------------------------
 recipes-security/perl/libcurses-perl_1.31.bb | 27 +++++++++++++++++++++++++++
 2 files changed, 27 insertions(+), 26 deletions(-)
 delete mode 100644 recipes-security/perl/libcurses-perl_1.28.bb
 create mode 100644 recipes-security/perl/libcurses-perl_1.31.bb

diff --git a/recipes-security/perl/libcurses-perl_1.28.bb b/recipes-security/perl/libcurses-perl_1.28.bb
deleted file mode 100644
index d05a0f2..0000000
--- a/recipes-security/perl/libcurses-perl_1.28.bb
+++ /dev/null
@@ -1,26 +0,0 @@
-DESCRIPTION = "lib-curses provides an interface between Perl programs and \
-the curses library."
-
-SECTION = "libs"
-LICENSE = "Artistic-1.0 | GPL-1.0+"
-PR = "r0"
-
-LIC_FILES_CHKSUM = "file://README;beginline=26;endline=30;md5=0b37356c5e9e28080a3422d82af8af09"
-
-DEPENDS += "perl ncurses"
-
-SRC_URI = "http://www.cpan.org/authors/id/G/GI/GIRAFFED/Curses-1.28.tgz"
-
-SRC_URI[md5sum] = "ed9f7ddf2d90f4266da91c3dc9fad9c9"
-SRC_URI[sha256sum] = "613b73c4b6075b1550592812214e4fc0e2205d3afcf234e3fa90f208fb8de892"
-
-S = "${WORKDIR}/Curses-${PV}"
-
-EXTRA_CPANFLAGS = "EXPATLIBPATH=${STAGING_LIBDIR} EXPATINCPATH=${STAGING_INCDIR}"
-
-inherit cpan
-
-do_compile() {
-	export LIBC="$(find ${STAGING_DIR_TARGET}/${base_libdir}/ -name 'libc-*.so')"
-	cpan_do_compile
-}
diff --git a/recipes-security/perl/libcurses-perl_1.31.bb b/recipes-security/perl/libcurses-perl_1.31.bb
new file mode 100644
index 0000000..bd74439
--- /dev/null
+++ b/recipes-security/perl/libcurses-perl_1.31.bb
@@ -0,0 +1,27 @@
+DESCRIPTION = "lib-curses provides an interface between Perl programs and \
+the curses library."
+
+SECTION = "libs"
+LICENSE = "Artistic-1.0 | GPL-1.0+"
+PR = "r0"
+
+LIC_FILES_CHKSUM = "file://README;beginline=26;endline=30;md5=0b37356c5e9e28080a3422d82af8af09"
+
+DEPENDS += "perl ncurses "
+
+SRC_URI = "http://www.cpan.org/authors/id/G/GI/GIRAFFED/Curses-${PV}.tgz"
+
+SRC_URI[md5sum] = "119aff0faaa9347ed32dad127c4a6707"
+SRC_URI[sha256sum] = "7bb4623ac97125c85e25f9fbf980103da7ca51c029f704f0aa129b7a2e50a27a"
+
+S = "${WORKDIR}/Curses-${PV}"
+
+EXTRA_CPANFLAGS = "INC=-I${STAGING_INCDIR} LIBS=-L${STAGING_LIBDIR}"
+
+inherit cpan
+
+do_compile() {
+    export LIBC="$(find ${STAGING_DIR_TARGET}/${base_libdir}/ -name 'libc-*.so')"
+    cpan_do_compile
+}
+
-- 
1.9.1


