Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.28369.1598560161934340645
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Aug 2020 13:29:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=uFWmSkw8;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D0B3E020B5; Thu, 27 Aug 2020 13:29:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.216.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com [209.85.216.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1757E020B1
	for <yocto@yoctoproject.org>; Thu, 27 Aug 2020 13:29:20 -0700 (PDT)
Received: by mail-pj1-f68.google.com with SMTP id ds1so3245115pjb.1
        for <yocto@yoctoproject.org>; Thu, 27 Aug 2020 13:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=HZQQm+t6eQn74n0FRK0QQEx7+wp1OOs/m+RK2bX0Tj0=;
        b=uFWmSkw8T36oZIR7fOaqVbEy7C32lQYNLkTUdb8KCOqfxqCl7abdawHe1kIA7ZD6xR
         oi1yL4ue7eMY6nk7hzgkeKW6TGtBuYAUIXzAyqMhUuLwIECdKU5DsnjyEX4XRF3meuSL
         jSNQGfJv/P8P9KC1eTitNaktCu6W0QKVMYhvFET0Bi8b2xn3adYGy4scEgNpMuYe1L5p
         tsUHKay3Tl58IQn9xtr0Bs9yaPt4cEdzWuawkyrqKf3d5pATDAh1tX+LKdZEEFy/AeXR
         tp6qIdKeu4qqbDoKIJ/0GpjlKiocmJaCwIp4Y36zeO7qROOADVrsSkQejdn0jtU411qH
         7KCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=HZQQm+t6eQn74n0FRK0QQEx7+wp1OOs/m+RK2bX0Tj0=;
        b=VRfOKpm7d5TawfnnQc3JKqNDlECVCGeYhDJQorz78Ej42ILPWAHT4DokZrooqrXU7j
         iOpiqs8VIajj5Oz9XOLkT/lLdWTZ75VWdOdbvqUTtEso0HTiGU3/M7TtqhLUumML86O8
         vK8PN0WDZbt5AdLAghoG8heqVNOZ+Ed4Dqe/PYlCFt7t7AlW+qeIRn4fffrWi4lOCsLS
         IZvwPI25xnHsyS6Ba5vmVfwCxoXLiUolgzdeBOclLS1bYB9ks3QVGleo91lugSpUlORQ
         dTNNT4DEFNmUSDYIgP3P9vrPSNntj0Kh8djdJ/SlhF4T0+HEvY19DdmVQ/GgWa62iXK2
         R0TQ==
X-Gm-Message-State: AOAM530oZq8izoU5CfT35tCCtUZYpZVE4IDj02URpPaNlLrZRxq+9ES7
	y/w7zY/OyrKUwEYsQU3VoroINpoiST8=
X-Google-Smtp-Source: ABdhPJwxuQ75OZBio67AzHcRjZ/nQahNCLMFAaDOA+YEd4gXRoraX96vNhLcVmI2bvetihD0KKugHQ==
X-Received: by 2002:a17:90a:4f0e:: with SMTP id p14mr542222pjh.31.1598560159404;
        Thu, 27 Aug 2020 13:29:19 -0700 (PDT)
Received: from hilo.hsdl.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id x5sm3588969pfj.1.2020.08.27.13.29.18
        for <yocto@yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 27 Aug 2020 13:29:18 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-security][PATCH] trousers: update to tip
Date: Thu, 27 Aug 2020 20:29:17 +0000
Message-Id: <20200827202917.23545-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Many for compile issue now being seen.

