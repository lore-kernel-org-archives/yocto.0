Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 14790C00140
	for <webhook@archiver.kernel.org>; Sat,  6 Aug 2022 01:50:17 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com
 [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web12.1056.1659750615076251359
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Aug 2022 18:50:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=gDv5vCt3;
 spf=pass (domain: gmail.com, ip: 209.85.216.41,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f41.google.com with SMTP id
 q9-20020a17090a2dc900b001f58bcaca95so2931904pjm.3
        for <yocto@lists.yoctoproject.org>;
 Fri, 05 Aug 2022 18:50:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4pxPYv46LvKblunfztmx9OjgUXPn4XtSB5cz26t++iQ=;
        b=gDv5vCt3XJLwYwRgzWUZSjz8Pi/tBl0F4o1tMy/XM79lIUUtkgUhOKohZLYRJ/Yrc/
         GcnwDUtAxkauOfQgY3lmc/jORlnpTYMBEbJ8TaWu3by9ER8B90nQ4JPn3HhEI64cI/Yg
         I9Qgir8bUKT6CTJad8tDsHxCMIBUGVhdQIplacl49fPydfY4GKAq/mwKmZqUmYRoEYy0
         +g1bPJBlOnznXlCEyi6wqu+Q9pTVhQQGTe+5ijtee9jldkTmMEvianrhx+fJBHZCLKR/
         TYujetjy+Z039rO7B0nAe1fcmGo0hvCVK+YJ+mlJkWBEJZa5MWjNoivreOb1LZvrn1jm
         nQQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4pxPYv46LvKblunfztmx9OjgUXPn4XtSB5cz26t++iQ=;
        b=sR+ddwF8kbcBMQ19JPVUPeG4pveYnKQ1hxPDfRFwSrLDPJFMdRZVPLJdm2k5m7Ldsx
         NSnCgMF+dXuyuVuEvctFx5AByGq8webzDm0CD65+zoSqB41rJl9lAmElHgWLn5yDRsR7
         mHp+b/GHk4Gqb7dh4pOvkNqy1gwuMoGiQ1MntwxGDKk46bG3B9VKscho17ukIj+PCWoO
         QCEvMkEW78zGftqz1kUmxzaa2fmOdBCfdHk5s+TLLzvFx4Ryd3ettsx0ltOCwl8mWenO
         iefQkc7YzTKFrmOANyfJ9Pg1ZGQaLpzgPz2CmR1w/O6KnJYYPxxe7+AL9t+AHbBQrcY4
         hAEg==
X-Gm-Message-State: ACgBeo3Rxxp4TSAyvkZOhfDSFgDDStHArzVBxjkWW4O4Ti+OkYmsXYwJ
	0W2cA8XCXDzSwqAtXNJL1rrcakyhLo8=
X-Google-Smtp-Source: 
 AA6agR6oLVPhW/Ft2gjuRYLaqXhNH0XrYqcMLKcXufxQODeHZOv75L+es1q673rVYLnwd/vuCp0vWQ==
X-Received: by 2002:a17:90b:4d12:b0:1f5:5af8:c093 with SMTP id
 mw18-20020a17090b4d1200b001f55af8c093mr13846326pjb.33.1659750613841;
        Fri, 05 Aug 2022 18:50:13 -0700 (PDT)
Received: from keaua.caveonetworks.com (c-67-181-203-136.hsd1.ca.comcast.net.
 [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 w13-20020aa7954d000000b0052d96fb3366sm3631295pfq.207.2022.08.05.18.50.12
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Aug 2022 18:50:13 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] cryptmount: Add new pkg
Date: Fri,  5 Aug 2022 18:48:10 -0700
Message-Id: <20220806014811.2728875-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 06 Aug 2022 01:50:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57787

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../cryptmount/cryptmount_5.3.3.bb            | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)
 create mode 100644 recipes-security/cryptmount/cryptmount_5.3.3.bb

diff --git a/recipes-security/cryptmount/cryptmount_5.3.3.bb b/recipes-security/cryptmount/cryptmount_5.3.3.bb
new file mode 100644
index 0000000..6e653c8
--- /dev/null
+++ b/recipes-security/cryptmount/cryptmount_5.3.3.bb
@@ -0,0 +1,25 @@
+SUMMARY = "Linux encrypted filesystem management tool"
+HOMEPAGE = "http://cryptmount.sourceforge.net/"
+LIC_FILES_CHKSUM = "file://README;beginline=3;endline=4;md5=673a990de93a2c5531a0f13f1c40725a"
+LICENSE = "GPL-2.0-only"
+
+SRC_URI = "https://sourceforge.net/projects/cryptmount/files/${BPN}/${BPN}-5.3/${BPN}-${PV}.tar.gz"
+
+SRC_URI[sha256sum] = "682953ff5ba497d48d6b13e22ca726c98659abd781bb8596bb299640dd255d9b"
+
+inherit autotools-brokensep gettext pkgconfig systemd
+
+EXTRA_OECONF = " --enable-cswap --enable-fsck --enable-argv0switch"
+
+PACKAGECONFIG ?="intl luks gcrypt nls"
+PACKAGECONFIG:append = " ${@bb.utils.contains('DISTRO_FEATURES', 'systemd', 'systemd', '', d)}"
+
+PACKAGECONFIG[systemd] = "--with-systemd, --without-systemd, systemd"
+PACKAGECONFIG[intl] = "--with-libintl-prefix, --without-libintl-prefix"
+PACKAGECONFIG[gcrypt] = "--with-libgcrypt, --without-libgcrypt, libgcrypt"
+PACKAGECONFIG[luks] = "--enable-luks, --disable-luks, cryptsetup"
+PACKAGECONFIG[nls] = "--enable-nls, --disable-nls, "
+
+SYSTEMD_SERVICE:${PN} = "cryptmount.service"
+
+RDEPENDS:${PN} = "libdevmapper"
-- 
2.25.1


