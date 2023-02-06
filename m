Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 821ECC05027
	for <webhook@archiver.kernel.org>; Mon,  6 Feb 2023 20:11:56 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
 by mx.groups.io with SMTP id smtpd.web10.64800.1675714315501330785
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Feb 2023 12:11:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=PsdrxY1P;
 spf=pass (domain: gmail.com, ip: 209.85.160.181, mailfrom: akuster808@gmail.com)
Received: by mail-qt1-f181.google.com with SMTP id g18so11981051qtb.6
        for <yocto@lists.yoctoproject.org>; Mon, 06 Feb 2023 12:11:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=alhXDdgG1xsuaiSsIYVHgZ1f3bpt4S0abHXx5eTCZQ4=;
        b=PsdrxY1PMlL4XpEAOER7icqmJPFnZLx1XH7eo1zJ11GBiABRfCnBhP+TTdbtHS7Eha
         34+H6kQfmxPkPHnB2jaf/MrHdXzgZFBs6vlCTIxkpP1vHVHdQyo2+gpRNC7k5nsvnIo+
         gUVNOjM6RW1NmlxplQHNhoOTt4PitMFylRoSWMld0NIFjbJHOxiXuRIHPH5KixSfxTTd
         zARQVanf8dy5K603QP96oGok8S6RY6pEnhO6KQGkYSX1HLjSZZPEqyjpAYqrWp8WYJaQ
         a6f4o9d60Ab9hOFWYG8nvwixPwxAVzuz2yz3PmeLP2Pw8lsD6+0HUsqLtFgGYMwgG1ig
         nL6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=alhXDdgG1xsuaiSsIYVHgZ1f3bpt4S0abHXx5eTCZQ4=;
        b=Qddm7DKfoDjQjcZgiMpgxV/UvrS+1Ig/hnrmJRDA+p7AlouVCWZeQ1yx3LM5pdVjrA
         B1CgCIwxQomdN8xGbUxgoDpLwiJOdGHwuQwGXu93bNm5oj4BctcGj5ttZtqCwIjE8cak
         HnClchZztOo/V1b/vUOAUc1L/K8rnczy/cMDmaBexlSXQfABSexLe3+WOp3aHnIhxvT7
         fF0Jc9BWoJEkxiOjhBSd086WNmADKoeUv8dwI1lLDNVttuy9gNnnYlUCmAT6h7rgBLq9
         x9TswvcLdfdMXT6fbTZL9UFFbs3C38R7iEhkiTNTB7qlNSIA7tooS7OVBIxH89bk+dUk
         sYJQ==
X-Gm-Message-State: AO0yUKWo/lfZCsJLkWE9mc6KSxyi6QgdxKAHwgBOIrgFZz6Jq3YSmzvj
	HtmIRCjtmFkhmzQuoKzaDUvkQ1oAra0=
X-Google-Smtp-Source: AK7set+qw9qPUY+6KXFoKgoM2YHvVGHBLG5Uu8PWVI0CJvhRN+I1wZ4PodpoKCt6ih7B2ssecVVBWQ==
X-Received: by 2002:a05:622a:5ca:b0:3b9:b211:7736 with SMTP id d10-20020a05622a05ca00b003b9b2117736mr1091119qtb.19.1675714314157;
        Mon, 06 Feb 2023 12:11:54 -0800 (PST)
Received: from mvwork.mvista.com (99-157-111-72.lightspeed.tukrga.sbcglobal.net. [99.157.111.72])
        by smtp.gmail.com with ESMTPSA id l16-20020ac84cd0000000b003b9bf862c04sm7815660qtv.55.2023.02.06.12.11.53
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Feb 2023 12:11:53 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][dunfell][PATCH 1/2] trousers: update to tip
Date: Mon,  6 Feb 2023 15:09:49 -0500
Message-Id: <20230206200950.1172058-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 06 Feb 2023 20:11:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59182

Many for compile issue now being seen.

rpc/tcstp/.libs/libtspi_la-rpc_cmk.o:/usr/src/debug/trousers/0.3.14+gitAUTOINC+4b9a70d578-r0/build/src/tspi/../../../git/src/include/tcsd.h:169: multiple definition of `tcsd_sa_int'; .libs/libtspi_la-tspi_context.o:/usr/src/debug/trousers/0.3.14+gitAUTOINC+4b9a70d578-r0/build/src/tspi/../../../git/src/include/tcsd.h:169: first defined here
| collect2: error: ld returned 1 exit status

Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit 55cbb636340ed7da08a0ae338b54d72c66d41242)
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
2.31.1


