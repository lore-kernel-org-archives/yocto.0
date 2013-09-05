Return-Path: <mulhern@gmail.com>
Received: from mail-qc0-f173.google.com (mail-qc0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3A48E013FC;
	Thu,  5 Sep 2013 14:56:21 -0700 (PDT)
Received: by mail-qc0-f173.google.com with SMTP id c3so1295421qcv.18
	for <multiple recipients>; Thu, 05 Sep 2013 14:56:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
	:references; bh=04zC8sHw6sOB4gJdXOQU3cWgKgxPP0KpnxNwK6keXyY=;
	b=OHvdAiPbEsnt0+0Trwr09Loo2Rx7URgRxhLt8+gdPhRg/VHRBdsU54YthQfZvdqMgJ
	6iC95dStmxYHCaLZE35YizWNqB4KcAMwq7wIBIA1g7DvOg9k26BcnHEnkr//Z2fYjSid
	FdZYzppelmgLMe8bidq88W1FFx+An7iDj6bOGrAa/sjyUVGsTVtR7eB9nh926AdtRh6J
	lEXTDCkBgo08pC0QA5/+KCDyeP+MavMOi1Ii6t070fBtfdMOaMaV3mMTSlBVa70C9ylH
	duIeSluc8Dee5NajFktFC2guN4/97BuTp6b3UlJ90Ngr6Rin5CTgkLJ4QGPxnjHjKXcd
	VNdg==
X-Received: by 10.49.30.233 with SMTP id v9mr11305641qeh.80.1378418180625;
	Thu, 05 Sep 2013 14:56:20 -0700 (PDT)
Received: from mulhern-2010-ubuntu (c-67-186-188-203.hsd1.ma.comcast.net.
	[67.186.188.203])
	by mx.google.com with ESMTPSA id fy7sm47963642qeb.1.1969.12.31.16.00.00
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Thu, 05 Sep 2013 14:56:20 -0700 (PDT)
Received: by mulhern-2010-ubuntu (sSMTP sendmail emulation);
	Thu, 05 Sep 2013 17:56:18 -0400
From: mulhern <mulhern@gmail.com>
To: yocto@yoctoproject.org,
	mulhern@yoctoproject.org
Date: Thu,  5 Sep 2013 17:56:06 -0400
Message-Id: <70c4e7ebdc50ab0fbe34413a77a6f68cd8994146.1378412801.git.mulhern@yoctoproject.org>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1378412801.git.mulhern@yoctoproject.org>
References: <cover.1378412801.git.mulhern@yoctoproject.org>
In-Reply-To: <cover.1378412801.git.mulhern@yoctoproject.org>
References: <cover.1378412801.git.mulhern@yoctoproject.org>
Subject: [PATCH 1/2] libenv-perl: Remove redundant recipe in meta-security layer.
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
X-List-Received-Date: Thu, 05 Sep 2013 21:56:24 -0000

[YOCTO #5081]

The recipe meta-security/recipes-security/env-perl_1.04.bb is removed since
there is a recipe for the same Perl module at
poky/meta/recipes-lsb4/perl/libenv-perl_1.04.bb. The dependency on env-perl
in the checksecurity recipe is updated to a recipe on libenv-perl.

Signed-off-by: mulhern <mulhern@yoctoproject.org>
---
 .../checksecurity/checksecurity_2.0.14.bb          |    2 +-
 recipes-security/perl/env-perl_1.04.bb             |   25 --------------------
 2 files changed, 1 insertion(+), 26 deletions(-)
 delete mode 100644 recipes-security/perl/env-perl_1.04.bb

diff --git a/recipes-security/checksecurity/checksecurity_2.0.14.bb b/recipes-security/checksecurity/checksecurity_2.0.14.bb
index 83a24a7..70dfd03 100644
--- a/recipes-security/checksecurity/checksecurity_2.0.14.bb
+++ b/recipes-security/checksecurity/checksecurity_2.0.14.bb
@@ -3,7 +3,7 @@ DESCRIPTION = "checksecurity is a simple package which will scan your system for
 SECTION = "security"
 LICENSE = "GPL-2.0"
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
-RDEPENDS_${PN} = "perl env-perl perl-module-tie-array perl-module-getopt-long perl-module-file-glob util-linux findutils coreutils"
+RDEPENDS_${PN} = "perl libenv-perl perl-module-tie-array perl-module-getopt-long perl-module-file-glob util-linux findutils coreutils"
 
 SRC_URI = "http://ftp.de.debian.org/debian/pool/main/c/checksecurity/checksecurity_${PV}.tar.gz \
            file://setuid-log-folder.patch"
diff --git a/recipes-security/perl/env-perl_1.04.bb b/recipes-security/perl/env-perl_1.04.bb
deleted file mode 100644
index 4aeba4f..0000000
--- a/recipes-security/perl/env-perl_1.04.bb
+++ /dev/null
@@ -1,25 +0,0 @@
-DESCRIPTION = "This package contains the Env.pm \
-               perl module that imports environment variables as scalars or arrays"
-
-SECTION = "libs"
-LICENSE = "Artistic-1.0 | GPL-1.0+"
-
-LIC_FILES_CHKSUM = "file://LICENSE;md5=76c1cbf18db56b3340d91cb947943bd3"
-
-SRC_URI[md5sum] = "fdba5c0690e66972c96fee112cf5f25c"
-SRC_URI[sha256sum] = "d94a3d412df246afdc31a2199cbd8ae915167a3f4684f7b7014ce1200251ebb0"
-
-DEPENDS += "perl"
-
-SRC_URI = "http://search.cpan.org/CPAN/authors/id/F/FL/FLORA/Env-${PV}.tar.gz"
-
-S = "${WORKDIR}/Env-${PV}"
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


