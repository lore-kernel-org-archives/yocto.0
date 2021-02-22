Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web08.36622.1614006871338141280
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Feb 2021 07:14:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=PpRbBHdE;
 spf=pass (domain: gmail.com, ip: 209.85.214.177, mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f177.google.com with SMTP id s16so7913332plr.9
        for <yocto@lists.yoctoproject.org>; Mon, 22 Feb 2021 07:14:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=1x1XGCpn1bL8+Ihppjl/t0cA5YUBC7/37yR4eATfWZY=;
        b=PpRbBHdEVo4zGF48PvEPvZzEU9iwUU9Z4ahpASZsY6RTzWgy0AcxI5H3fHUKqz2ABm
         3I3b0J/KjORD1gPiDvDezfko0ey7s1udtAEoBCS3+0Vt5lmoDdGBBBci4K4WLiqOku5B
         iSxOkhB2uNv1ZsYEeYT6uMJfXRrq2Fu1c5Psw0fm8fzW3pZWgASaOFhEFjU6j5HCtp0P
         rQFySR4VlrZWjspcPRLwCZFuBKTCn1fe3KLtsMnDWCi+BgNa08bIAmWPNZcy2sqSYtQ9
         xD5QPw6NJXKEfPnD6i5I9d1qzCVomVTjFOgKxhh3JbAmCSQ4/DMJ1bSx7zwSBRbpTLhb
         HtAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=1x1XGCpn1bL8+Ihppjl/t0cA5YUBC7/37yR4eATfWZY=;
        b=NYToPRDJCjO/q506l54xNPLOD3CYDGeEdTGKw4WcmIw/XKLUDL7JgmD4oa47+fgH/V
         UjD+iR/vjxDrkMU9eoJsD7kuW0eDQpPMgqXKRNKmrteVrcb6vCHkfRARwz1J4LL8barK
         I3AVVDpkTdm3BdF9oU7B3OYvoAgbPbM5rv5ioAgvaEkMKcKsj9MRa7uLIIyQsoPZLZeQ
         Q9Ryj/lRshLgc4VGf/zz37hA4hDn99vV1lfuWZV0+l/E65ngn/zfLuOIWZq5J5dJJ3TE
         keWT/ERJWubwygvw4EQ+Mu058iPMzqxlGxUYEYjaz2tIfXLVrlXuy2a/O4yraPbzOjtJ
         nn4A==
X-Gm-Message-State: AOAM532ewzY6z5NBx2aJHQG9H7Nd+e3QqgwE7i8Kamceiupza0haFeTz
	VrqZviLdlXxVPQ0KXQ+lSIa1GdFjkFDOag==
X-Google-Smtp-Source: ABdhPJwp1xMJ7efunX8HHhm4ItJqRbvMc+IKbQP3Jwbzy5Fd6zC9Lgaz5+1Rx0Za/GiAG1mv59ysGg==
X-Received: by 2002:a17:902:edcb:b029:df:cce5:1105 with SMTP id q11-20020a170902edcbb02900dfcce51105mr23007980plk.2.1614006870733;
        Mon, 22 Feb 2021 07:14:30 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:8e1:8c0f:8c00:9696])
        by smtp.gmail.com with ESMTPSA id 134sm20069288pfc.113.2021.02.22.07.14.29
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Feb 2021 07:14:30 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 5/5] nikito: Update common-licenses references to match new names
Date: Mon, 22 Feb 2021 07:14:25 -0800
Message-Id: <20210222151425.13534-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210222151425.13534-1-akuster808@gmail.com>
References: <20210222151425.13534-1-akuster808@gmail.com>

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-scanners/buck-security/buck-security_0.7.bb     | 2 +-
 recipes-scanners/checksecurity/checksecurity_2.0.15.bb  | 2 +-
 recipes-security/nikto/nikto_2.1.6.bb                   | 2 +-
 recipes-security/redhat-security/redhat-security_1.0.bb | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/recipes-scanners/buck-security/buck-security_0.7.bb b/recipes-scanners/buck-security/buck-security_0.7.bb
index 179eeda..20a1fb0 100644
--- a/recipes-scanners/buck-security/buck-security_0.7.bb
+++ b/recipes-scanners/buck-security/buck-security_0.7.bb
@@ -3,7 +3,7 @@ DESCRIPTION = "Buck-Security is a security scanner for Debian and Ubuntu Linux.
 system. This enables you to quickly overview the security status of your Linux system."
 SECTION = "security"
 LICENSE = "GPL-2.0"
-LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0-only;md5=801f80980d171dd6425610833a22dbe6"
 
 SRC_URI = "http://sourceforge.net/projects/buck-security/files/buck-security/buck-security_${PV}/${BPN}_${PV}.tar.gz"
 
diff --git a/recipes-scanners/checksecurity/checksecurity_2.0.15.bb b/recipes-scanners/checksecurity/checksecurity_2.0.15.bb
index 204123d..0161b4c 100644
--- a/recipes-scanners/checksecurity/checksecurity_2.0.15.bb
+++ b/recipes-scanners/checksecurity/checksecurity_2.0.15.bb
@@ -2,7 +2,7 @@ SUMMARY = "basic system security checks"
 DESCRIPTION = "checksecurity is a simple package which will scan your system for several simple security holes."
 SECTION = "security"
 LICENSE = "GPL-2.0"
-LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0-only;md5=801f80980d171dd6425610833a22dbe6"
 
 SRC_URI = "http://ftp.de.debian.org/debian/pool/main/c/checksecurity/checksecurity_${PV}.tar.gz \
            file://setuid-log-folder.patch \
diff --git a/recipes-security/nikto/nikto_2.1.6.bb b/recipes-security/nikto/nikto_2.1.6.bb
index 2d2c46c..615cc30 100644
--- a/recipes-security/nikto/nikto_2.1.6.bb
+++ b/recipes-security/nikto/nikto_2.1.6.bb
@@ -4,7 +4,7 @@ SECTION = "security"
 HOMEPAGE = "https://cirt.net/Nikto2"
 
 LICENSE = "GPLv2"
-LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0-only;md5=801f80980d171dd6425610833a22dbe6"
 
 SRCREV = "f1bbd1a8756c076c8fd4f4dd0bc34a8ef215ae79"
 SRC_URI = "git://github.com/sullo/nikto.git \
diff --git a/recipes-security/redhat-security/redhat-security_1.0.bb b/recipes-security/redhat-security/redhat-security_1.0.bb
index 56f734c..0d70dc6 100644
--- a/recipes-security/redhat-security/redhat-security_1.0.bb
+++ b/recipes-security/redhat-security/redhat-security_1.0.bb
@@ -2,7 +2,7 @@ SUMMARY = "redhat security tools"
 DESCRIPTION = "Tools used by redhat linux distribution for security checks"
 SECTION = "security"
 LICENSE = "GPLv2"
-LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0;md5=801f80980d171dd6425610833a22dbe6"
+LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/GPL-2.0-only;md5=801f80980d171dd6425610833a22dbe6"
 
 SRC_URI = "file://find-chroot-py.sh \
            file://find-chroot.sh \
-- 
2.17.1

