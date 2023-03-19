Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4199EC74A5B
	for <webhook@archiver.kernel.org>; Sun, 19 Mar 2023 00:40:58 +0000 (UTC)
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
 by mx.groups.io with SMTP id smtpd.web10.9189.1679186449223434264
 for <yocto@lists.yoctoproject.org>;
 Sat, 18 Mar 2023 17:40:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=iSY8tceI;
 spf=pass (domain: gmail.com, ip: 209.85.219.45, mailfrom: akuster808@gmail.com)
Received: by mail-qv1-f45.google.com with SMTP id 97so5730661qvb.6
        for <yocto@lists.yoctoproject.org>; Sat, 18 Mar 2023 17:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679186448;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i6uLUSYb97ZVTkKlBFeJF4ZdOQ145B/wLXVop/weCuo=;
        b=iSY8tceIdkrIDMTKjK44uRFjZwT+Y8ne7419G+NuaOPLIZQQTqbX7RFlPzi3ir9Dxi
         zPfP2Un831AZ7KT+VoDc1XKBdAWkVDWjQ+z1UmXNoYP8fxu+f10mlKKRCwBsc0SFaBJl
         QipkjhuQlkgBgD4T335RoxB80OHeUBA01wX0iwQFHHoPBSJxhTQrkqvdZAFFoHHEz/q4
         8KHSq7bNaR+NDjrcQq+VelPbnH7iTFc3pr2+YvECsuEk07c1kOf5+n1bvDGWjpOaWO+M
         arzoaJhPRBrmI0ztk94/zxoiuTFcjg8mWsSjpjlvfwJgx0mghiLDJ8fWrOaa/eawm4Fb
         0xEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679186448;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i6uLUSYb97ZVTkKlBFeJF4ZdOQ145B/wLXVop/weCuo=;
        b=b7LG2LelIOYI6Js8P0ooAnF7hVyAN5xHcFVQlit9bjzn38h35Jt7+2dPMs+Jx479aI
         Y3UA2sM2Bna5hkd6rFqR7BwkMrzOr1bjiSDIk9R/3mSlGqriyiC3Z+0zRKFbANIWxDTt
         KIrJ6MZuChBsHMksGu6neVetjLK8VujH5Vv7K4kpIv8arNQgFsujQjJTElNjLzQ1vDJl
         zANXKH9ZkknOqn99m8VeHR0pT1QftrL+Kq/7nYYIvxSnASuoxV+YAoANsCqhbRinm2IF
         j2GYdSGmRP1KMw0Y/gzsks7LqSseOwo5/OXTKqFa23tSgp9BPAG4DZGxTCqDZdjWlb5j
         KcRQ==
X-Gm-Message-State: AO0yUKWi7rQ+8FXAG+oeMs+GnsN41a2wqH+V5g+HruhSEwBFVb+fqNcF
	Kj73g5TTbCF41GyzADx7v2qONHECjE4=
X-Google-Smtp-Source: AK7set+ZPEVYU0ZXpzBT3+FdYXXuDo+G5TUUr/m7Oe451WQS7bR8tT+eB/cKJl2+JOmvsCTZ81wXpg==
X-Received: by 2002:a05:6214:c88:b0:5a9:c758:ba0e with SMTP id r8-20020a0562140c8800b005a9c758ba0emr38183496qvr.16.1679186448101;
        Sat, 18 Mar 2023 17:40:48 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:18:2153:2b6:e915])
        by smtp.gmail.com with ESMTPSA id s10-20020a05620a16aa00b0074341cb30d0sm4454600qkj.62.2023.03.18.17.40.47
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Mar 2023 17:40:47 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/4] apparmor: update to 3.1.3
Date: Sat, 18 Mar 2023 20:40:44 -0400
Message-Id: <20230319004046.620053-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230319004046.620053-1-akuster808@gmail.com>
References: <20230319004046.620053-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 19 Mar 2023 00:40:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59464

drop debian patch as the file was dropped upstream.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../{apparmor_3.0.7.bb => apparmor_3.1.3.bb}  |  7 +--
 ...pparmor.debian-add-missing-functions.patch | 57 -------------------
 2 files changed, 3 insertions(+), 61 deletions(-)
 rename recipes-mac/AppArmor/{apparmor_3.0.7.bb => apparmor_3.1.3.bb} (96%)
 delete mode 100644 recipes-mac/AppArmor/files/0001-rc.apparmor.debian-add-missing-functions.patch

