Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EE94E00CF4; Sun, 31 Mar 2019 10:29:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.215.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60732E00B5C
	for <yocto@yoctoproject.org>; Sun, 31 Mar 2019 10:29:04 -0700 (PDT)
Received: by mail-pg1-f176.google.com with SMTP id u9so3539567pgo.7
	for <yocto@yoctoproject.org>; Sun, 31 Mar 2019 10:29:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=Af58GZ2jJZT7Vw2OU9+g/ZPzsvcSjLuV4ykztdcl/bg=;
	b=lCOGlq20sIcZDvT7sL3XdZFaZhlGtvHdUYmePi5Q4Y5tTVpm3s2LTAtHV7h0dw/F8v
	QEPFwb+RjNw1AKfOUox0Nm0W5rTtCcdMYLfczTMCvYfQFnTOZKcmvYQTgdl1GBYPh4uU
	dryddjQD7b3Ej9uwg9WVsj1uagsXrQTBLxb3FY0cf2nWqp0NzYH4yQPbbodPwYJLJbqp
	+iPuB4nPUuzs2oOp4BEeYRsN9Db/ejCWOCFAB8fncsHh0eyFMNj993tDcMcytFDi+42I
	MNVKCP3vWaedSxjCy2ssiqfJjahCbUVJny7420q4IGuyLOzMBYIXLxq+yeeoYtB38bMg
	lGdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=Af58GZ2jJZT7Vw2OU9+g/ZPzsvcSjLuV4ykztdcl/bg=;
	b=AHbgdEjwffvMrYNUz3YV+ngwILHMS2Q2VA7zgnagvQbHJSAwRmW9bt0e+vdWcJfD0j
	cOtDvqtBmfcCpWO7hKKg5MDWcTNpbLnm4Z6OIgbYWoQJhdEydZ0ynsfUIhPaDi+rpSXM
	UJsLQh2qA7UA1cBO4SyqFqxJyUVMjVsIUvIytndnY310ejAiTgzNyScA+QeOeqIRAdeE
	qfClyh9K38t2xmaLb3xjq8JD8wULW3l09MRQM/3FlR4YFpWlBL3+/j24CopBvAIW0OEk
	y4HuXPfRWOuOKAKzJF2ZnqiOdvDfoa4moqKx2qcvix3yxjcOytFxdBmTBKH3k2T6IMPa
	VaLQ==
X-Gm-Message-State: APjAAAUsbrsR73Pv39stLFPQOGpLq0DYqNeJrB3hRS24eRhbInvPxywC
	KuJmBZmPdFDysip94h66vJF178UC
X-Google-Smtp-Source: APXvYqwgegb3gZuCz6wKmy0oq2q+NqkVVbBWVa0k+duB9uVn8xm/ZyLHH56IIwNqsKZ47zGgNCGJSg==
X-Received: by 2002:a65:538b:: with SMTP id x11mr55398118pgq.35.1554053344102; 
	Sun, 31 Mar 2019 10:29:04 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	j16sm10333893pfi.58.2019.03.31.10.29.03 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 31 Mar 2019 10:29:03 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Sun, 31 Mar 2019 10:28:59 -0700
Message-Id: <20190331172900.28894-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190331172900.28894-1-akuster808@gmail.com>
References: <20190331172900.28894-1-akuster808@gmail.com>
Subject: [meta-security][PATCH 3/4] linux-yocto: make bbappend version neutral
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
X-List-Received-Date: Sun, 31 Mar 2019 17:29:06 -0000

update apparmor configs

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/linux/linux-yocto/apparmor.cfg        | 12 +++++++-----
 .../linux/linux-yocto/apparmor_on_boot.cfg           |  1 +
 ...nux-yocto_4.%.bbappend => linux-yocto_%.bbappend} |  1 +
 3 files changed, 9 insertions(+), 5 deletions(-)
 create mode 100644 recipes-kernel/linux/linux-yocto/apparmor_on_boot.cfg
 rename recipes-kernel/linux/{linux-yocto_4.%.bbappend => linux-yocto_%.bbappend} (78%)

diff --git a/recipes-kernel/linux/linux-yocto/apparmor.cfg b/recipes-kernel/linux/linux-yocto/apparmor.cfg
index 1dc4168..b5f9bb2 100644
--- a/recipes-kernel/linux/linux-yocto/apparmor.cfg
+++ b/recipes-kernel/linux/linux-yocto/apparmor.cfg
@@ -1,13 +1,15 @@
 CONFIG_AUDIT=y
-CONFIG_AUDITSYSCALL=y
-CONFIG_AUDIT_WATCH=y
-CONFIG_AUDIT_TREE=y
 # CONFIG_NETFILTER_XT_TARGET_AUDIT is not set
+CONFIG_SECURITY_NETWORK=y
+# CONFIG_SECURITY_NETWORK_XFRM is not set
 CONFIG_SECURITY_PATH=y
 # CONFIG_SECURITY_SELINUX is not set
 CONFIG_SECURITY_APPARMOR=y
-CONFIG_SECURITY_APPARMOR_BOOTPARAM_VALUE=1
 CONFIG_SECURITY_APPARMOR_HASH=y
 CONFIG_SECURITY_APPARMOR_HASH_DEFAULT=y
+# CONFIG_SECURITY_APPARMOR_DEBUG is not set
 CONFIG_INTEGRITY_AUDIT=y
-# CONFIG_DEFAULT_SECURITY_APPARMOR is not set
+CONFIG_DEFAULT_SECURITY_APPARMOR=y
+# CONFIG_DEFAULT_SECURITY_DAC is not set
+CONFIG_DEFAULT_SECURITY="apparmor"
+CONFIG_AUDIT_GENERIC=y
diff --git a/recipes-kernel/linux/linux-yocto/apparmor_on_boot.cfg b/recipes-kernel/linux/linux-yocto/apparmor_on_boot.cfg
new file mode 100644
index 0000000..fc35740
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto/apparmor_on_boot.cfg
@@ -0,0 +1 @@
+CONFIG_SECURITY_APPARMOR_BOOTPARAM_VALUE=1
diff --git a/recipes-kernel/linux/linux-yocto_4.%.bbappend b/recipes-kernel/linux/linux-yocto_%.bbappend
similarity index 78%
rename from recipes-kernel/linux/linux-yocto_4.%.bbappend
rename to recipes-kernel/linux/linux-yocto_%.bbappend
index 067be8f..321392c 100644
--- a/recipes-kernel/linux/linux-yocto_4.%.bbappend
+++ b/recipes-kernel/linux/linux-yocto_%.bbappend
@@ -2,6 +2,7 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
 
 SRC_URI += "\
         ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', ' file://apparmor.cfg', '', d)} \
+        ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', ' file://apparmor_on_boot.cfg', '', d)} \
 "
 
 SRC_URI += "\
-- 
2.17.1


