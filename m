Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.53821.1597701431370726533
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Aug 2020 14:57:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XCGgNlyl;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: akuster808@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D88EFE02032; Mon, 17 Aug 2020 14:57:10 -0700 (PDT)
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
	*      [209.85.167.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5C77E01FFD
	for <yocto@yoctoproject.org>; Mon, 17 Aug 2020 14:57:09 -0700 (PDT)
Received: by mail-oi1-f173.google.com with SMTP id o21so16125618oie.12
        for <yocto@yoctoproject.org>; Mon, 17 Aug 2020 14:57:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=68plBK7B33VJH0auZf9O406bcMCdr6oXmeUrvfDfk1Y=;
        b=XCGgNlylO8X+ecEAFUnsLbtkS6+6Keud6hns+DeyE5u7VslfiyCK1a7lbRmPQMizaR
         WPMcT3f2irM5hmITHX/6CCn9O8wMYXW+Kq65hSKlUEVEpYAbFa8sMj0nm5NZ5iEXBybU
         wTJNEFptmuQKbGWKsZfvl+4JM0YEzTWv/KXN60yNj9fCWvGxwLisFHC9sN/C9apv5vYt
         Bvyzcw57sGIdBhWvnQLWRP4mzeY2hMIVd8w/dPr4wWZQjbnBZFBm410sCN9jQqsD4J6n
         hxE0SeaBfUOVf8Zhc5u/ewHItXZ+rDHCvetWILf8/gZlCiTDJ/xudOiQHcaEWieLMVtl
         j2kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=68plBK7B33VJH0auZf9O406bcMCdr6oXmeUrvfDfk1Y=;
        b=lAXhXXQ6J2zSex02PlBt61NvYfSw1c0R/av/H3X0MEwCeakPRe6TN94Lc8l1RT4sDH
         dHQo2MDkrO+gmhMcgBQ5SeSX4EDRIuloesEJYqcqFC0qYajrwKYW/9iT9umJZObAVtBz
         ClFe6A9TmXoLnivJIvk9tOC7KLIPVp3Yx+aV+/SmimQFwrqCzqD8JVNPFj+Rp/EVL09y
         mJrrsGbCHQuNluz+Ojd/au8bmCX7qoyIZ7iFp7XZC25rq9InBz7kd4MC/8JHyj+E+Qm1
         29Xvb9uyIOB4MX+Dc6FEchHTYqvA1LZLh6Qo/aXCi+cjX9BckhzUevORhs+UnjSKZaD2
         GE6w==
X-Gm-Message-State: AOAM532Ek4bVc4T44JhTkyMLx835Tko/Js4a4KbTLL69dRkQrv4Y+Qgl
	RP9EpHFnMwLq7XL+nXijBqTZuQg5UJk=
X-Google-Smtp-Source: ABdhPJx4lClhHWE+X7U1c7mRcPFPUKUiyFMeghPklSxTZ/4r3ViM1W0BLtceBikT8H3LTCwyY/ReiQ==
X-Received: by 2002:a05:6808:3da:: with SMTP id o26mr4614930oie.3.1597701428598;
        Mon, 17 Aug 2020 14:57:08 -0700 (PDT)
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:3543:531d:382f:ed2a])
        by smtp.gmail.com with ESMTPSA id r10sm3604131otd.65.2020.08.17.14.57.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 Aug 2020 14:57:07 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@yoctoproject.org
Cc: Armin Kuster <akuster@mvista.com>
Subject: [meta-security][PATCH] trousers: Several Security fixes
Date: Mon, 17 Aug 2020 14:57:06 -0700
Message-Id: <20200817215706.2826-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

From: Armin Kuster <akuster@mvista.com>

Fixes:
CVE-2020-24332
CVE-2020-24330
CVE-2020-24331

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

