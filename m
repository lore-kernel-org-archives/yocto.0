Return-Path: <mulhern@gmail.com>
Received: from mail-qc0-f178.google.com (mail-qc0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40C71E0154F;
	Thu,  5 Sep 2013 14:56:25 -0700 (PDT)
Received: by mail-qc0-f178.google.com with SMTP id r5so1298219qcx.9
	for <multiple recipients>; Thu, 05 Sep 2013 14:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:subject:date:message-id:in-reply-to:references:in-reply-to
	:references; bh=21uLCoaJ0fIe+U1N8x7Z2FjYnm5OwxU++8AHG50awaE=;
	b=Iu5FtuW57l85kr22s1ohPJjHt5//tVompIeklvskXyG+w07t4U6vBJ6aorDL/GpTfZ
	0shUT30KWLhZhX2zujL1CFiyBtAoGWfscbGaiPRgld2c8ZhwgLfhPtTtb50sNA9X7QGq
	WWB2O2+o/+0C95JY3ynfVImZgdl5e3OZ3AqloInEBIEwKRZXmt1G+gr1aVaL2Doo9MDe
	azqmUuFE/a7DepauBz2NRRGUPDzCCgA+iGRZCOSqGFqCl92Vpm3thMIBYjg6KRwtpKJa
	+g1+nTzECttPSr4CJXDKGC1YoX2ebbu70vvxlYiJpiF3J4g1MOeRV5AI5rV7tVMIgs2s
	I8Pw==
X-Received: by 10.224.120.136 with SMTP id d8mr306568qar.9.1378418185466;
	Thu, 05 Sep 2013 14:56:25 -0700 (PDT)
Received: from mulhern-2010-ubuntu (c-67-186-188-203.hsd1.ma.comcast.net.
	[67.186.188.203])
	by mx.google.com with ESMTPSA id m5sm44338267qaa.13.1969.12.31.16.00.00
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Thu, 05 Sep 2013 14:56:25 -0700 (PDT)
Received: by mulhern-2010-ubuntu (sSMTP sendmail emulation);
	Thu, 05 Sep 2013 17:56:23 -0400
From: mulhern <mulhern@gmail.com>
To: yocto@yoctoproject.org,
	mulhern@yoctoproject.org
Date: Thu,  5 Sep 2013 17:56:07 -0400
Message-Id: <48f5ad0be8be1f3a2b584196adbecaecb7ac509e.1378412801.git.mulhern@yoctoproject.org>
X-Mailer: git-send-email 1.7.10.4
In-Reply-To: <cover.1378412801.git.mulhern@yoctoproject.org>
References: <cover.1378412801.git.mulhern@yoctoproject.org>
In-Reply-To: <cover.1378412801.git.mulhern@yoctoproject.org>
References: <cover.1378412801.git.mulhern@yoctoproject.org>
Subject: [PATCH 2/2] libcurses-perl: curses-perl renamed to libcurses-perl.
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
X-List-Received-Date: Thu, 05 Sep 2013 21:56:26 -0000

[YOCTO #5081]

The recipe meta-security/recipes-security/perl/curses-perl_1.28.bb is renamed
to libcurses-perl_1.28.bb to conform to accepted naming scheme.
The dependency in the Bastille recipe is updated accordingly.

Signed-off-by: mulhern <mulhern@yoctoproject.org>
---
 recipes-security/bastille/bastille_3.2.1.bb                          |    2 +-
 .../perl/{curses-perl_1.28.bb => libcurses-perl_1.28.bb}             |    0
 2 files changed, 1 insertion(+), 1 deletion(-)
 rename recipes-security/perl/{curses-perl_1.28.bb => libcurses-perl_1.28.bb} (100%)

diff --git a/recipes-security/bastille/bastille_3.2.1.bb b/recipes-security/bastille/bastille_3.2.1.bb
index 06215a2..ef697d7 100644
--- a/recipes-security/bastille/bastille_3.2.1.bb
+++ b/recipes-security/bastille/bastille_3.2.1.bb
@@ -6,7 +6,7 @@ LICENSE = "GPLv2"
 LIC_FILES_CHKSUM = "file://${S}/COPYING;md5=c93c0550bd3173f4504b2cbd8991e50b"
 # Bash is needed for set +o privileged (check busybox), might also need ncurses
 DEPENDS = "virtual/kernel"
-RDEPENDS_${PN} = "perl bash tcl perl-module-getopt-long perl-module-text-wrap lib-perl perl-module-file-path perl-module-mime-base64 perl-module-file-find perl-module-errno perl-module-file-glob perl-module-tie-hash-namedcapture perl-module-file-copy perl-module-english perl-module-exporter perl-module-cwd curses-perl coreutils"
+RDEPENDS_${PN} = "perl bash tcl perl-module-getopt-long perl-module-text-wrap lib-perl perl-module-file-path perl-module-mime-base64 perl-module-file-find perl-module-errno perl-module-file-glob perl-module-tie-hash-namedcapture perl-module-file-copy perl-module-english perl-module-exporter perl-module-cwd libcurses-perl coreutils"
 FILES_${PN} += "/run/lock/subsys/bastille"
 
 inherit allarch module-base
diff --git a/recipes-security/perl/curses-perl_1.28.bb b/recipes-security/perl/libcurses-perl_1.28.bb
similarity index 100%
rename from recipes-security/perl/curses-perl_1.28.bb
rename to recipes-security/perl/libcurses-perl_1.28.bb
-- 
1.7.10.4