rpc/tcstp/.libs/libtspi_la-rpc_cmk.o:/usr/src/debug/trousers/0.3.14+gitAUTOINC+4b9a70d578-r0/build/src/tspi/../../../git/src/include/tcsd.h:169: multiple definition of `tcsd_sa_int'; .libs/libtspi_la-tspi_context.o:/usr/src/debug/trousers/0.3.14+gitAUTOINC+4b9a70d578-r0/build/src/tspi/../../../git/src/include/tcsd.h:169: first defined here
| collect2: error: ld returned 1 exit status

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...-security-issues-that-are-present-if.patch | 94 -------------------
 meta-tpm/recipes-tpm/trousers/trousers_git.bb |  3 +-
 2 files changed, 1 insertion(+), 96 deletions(-)
 delete mode 100644 meta-tpm/recipes-tpm/trousers/files/0001-Correct-multiple-security-issues-that-are-present-if.patch

diff --git a/meta-tpm/recipes-tpm/trousers/files/0001-Correct-multiple-security-issues-that-are-present-if.patch b/meta-tpm/recipes-tpm/trousers/files/0001-Correct-multiple-security-issues-that-are-present-if.patch
deleted file mode 100644
index 72c81d1..0000000
--- a/meta-tpm/recipes-tpm/trousers/files/0001-Correct-multiple-security-issues-that-are-present-if.patch
+++ /dev/null
@@ -1,94 +0,0 @@
-From e74dd1d96753b0538192143adf58d04fcd3b242b Mon Sep 17 00:00:00 2001
-From: Matthias Gerstner <mgerstner@suse.de>
-Date: Fri, 14 Aug 2020 22:14:36 -0700
-Subject: [PATCH] Correct multiple security issues that are present if the tcsd
- is started by root instead of the tss user.
-
-Patch fixes the following 3 CVEs:
-
-CVE-2020-24332
-If the tcsd daemon is started with root privileges,
-the creation of the system.data file is prone to symlink attacks
-
-CVE-2020-24330
-If the tcsd daemon is started with root privileges,
-it fails to drop the root gid after it is no longer needed
-
-CVE-2020-24331
-If the tcsd daemon is started with root privileges,
-the tss user has read and write access to the /etc/tcsd.conf file
-
-Authored-by: Matthias Gerstner <mgerstner@suse.de>
-Signed-off-by: Debora Velarde Babb <debora@linux.ibm.com>
-
-Upstream-Status: Backport
-CVE: CVE-2020-24332
-CVE: CVE-2020-24330
-CVE: CVE-2020-24331
-
-Signed-off-by: Armin Kuster <akuster@mvista.com>
-
----
- src/tcs/ps/tcsps.c   |  2 +-
- src/tcsd/svrside.c   |  1 +
- src/tcsd/tcsd_conf.c | 10 +++++-----
- 3 files changed, 7 insertions(+), 6 deletions(-)
-
-Index: git/src/tcs/ps/tcsps.c
-===================================================================
---- git.orig/src/tcs/ps/tcsps.c
-+++ git/src/tcs/ps/tcsps.c
-@@ -72,7 +72,7 @@ get_file()
- 	}
- 
- 	/* open and lock the file */
--	system_ps_fd = open(tcsd_options.system_ps_file, O_CREAT|O_RDWR, 0600);
-+	system_ps_fd = open(tcsd_options.system_ps_file, O_CREAT|O_RDWR|O_NOFOLLOW, 0600);
- 	if (system_ps_fd < 0) {
- 		LogError("system PS: open() of %s failed: %s",
- 				tcsd_options.system_ps_file, strerror(errno));
-Index: git/src/tcsd/svrside.c
-===================================================================
---- git.orig/src/tcsd/svrside.c
-+++ git/src/tcsd/svrside.c
-@@ -473,6 +473,7 @@ main(int argc, char **argv)
- 		}
- 		return TCSERR(TSS_E_INTERNAL_ERROR);
- 	}
-+	setgid(pwd->pw_gid);
- 	setuid(pwd->pw_uid);
- #endif
- #endif
-Index: git/src/tcsd/tcsd_conf.c
-===================================================================
---- git.orig/src/tcsd/tcsd_conf.c
-+++ git/src/tcsd/tcsd_conf.c
-@@ -743,7 +743,7 @@ conf_file_init(struct tcsd_config *conf)
- #ifndef SOLARIS
- 	struct group *grp;
- 	struct passwd *pw;
--	mode_t mode = (S_IRUSR|S_IWUSR);
-+	mode_t mode = (S_IRUSR|S_IWUSR|S_IRGRP);
- #endif /* SOLARIS */
- 	TSS_RESULT result;
- 
-@@ -798,15 +798,15 @@ conf_file_init(struct tcsd_config *conf)
- 	}
- 
- 	/* make sure user/group TSS owns the conf file */
--	if (pw->pw_uid != stat_buf.st_uid || grp->gr_gid != stat_buf.st_gid) {
-+	if (stat_buf.st_uid != 0 || grp->gr_gid != stat_buf.st_gid) {
- 		LogError("TCSD config file (%s) must be user/group %s/%s", tcsd_config_file,
--				TSS_USER_NAME, TSS_GROUP_NAME);
-+				"root", TSS_GROUP_NAME);
- 		return TCSERR(TSS_E_INTERNAL_ERROR);
- 	}
- 
--	/* make sure only the tss user can manipulate the config file */
-+	/* make sure only the tss user can read (but not manipulate) the config file */
- 	if (((stat_buf.st_mode & 0777) ^ mode) != 0) {
--		LogError("TCSD config file (%s) must be mode 0600", tcsd_config_file);
-+		LogError("TCSD config file (%s) must be mode 0640", tcsd_config_file);
- 		return TCSERR(TSS_E_INTERNAL_ERROR);
- 	}
- #endif /* SOLARIS */
diff --git a/meta-tpm/recipes-tpm/trousers/trousers_git.bb b/meta-tpm/recipes-tpm/trousers/trousers_git.bb
index 95e821b..992e7f2 100644
--- a/meta-tpm/recipes-tpm/trousers/trousers_git.bb
+++ b/meta-tpm/recipes-tpm/trousers/trousers_git.bb
@@ -6,7 +6,7 @@ SECTION = "security/tpm"
 
 DEPENDS = "openssl"
 
-SRCREV = "4b9a70d5789b0b74f43957a6c19ab2156a72d3e0"
+SRCREV = "e74dd1d96753b0538192143adf58d04fcd3b242b"
 PV = "0.3.14+git${SRCPV}"
 
 SRC_URI = " \
@@ -16,7 +16,6 @@ SRC_URI = " \
     	file://tcsd.service \
         file://get-user-ps-path-use-POSIX-getpwent-instead-of-getpwe.patch \
         file://0001-build-don-t-override-localstatedir-mandir-sysconfdir.patch \
-        file://0001-Correct-multiple-security-issues-that-are-present-if.patch \
     	"
 
 S = "${WORKDIR}/git"
-- 
2.17.1

