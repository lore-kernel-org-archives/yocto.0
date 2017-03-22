Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 820B9E00839; Wed, 22 Mar 2017 05:46:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f67.google.com (mail-pg0-f67.google.com [74.125.83.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49155E00939
	for <yocto@yoctoproject.org>; Wed, 22 Mar 2017 05:46:47 -0700 (PDT)
Received: by mail-pg0-f67.google.com with SMTP id 81so22386820pgh.3
	for <yocto@yoctoproject.org>; Wed, 22 Mar 2017 05:46:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=sIEHaOX8N9IDpEOHz8W8hLE6zk/kWBX4VVA4Y/JyK9Q=;
	b=n8pySzV6+I0Dbksal74Rxc1jpYS4WYfbslDrnrtPC9OamqYJGOLjUKd0ZQTdBxR5Mv
	7UhXWU2iI4fJV8NSMrJIxB4yJU8iebJwJ75tUC8ZBuF+Ebn6izHHcaAHajSE14uFNMdh
	gp683TaP9V+qSWaFdX6FNQYtjLmsqSZvOA5RlEKoW63tiR0J0hwHnpNPiQkyxJN6evg3
	4gHgxb7oD/tKPhGnlUIiy0SKgiImweESLg9gWtYrZbnCBldgtA7NQPhrOG3iMSo/Bud3
	RoXkx/267iVdE/YCU1u+MsTBt233GU51VG3P+gN03Vk7tsiEf7HtBM/qYHm6siTpi3l8
	wlNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=sIEHaOX8N9IDpEOHz8W8hLE6zk/kWBX4VVA4Y/JyK9Q=;
	b=TEMHUWJ7w/Yvv96Ibbs8sxrJNipcBHlsxnotI5Gf0BZf3NtDxyUl3G8sXTotNgjYb+
	5etmsnkRtYL5DLU6yooKshkskovuLXhsgbweKhbSGSp7JIcxx2hK7Yrc/ivlEg+k8dYy
	2ZRME1GVIAiu4nU8JJnpUp3uLDU3ADQPO8/p9qgHQpIKqPATZ5LYMafJbm/wHcRzGFqF
	lDtsjr66yjVaZGBn/1vHqonHTQBs5N1OD0PEwlCoZitDOF6fIS1O7IzZcWAL5k0XvBm9
	Z6gsH28OHnHJ0jlplR6NDPUe4Epopws8cVpk6m/Fo6Tzeswg34kdc2N260ACYxmlDB7+
	KbOQ==
X-Gm-Message-State: AFeK/H2BTmfuWErR6iGhXQzCDJMkG+ghewhXUpKQlj9hvXKqy+oUHUutr8ywEOR7WP5oxg==
X-Received: by 10.98.89.70 with SMTP id n67mr45150538pfb.224.1490186807384;
	Wed, 22 Mar 2017 05:46:47 -0700 (PDT)
Received: from akuster-ThinkPad-X240.mvista.com
	([2601:202:4001:9ea0:e3df:bf0a:9f90:498e])
	by smtp.gmail.com with ESMTPSA id
	e70sm3935214pfl.105.2017.03.22.05.46.46
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 22 Mar 2017 05:46:46 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: akuster808@gmail.com,
	yocto@yoctoproject.org
Date: Wed, 22 Mar 2017 05:46:41 -0700
Message-Id: <1490186804-22928-3-git-send-email-akuster808@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1490186804-22928-1-git-send-email-akuster808@gmail.com>
References: <1490186804-22928-1-git-send-email-akuster808@gmail.com>
Subject: [meta-security][PATCH 3/6] trousers: Fix musl compile error
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
X-List-Received-Date: Wed, 22 Mar 2017 12:46:49 -0000

use POSIX getpwent instead of getpwent_r
This was causing the libtspi to have the getpwent_r with when loaded via tpm-tools, it would fail.

[ Yocto #11095]

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 ...path-use-POSIX-getpwent-instead-of-getpwe.patch | 49 ++++++++++++++++++++++
 recipes-tpm/trousers/trousers_git.bb               |  1 +
 2 files changed, 50 insertions(+)
 create mode 100644 recipes-tpm/trousers/files/get-user-ps-path-use-POSIX-getpwent-instead-of-getpwe.patch

diff --git a/recipes-tpm/trousers/files/get-user-ps-path-use-POSIX-getpwent-instead-of-getpwe.patch b/recipes-tpm/trousers/files/get-user-ps-path-use-POSIX-getpwent-instead-of-getpwe.patch
new file mode 100644
index 0000000..3f5a144
--- /dev/null
+++ b/recipes-tpm/trousers/files/get-user-ps-path-use-POSIX-getpwent-instead-of-getpwe.patch
@@ -0,0 +1,49 @@
+trousers: fix compiling with musl
+
+use POSIX getpwent instead of getpwent_r
+
+Upstream-Status: Submitted
+
+Signed-off-by: Armin Kuster <akuster@mvista.com>
+
+Index: git/src/tspi/ps/tspps.c
+===================================================================
+--- git.orig/src/tspi/ps/tspps.c
++++ git/src/tspi/ps/tspps.c
+@@ -66,9 +66,6 @@ get_user_ps_path(char **file)
+ 	TSS_RESULT result;
+ 	char *file_name = NULL, *home_dir = NULL;
+ 	struct passwd *pwp;
+-#if (defined (__linux) || defined (linux) || defined(__GLIBC__))
+-	struct passwd pw;
+-#endif
+ 	struct stat stat_buf;
+ 	char buf[PASSWD_BUFSIZE];
+ 	uid_t euid;
+@@ -96,24 +93,15 @@ get_user_ps_path(char **file)
+ #else
+ 	setpwent();
+ 	while (1) {
+-#if (defined (__linux) || defined (linux) || defined(__GLIBC__))
+-		rc = getpwent_r(&pw, buf, PASSWD_BUFSIZE, &pwp);
+-		if (rc) {
+-			LogDebugFn("USER PS: Error getting path to home directory: getpwent_r: %s",
+-				   strerror(rc));
+-			endpwent();
+-			return TSPERR(TSS_E_INTERNAL_ERROR);
+-		}
+-
+-#elif (defined (__FreeBSD__) || defined (__OpenBSD__))
+ 		if ((pwp = getpwent()) == NULL) {
+ 			LogDebugFn("USER PS: Error getting path to home directory: getpwent: %s",
+                                    strerror(rc));
+ 			endpwent();
++#if (defined (__FreeBSD__) || defined (__OpenBSD__))
+ 			MUTEX_UNLOCK(user_ps_path);
++#endif
+ 			return TSPERR(TSS_E_INTERNAL_ERROR);
+ 		}
+-#endif
+ 		if (euid == pwp->pw_uid) {
+                         home_dir = strdup(pwp->pw_dir);
+                         break;
diff --git a/recipes-tpm/trousers/trousers_git.bb b/recipes-tpm/trousers/trousers_git.bb
index 6671808..352374c 100644
--- a/recipes-tpm/trousers/trousers_git.bb
+++ b/recipes-tpm/trousers/trousers_git.bb
@@ -14,6 +14,7 @@ SRC_URI = " \
     	file://trousers.init.sh \
     	file://trousers-udev.rules \
     	file://tcsd.service \
+        file://get-user-ps-path-use-POSIX-getpwent-instead-of-getpwe.patch \
     	"
 
 S = "${WORKDIR}/git"
-- 
2.7.4