diff --git a/recipes-mac/AppArmor/apparmor_3.0.7.bb b/recipes-mac/AppArmor/apparmor_3.1.3.bb
similarity index 96%
rename from recipes-mac/AppArmor/apparmor_3.0.7.bb
rename to recipes-mac/AppArmor/apparmor_3.1.3.bb
index e7d677e..fd649e4 100644
--- a/recipes-mac/AppArmor/apparmor_3.0.7.bb
+++ b/recipes-mac/AppArmor/apparmor_3.1.3.bb
@@ -14,15 +14,14 @@ LIC_FILES_CHKSUM = "file://${S}/LICENSE;md5=fd57a4b0bc782d7b80fd431f10bbf9d0"
 DEPENDS = "bison-native apr gettext-native coreutils-native swig-native"
 
 SRC_URI = " \
-    git://gitlab.com/apparmor/apparmor.git;protocol=https;branch=apparmor-3.0 \
+    git://gitlab.com/apparmor/apparmor.git;protocol=https;branch=apparmor-3.1 \
     file://run-ptest \
     file://crosscompile_perl_bindings.patch \
     file://0001-Makefile.am-suppress-perllocal.pod.patch \
     file://0001-Makefile-fix-hardcoded-installation-directories.patch \
-    file://0001-rc.apparmor.debian-add-missing-functions.patch \
     "
 
-SRCREV = "0ead606d9e608801f45e13a34358036135470729"
+SRCREV = "e69cb5047946818e6a9df326851483bb075a5cfe"
 S = "${WORKDIR}/git"
 
 PARALLEL_MAKE = ""
@@ -95,7 +94,7 @@ do_install () {
 
     if ${@bb.utils.contains('DISTRO_FEATURES','sysvinit','true','false',d)}; then
         install -d ${D}${sysconfdir}/init.d
-        install -m 755 ${B}/parser/rc.apparmor.debian ${D}${sysconfdir}/init.d/apparmor
+        install -m 755 ${B}/parser/rc.apparmor.functions ${D}${sysconfdir}/init.d/apparmor
     fi
 
     if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
diff --git a/recipes-mac/AppArmor/files/0001-rc.apparmor.debian-add-missing-functions.patch b/recipes-mac/AppArmor/files/0001-rc.apparmor.debian-add-missing-functions.patch
deleted file mode 100644
index 53bdde8..0000000
--- a/recipes-mac/AppArmor/files/0001-rc.apparmor.debian-add-missing-functions.patch
+++ /dev/null
@@ -1,57 +0,0 @@
-From a737c95ac0f887c365fe8f16583ea95da79de1e9 Mon Sep 17 00:00:00 2001
-From: Yi Zhao <yi.zhao@windriver.com>
-Date: Mon, 21 Jun 2021 16:53:39 +0800
-Subject: [PATCH] rc.apparmor.debian: add missing functions
-
-Add missing functions:
-  aa_log_action_start
-  aa_log_action_end
-  aa_log_daemon_msg
-  aa_log_end_msg
-
-Fixes:
-$ /etc/init.d/apparmor start
-/lib/apparmor/rc.apparmor.functions: line 294: aa_log_daemon_msg: command not found
-/lib/apparmor/rc.apparmor.functions: line 214: aa_log_action_start: command not found
-
-Upstream-Status: Pending
-
-Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
----
- parser/rc.apparmor.debian | 20 ++++++++++++++++++++
- 1 file changed, 20 insertions(+)
-
-diff --git a/parser/rc.apparmor.debian b/parser/rc.apparmor.debian
-index 8efd4400..f35124e8 100644
---- a/parser/rc.apparmor.debian
-+++ b/parser/rc.apparmor.debian
-@@ -70,6 +70,26 @@ aa_log_skipped_msg() {
-         echo ": Skipped."
- }
- 
-+aa_log_action_start()
-+{
-+    echo "$@"
-+}
-+
-+aa_log_action_end()
-+{
-+    printf ""
-+}
-+
-+aa_log_daemon_msg()
-+{
-+    echo "$@"
-+}
-+
-+aa_log_end_msg()
-+{
-+    printf ""
-+}
-+
- usage() {
-     echo "Usage: $0 {start|stop|restart|try-restart|reload|force-reload|status|kill}"
- }
--- 
-2.17.1
-
-- 
2.25.1


