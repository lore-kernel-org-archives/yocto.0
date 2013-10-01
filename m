Return-Path: <joe@deserted.net>
Received: from mail-qc0-f169.google.com (mail-qc0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3D6CE0162F
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2013 11:37:26 -0700 (PDT)
Received: by mail-qc0-f169.google.com with SMTP id c9so5093248qcz.0
	for <yocto@yoctoproject.org>; Tue, 01 Oct 2013 11:37:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=u2mNYgeG64xR+UVMKbK/xf60A6FNy1QimOaXdrGkEY8=;
	b=Xx+jTob1DFO0s5yvHewUR0kXlLPCS/JdPhIh0gH0IAcA4h1/y+MijXFyJgI/tlztpF
	U9c8fZDIrQr80KZ5m3zKmmxeUt+9g6hzAhWHDzGEM2CO8nd5rjcjHxjb8CO/ugE7n6py
	NjS+9ZK0ovwBPW7A92W6jOl69aEDcHUjCaM1atPUjPIaloTLLGePiMbPNVzus777G8D9
	eFQbH3kmKNKEoEGHDxVP22Qx0EQ3JaxSqgPpG/2Ru+nVEBQFhVi533GYfWmRbhcYvvbc
	o4e+AUFkdmk3MD5g1wJNNynDbbMpFgNsox9AWIecBYhqgPcSrTdA94nHjj4+gJpd3bWS
	IVpw==
X-Gm-Message-State: ALoCoQnmxkIxADzgfC8+R78hWXvLy8m/Qw8GeGBEKhztXdIgZb0VWc0murK4skQz4+WMmv9yrIVb
X-Received: by 10.49.25.41 with SMTP id z9mr38127499qef.72.1380652645491;
	Tue, 01 Oct 2013 11:37:25 -0700 (PDT)
Received: from burninator.deserted.net (198-84-238-35.cpe.teksavvy.com.
	[198.84.238.35])
	by mx.google.com with ESMTPSA id e7sm16348326qag.7.1969.12.31.16.00.00
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 01 Oct 2013 11:37:24 -0700 (PDT)
From: Joe MacDonald <joe@deserted.net>
To: yocto@yoctoproject.org
Date: Tue,  1 Oct 2013 14:37:18 -0400
Message-Id: <1380652639-16684-1-git-send-email-joe@deserted.net>
X-Mailer: git-send-email 1.7.10.4
Subject: [v2][meta-security][PATCH] Bastille/lib-perl: Remove dependency on lib-perl
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
X-List-Received-Date: Tue, 01 Oct 2013 18:37:27 -0000

Remove lib-perl from meta-security entirely since it has been a part of
PERL since 5.001.

The Bastille dependency is now on perl-module-lib, already noted as an
RDEPENDS for other parts of meta-security.

Signed-off-by: Joe MacDonald <joe@deserted.net>
---
 recipes-security/bastille/bastille_3.2.1.bb |    2 +-
 recipes-security/perl/lib-perl_0.63.bb      |   28 ---------------------------
 2 files changed, 1 insertion(+), 29 deletions(-)
 delete mode 100644 recipes-security/perl/lib-perl_0.63.bb

diff --git a/recipes-security/bastille/bastille_3.2.1.bb b/recipes-security/bastille/bastille_3.2.1.bb
index 969ce30..d2f9aa6 100644
--- a/recipes-security/bastille/bastille_3.2.1.bb
+++ b/recipes-security/bastille/bastille_3.2.1.bb
@@ -6,7 +6,7 @@ LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=c93c0550bd3173f4504b2cbd8991e50b"
 # Bash is needed for set +o privileged (check busybox), might also need ncurses
 DEPENDS = "virtual/kernel"
-RDEPENDS_${PN} = "perl bash tcl perl-module-getopt-long perl-module-text-wrap lib-perl perl-module-file-path perl-module-mime-base64 perl-module-file-find perl-module-errno perl-module-file-glob perl-module-tie-hash-namedcapture perl-module-file-copy perl-module-english perl-module-exporter perl-module-cwd libcurses-perl coreutils"
+RDEPENDS_${PN} = "perl bash tcl perl-module-getopt-long perl-module-text-wrap perl-module-lib perl-module-file-path perl-module-mime-base64 perl-module-file-find perl-module-errno perl-module-file-glob perl-module-tie-hash-namedcapture perl-module-file-copy perl-module-english perl-module-exporter perl-module-cwd libcurses-perl coreutils"
 FILES_${PN} += "/run/lock/subsys/bastille"
 
 inherit allarch module-base
diff --git a/recipes-security/perl/lib-perl_0.63.bb b/recipes-security/perl/lib-perl_0.63.bb
deleted file mode 100644
index c05ae1e..0000000
--- a/recipes-security/perl/lib-perl_0.63.bb
+++ /dev/null
@@ -1,28 +0,0 @@
-DESCRIPTION = "This is a small simple module which simplifies the \
-manipulation of @INC at compile time. It is typically used to add extra \
-directories to Perl's search path so that later "use" or "require" statements \
-will find modules which are not located in the default search path."
-
-SECTION = "libs"
-LICENSE = "Artistic-1.0 | GPL-1.0+"
-PR = "r0"
-
-LIC_FILES_CHKSUM = "file://README;beginline=26;endline=30;md5=94b119f1a7b8d611efc89b5d562a1a50"
-
-DEPENDS += "perl"
-
-SRC_URI = "http://www.cpan.org/authors/id/S/SM/SMUELLER/lib-${PV}.tar.gz"
-
-SRC_URI[md5sum] = "8607ac4e0d9d43585ec28312f52df67c"
-SRC_URI[sha256sum] = "72f63db9220098e834d7a38231626bd0c9b802c1ec54a628e2df35f3818e5a00"
-
-S = "${WORKDIR}/lib-${PV}"
-
-EXTRA_CPANFLAGS = "EXPATLIBPATH=${STAGING_LIBDIR} EXPATINCPATH=${STAGING_INCDIR}"
-
-inherit cpan
-
-do_compile() {
-	export LIBC="$(find ${STAGING_DIR_TARGET}/${base_libdir}/ -name 'libc-*.so')"
-	cpan_do_compile
-}
-- 
1.7.10.4


