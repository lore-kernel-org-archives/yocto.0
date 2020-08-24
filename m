Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.2451.1598296846522077508
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Aug 2020 12:20:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=LcP/2EkJ;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EFA80E02092; Mon, 24 Aug 2020 12:20:45 -0700 (PDT)
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
	*      [209.85.215.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17296E0204B
	for <yocto@yoctoproject.org>; Mon, 24 Aug 2020 12:20:43 -0700 (PDT)
Received: by mail-pg1-f169.google.com with SMTP id 31so2809394pgy.13
        for <yocto@yoctoproject.org>; Mon, 24 Aug 2020 12:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=QCKvp9bAnSd8J4zdJpjXld6StLtuSF2ocSDJxIxVLhA=;
        b=LcP/2EkJdWwPfm4ztzf8x1JRyriCmpQTJv+6RN8AhV+Y2WBiC+lRPLZjlnzUlqi3y3
         EooGn/B5v63AeATg6pTVp4jD3VeDf7+z8/O9thOrb/it7XN5r2VwtCOdGXnIzGy7LYqR
         A1VlBbJH+f1MLw8LN8gxgSWA4sponjlSu+tZF7Bq7D5hNsJHOv/DOw4UKEFstL9UDDlY
         C9lvLJI2pmF0G0SeZWEX/EBDTsPwf1Rwo1GR1A6FlzlHlFF9jEPIi1HT3HQZ+GqQyp5Y
         8WXkA2VDOiYCciWHLJhcxAQJOxyaH0IipY2FvOLJUcZc73WF7mZOAaUJ2NDudwcM44eA
         cJMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=QCKvp9bAnSd8J4zdJpjXld6StLtuSF2ocSDJxIxVLhA=;
        b=FZuNYGkOmZU2ZBmh/0DrVmSv1SGAfSduBPFEvo7WDz3okKVxBLzOmQh0RbXpYoViZ2
         /lknxPSfaWKgsEC8V2VnswxqtE059rs8CFpvGlQPy1RuY6LH+OWHA5Lud5hAFNcxnHY6
         VeXTxfaD8VHSg5FHCzpHWSZKFR37RlfiLwnb0Bdnf6POiov9OOgjqUJUZomm4alrMc5h
         C/FXDlSsfg5cwjhrPAhgLV9o8IBExu1+zekLgjw4GzQHGkBbGahPWfcifoF25adSaKow
         FECE/vLdEfQKVRKz3amC5gRHOw59m4wy1dbDDpJ8uvWiQwwPh81q3ooYSjhPzv6wQ2FY
         ctSg==
X-Gm-Message-State: AOAM5339b4LJ4+gYCS6gsRLQi4kk455LmNyQGs3lJtwgMtI2R9RqV3we
	luArpZBCuqNGk1/HsDsSJUwoeSEYUQc=
X-Google-Smtp-Source: ABdhPJxU0IXCUsdF6duG7M2iWjJipeO5Rhh1nCReZu6xXGvOXksE/vZGAUqMGFgmIkME/a1VCebT8Q==
X-Received: by 2002:a17:902:be12:: with SMTP id r18mr4634602pls.116.1598296842781;
        Mon, 24 Aug 2020 12:20:42 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:8c73:c839:c972:3761])
        by smtp.gmail.com with ESMTPSA id r7sm12595606pfl.186.2020.08.24.12.20.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2020 12:20:42 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@yoctoproject.org
Cc: Armin Kuster <akuster@mvista.com>
Subject: [meta-security][dunfel][PATCH] trousers: Several Security fixes
Date: Mon, 24 Aug 2020 12:20:41 -0700
Message-Id: <20200824192041.18788-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

From: Armin Kuster <akuster@mvista.com>

Source:  meta-security
MR: 105088
Type: Security Fix
Disposition: Backport from http://git.yoctoproject.org/cgit/cgit.cgi/meta-security/commit/?id=787ba6faeaa8823a4d87e5edd15581cb4e12fa70
ChangeID: b55bccb002b9eb2c49dfe380406e2597bb1ade90
Description:

Fixes:
CVE-2020-24332
CVE-2020-24330
CVE-2020-24331

Signed-off-by: Armin Kuster <akuster@mvista.com>
Signed-off-by: Armin Kuster <akuster808@gmail.com>
(cherry picked from commit 787ba6faeaa8823a4d87e5edd15581cb4e12fa70)
Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 ...-security-issues-that-are-present-if.patch | 94 +++++++++++++++++++
 meta-tpm/recipes-tpm/trousers/trousers_git.bb |  1 +
 2 files changed, 95 insertions(+)
 create mode 100644 meta-tpm/recipes-tpm/trousers/files/0001-Correct-multiple-security-issues-that-are-present-if.patch

