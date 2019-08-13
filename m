Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5099E00DA4; Tue, 13 Aug 2019 16:54:43 -0700 (PDT)
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
	*      [209.85.210.170 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com
	[209.85.210.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4104AE0049C
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 16:54:43 -0700 (PDT)
Received: by mail-pf1-f170.google.com with SMTP id q139so4208108pfc.13
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2019 16:54:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id;
	bh=qV05KTMVZe8RUP7c4FaJXKPkmUdDWIemVnXRAWroZRk=;
	b=D5pZ7Oz3ceQxqdmrUjEQcC0e7VeI7a/0zMDFAIOH0z7oSV4rWOZy+ZrwKOWF6+Y90Z
	mQTw5/3VgubA7xf5IwnM8Fs7Y/d1eeGY5AiKdl71vKKFjJZXzADvZzn+RUSYjU2OaDHT
	3qfOi4Nj05WXx3o0nEmx8M12/iX16gqoKSaiXKzmmKzkzLoG2A2b07zfibqqvEDCsz2w
	XQueygZbqKXcpopgEMh+SDIr1EM/MFCsy08b7zaXZCZczEnCem//VBybb15cFbjHgzhB
	1+hF7dOclMqWw92yv/Kvew54s36fd/5mnfu15ZZmp40Cv131t6jpTHqbnPMn2s7l96ED
	f6xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id;
	bh=qV05KTMVZe8RUP7c4FaJXKPkmUdDWIemVnXRAWroZRk=;
	b=Iy0upHSA2F5MJKSETVeT8cl8EyblAU6OrBUE/NrTM1RwJ/0EiCjODKtJLMEIkKKrc7
	GWeQUGzxpQw8FnQYG2D3IYMRQCVLv0ChUp/MmTWLQ+fR+u1bQAez5JYB0WrKg4PqTlnz
	WHP2We3H4cErrv0F7qZ5Rjjz8BxmDOAEKGBpUku4w5+Gyz6Cp2Rc1fRvpROfWAIOyMpg
	Crb3R2uezF1kEDXcDp7jd5yWVB8kvJrzL2w+9m0Ch2tBsXLFvHERu0Jr+u2hpOX5Cdu5
	EOaIT4DtNO8EohdsFr2fX+asW6Lg0D9mS4NL2QVs2wADlkD+7Yz1zpWsUaKJJJk8Sq9h
	rn+w==
X-Gm-Message-State: APjAAAU9RIR9k2MgkxevuDa6FQ246kvLj2aU0r1Bc9rm3NzW1jctomWt
	65f28vLU8PaONBs7+04YzCBXGimX
X-Google-Smtp-Source: APXvYqxomPnKxrcPoRY5UT3ZjxissAHg0vU0/dEHkmHRyE6jtFH6Y6YpArb/+6rnM2i0HsaaL6e5pg==
X-Received: by 2002:a63:c64b:: with SMTP id x11mr36306175pgg.319.1565740482439;
	Tue, 13 Aug 2019 16:54:42 -0700 (PDT)
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net.
	[67.181.203.136]) by smtp.gmail.com with ESMTPSA id
	s16sm2496441pjp.10.2019.08.13.16.54.41 for <yocto@yoctoproject.org>
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Tue, 13 Aug 2019 16:54:41 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 13 Aug 2019 16:54:38 -0700
Message-Id: <20190813235440.16385-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
Subject: [meta-security][PATCH 1/3] linux-%: remove kernel fragments now in cache
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
X-List-Received-Date: Tue, 13 Aug 2019 23:54:43 -0000

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/linux/linux-%.bbapend             | 9 ---------
 recipes-kernel/linux/linux/apparmor.cfg          | 9 ---------
 recipes-kernel/linux/linux/apparmor_on_boot.cfg  | 1 -
 recipes-kernel/linux/linux/smack-default-lsm.cfg | 2 --
 recipes-kernel/linux/linux/smack.cfg             | 7 -------
 5 files changed, 28 deletions(-)
 delete mode 100644 recipes-kernel/linux/linux-%.bbapend
 delete mode 100644 recipes-kernel/linux/linux/apparmor.cfg
 delete mode 100644 recipes-kernel/linux/linux/apparmor_on_boot.cfg
 delete mode 100644 recipes-kernel/linux/linux/smack-default-lsm.cfg
 delete mode 100644 recipes-kernel/linux/linux/smack.cfg

diff --git a/recipes-kernel/linux/linux-%.bbapend b/recipes-kernel/linux/linux-%.bbapend
deleted file mode 100644
index ec7adeb..0000000
--- a/recipes-kernel/linux/linux-%.bbapend
+++ /dev/null
@@ -1,9 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/linux:"
-
-SRC_URI += "\
-        ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', ' file://apparmor.cfg', '', d)} \
-        ${@bb.utils.contains('DISTRO_FEATURES', 'apparmor', ' file://apparmor_on_boot.cfg', '', d)} \
-        ${@bb.utils.contains('DISTRO_FEATURES', 'smack', ' file://smack.cfg', '', d)} \
-        ${@bb.utils.contains('DISTRO_FEATURES', 'smack', ' file://smack-default-lsm.cfg', '', d)} \
-        ${@bb.utils.contains('DISTRO_FEATURES', 'yama', ' file://yama.cfg', '', d)} \
-"
diff --git a/recipes-kernel/linux/linux/apparmor.cfg b/recipes-kernel/linux/linux/apparmor.cfg
deleted file mode 100644
index ae6cdcd..0000000
--- a/recipes-kernel/linux/linux/apparmor.cfg
+++ /dev/null
@@ -1,9 +0,0 @@
-CONFIG_AUDIT=y
-CONFIG_SECURITY_PATH=y
-CONFIG_SECURITY_APPARMOR=y
-CONFIG_SECURITY_APPARMOR_HASH=y
-CONFIG_SECURITY_APPARMOR_HASH_DEFAULT=y
-CONFIG_INTEGRITY_AUDIT=y
-CONFIG_DEFAULT_SECURITY_APPARMOR=y
-CONFIG_DEFAULT_SECURITY="apparmor"
-CONFIG_AUDIT_GENERIC=y
diff --git a/recipes-kernel/linux/linux/apparmor_on_boot.cfg b/recipes-kernel/linux/linux/apparmor_on_boot.cfg
deleted file mode 100644
index fc35740..0000000
--- a/recipes-kernel/linux/linux/apparmor_on_boot.cfg
+++ /dev/null
@@ -1 +0,0 @@
-CONFIG_SECURITY_APPARMOR_BOOTPARAM_VALUE=1
diff --git a/recipes-kernel/linux/linux/smack-default-lsm.cfg b/recipes-kernel/linux/linux/smack-default-lsm.cfg
deleted file mode 100644
index b5c4845..0000000
--- a/recipes-kernel/linux/linux/smack-default-lsm.cfg
+++ /dev/null
@@ -1,2 +0,0 @@
-CONFIG_DEFAULT_SECURITY="smack"
-CONFIG_DEFAULT_SECURITY_SMACK=y
diff --git a/recipes-kernel/linux/linux/smack.cfg b/recipes-kernel/linux/linux/smack.cfg
deleted file mode 100644
index 0d5fc64..0000000
--- a/recipes-kernel/linux/linux/smack.cfg
+++ /dev/null
@@ -1,7 +0,0 @@
-CONFIG_NETLABEL=y
-CONFIG_SECURITY_NETWORK=y
-# CONFIG_SECURITY_NETWORK_XFRM is not set
-CONFIG_SECURITY_SMACK=y
-CONFIG_SECURITY_SMACK_BRINGUP=y
-CONFIG_SECURITY_SMACK_APPEND_SIGNALS=y
-CONFIG_TMPFS_XATTR=y
-- 
2.17.1