diff --git a/meta-tpm/recipes-tpm/trousers/files/0001-Correct-multiple-security-issues-that-are-present-if.patch b/meta-tpm/recipes-tpm/trousers/files/0001-Correct-multiple-security-issues-that-are-present-if.patch
new file mode 100644
index 0000000..72c81d1
--- /dev/null
+++ b/meta-tpm/recipes-tpm/trousers/files/0001-Correct-multiple-security-issues-that-are-present-if.patch
@@ -0,0 +1,94 @@
+From e74dd1d96753b0538192143adf58d04fcd3b242b Mon Sep 17 00:00:00 2001
+From: Matthias Gerstner <mgerstner@suse.de>
+Date: Fri, 14 Aug 2020 22:14:36 -0700
+Subject: [PATCH] Correct multiple security issues that are present if the tcsd
+ is started by root instead of the tss user.
+
+Patch fixes the following 3 CVEs:
+
+CVE-2020-24332
+If the tcsd daemon is started with root privileges,
+the creation of the system.data file is prone to symlink attacks
+
+CVE-2020-24330
+If the tcsd daemon is started with root privileges,
+it fails to drop the root gid after it is no longer needed
+
+CVE-2020-24331
+If the tcsd daemon is started with root privileges,
+the tss user has read and write access to the /etc/tcsd.conf file
+
+Authored-by: Matthias Gerstner <mgerstner@suse.de>
+Signed-off-by: Debora Velarde Babb <debora@linux.ibm.com>
+
+Upstream-Status: Backport
+CVE: CVE-2020-24332
+CVE: CVE-2020-24330
+CVE: CVE-2020-24331
+
+Signed-off-by: Armin Kuster <akuster@mvista.com>
+
+---
+ src/tcs/ps/tcsps.c   |  2 +-
+ src/tcsd/svrside.c   |  1 +
+ src/tcsd/tcsd_conf.c | 10 +++++-----
+ 3 files changed, 7 insertions(+), 6 deletions(-)
+
+Index: git/src/tcs/ps/tcsps.c
+===================================================================
+--- git.orig/src/tcs/ps/tcsps.c
++++ git/src/tcs/ps/tcsps.c
+@@ -72,7 +72,7 @@ get_file()
+ 	}
+ 
+ 	/* open and lock the file */
+-	system_ps_fd = open(tcsd_options.system_ps_file, O_CREAT|O_RDWR, 0600);
++	system_ps_fd = open(tcsd_options.system_ps_file, O_CREAT|O_RDWR|O_NOFOLLOW, 0600);
+ 	if (system_ps_fd < 0) {
+ 		LogError("system PS: open() of %s failed: %s",
+ 				tcsd_options.system_ps_file, strerror(errno));
+Index: git/src/tcsd/svrside.c
+===================================================================
+--- git.orig/src/tcsd/svrside.c
++++ git/src/tcsd/svrside.c
+@@ -473,6 +473,7 @@ main(int argc, char **argv)
+ 		}
+ 		return TCSERR(TSS_E_INTERNAL_ERROR);
+ 	}
++	setgid(pwd->pw_gid);
+ 	setuid(pwd->pw_uid);
+ #endif
+ #endif
+Index: git/src/tcsd/tcsd_conf.c
+===================================================================
+--- git.orig/src/tcsd/tcsd_conf.c
++++ git/src/tcsd/tcsd_conf.c
+@@ -743,7 +743,7 @@ conf_file_init(struct tcsd_config *conf)
+ #ifndef SOLARIS
+ 	struct group *grp;
+ 	struct passwd *pw;
+-	mode_t mode = (S_IRUSR|S_IWUSR);
++	mode_t mode = (S_IRUSR|S_IWUSR|S_IRGRP);
+ #endif /* SOLARIS */
+ 	TSS_RESULT result;
+ 
+@@ -798,15 +798,15 @@ conf_file_init(struct tcsd_config *conf)
+ 	}
+ 
+ 	/* make sure user/group TSS owns the conf file */
+-	if (pw->pw_uid != stat_buf.st_uid || grp->gr_gid != stat_buf.st_gid) {
++	if (stat_buf.st_uid != 0 || grp->gr_gid != stat_buf.st_gid) {
+ 		LogError("TCSD config file (%s) must be user/group %s/%s", tcsd_config_file,
+-				TSS_USER_NAME, TSS_GROUP_NAME);
++				"root", TSS_GROUP_NAME);
+ 		return TCSERR(TSS_E_INTERNAL_ERROR);
+ 	}
+ 
+-	/* make sure only the tss user can manipulate the config file */
++	/* make sure only the tss user can read (but not manipulate) the config file */
+ 	if (((stat_buf.st_mode & 0777) ^ mode) != 0) {
+-		LogError("TCSD config file (%s) must be mode 0600", tcsd_config_file);
++		LogError("TCSD config file (%s) must be mode 0640", tcsd_config_file);
+ 		return TCSERR(TSS_E_INTERNAL_ERROR);
+ 	}
+ #endif /* SOLARIS */
diff --git a/meta-tpm/recipes-tpm/trousers/trousers_git.bb b/meta-tpm/recipes-tpm/trousers/trousers_git.bb
index fe8f557..95e821b 100644
--- a/meta-tpm/recipes-tpm/trousers/trousers_git.bb
+++ b/meta-tpm/recipes-tpm/trousers/trousers_git.bb
@@ -16,6 +16,7 @@ SRC_URI = " \
     	file://tcsd.service \
         file://get-user-ps-path-use-POSIX-getpwent-instead-of-getpwe.patch \
         file://0001-build-don-t-override-localstatedir-mandir-sysconfdir.patch \
+        file://0001-Correct-multiple-security-issues-that-are-present-if.patch \
     	"
 
 S = "${WORKDIR}/git"
-- 
2.17.1

