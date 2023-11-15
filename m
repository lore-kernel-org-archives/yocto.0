Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7627C54FB9
	for <webhook@archiver.kernel.org>; Wed, 15 Nov 2023 14:42:16 +0000 (UTC)
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
 by mx.groups.io with SMTP id smtpd.web11.14787.1700059333537923695
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Nov 2023 06:42:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=BO5/w/nf;
 spf=pass (domain: smile.fr, ip: 209.85.128.53, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-40906fc54fdso56497545e9.0
        for <yocto@lists.yoctoproject.org>; Wed, 15 Nov 2023 06:42:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1700059331; x=1700664131; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=5QPJo2dreajnPrvxVBWoZYHILts/MfG4zhEoZa2zTwQ=;
        b=BO5/w/nfRm9JgzIey5Nz5cH7SwDSAkcJASUwisfONXse3e8ZzfMP+qFRR0xMoRFwcN
         LMEPy5L65ZFg21WUmPkqCCgUa5dr9rI+Ax7TAjzqD5B4wZw+/Jalr8CDw/12+VMLBF5D
         w8DkrnGf6hyVt3EC7cooZbiP5dO560Y7cCWOWYMM64iTBZghC0+xvvIpjpLlIpbn0jua
         9mKeYzB+mWbh35JlcypaBgzINU+0iOhdgSsZ3dMjs1qi1ta5vwI7yyOnlnmj06k4kfvL
         g+uIHDZaniB4R8CeG/io8RrquaBurnzH0OgjH38XmgKrF9ndDpD0Bwd9YFCml273q25m
         vjkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700059331; x=1700664131;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5QPJo2dreajnPrvxVBWoZYHILts/MfG4zhEoZa2zTwQ=;
        b=Oun9NkmvzBli45UITKAqrc5FcJ+q33GWMKWTTQux11b+c+jUvJ5MUSDx747QQqMkbO
         PisthSyihfvEbanN6379yAtPQJJoHfRzBXfesZjTxtZrQ0DZ9Sshpgr8cjqN34OevEz0
         He8vOvKrWVI7tsZ+Qn4j5ADhjFHVC3Yz1tutA0yFkNuSOz/SnTjfMx3y8gJjorlq529t
         GhPnkYFgPyoJVLw74tJcKjEB7FC7xKv0WtpkPPiq75U7eqHpS0yLD7NcO11K9k+XAW6U
         6VWNMVtlUQqYTIB0NRmdZvj0supm5pzSB3HVQpO6Uee+XCUMmr2P7+7cCJ2xgshmSkGq
         3iSg==
X-Gm-Message-State: AOJu0Yxaylwmq24uJh724u4/UntLnyWYjZTffhIbbcvlB0FmXEDj/5h2
	SXmXxzZcz9hzUAUMLG2SQq5KPqn5Mm/HepfY0zs=
X-Google-Smtp-Source: AGHT+IF01afZut6yTkWY7Rols3lSlaxDasq6SKNOA2Z9eRu/nwqz7ZJgazjYvtrIK/JUOdOJwPn45A==
X-Received: by 2002:a5d:5445:0:b0:32d:8094:f4c8 with SMTP id w5-20020a5d5445000000b0032d8094f4c8mr9916912wrv.19.1700059331217;
        Wed, 15 Nov 2023 06:42:11 -0800 (PST)
Received: from P-ASN-ECS-830T8C3.idf.intranet (static-css-ccs-204145.business.bouyguestelecom.com. [176.157.204.145])
        by smtp.gmail.com with ESMTPSA id k5-20020a5d4285000000b00327de0173f6sm10859532wrq.115.2023.11.15.06.42.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Nov 2023 06:42:11 -0800 (PST)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Subject: [yocto-autobuilder-helper][PATCH] config.json: reproducible-meta-oe: exclude known repro fails
Date: Wed, 15 Nov 2023 15:42:03 +0100
Message-Id: <20231115144203.644395-1-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Nov 2023 14:42:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61703

Use the new OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES to not trigger a test
failure on the known not-reproducible packages from meta-openembedded.

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 config.json | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/config.json b/config.json
index d10a3a8..819fc7c 100644
--- a/config.json
+++ b/config.json
@@ -318,7 +318,8 @@
                     "USERADD_GID_TABLES:append = ' files/static-group-meta-networking'",
                     "USERADD_UID_TABLES:append = ' files/static-passwd-meta-networking'",
                     "USERADD_GID_TABLES:append = ' files/static-group-meta-oe'",
-                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-oe'"
+                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-oe'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES = 'xfsprogs-doc zfs zfs-dbg zfs-dev'"
                 ]
             },
             "step2" : {
@@ -338,7 +339,8 @@
                     "USERADD_GID_TABLES:append = ' files/static-group-meta-networking'",
                     "USERADD_UID_TABLES:append = ' files/static-passwd-meta-networking'",
                     "USERADD_GID_TABLES:append = ' files/static-group-meta-oe'",
-                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-oe'"
+                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-oe'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES = 'geary geary-dbg gegl-dev gimp gimp-dbg gnome-terminal-src grilo-src gtk-vnc-src ibus-doc'"
                 ]
             },
             "step3" : {
@@ -346,6 +348,12 @@
                 "EXTRACMDS" : ["${SCRIPTSDIR}/checkvnc; OEQA_DEBUGGING_SAVED_OUTPUT=${BASE_SHAREDDIR}/pub/repro-fail-openembedded/meta-initramfs/ DISPLAY=:1 BB_LOGCONFIG=$(readlink -f $BB_LOGCONFIG) oe-selftest --newbuilddir $BUILDDIR/build-st-meta-initramfs -r reproducible"],
                 "ADDLAYER" : [
                     "${BUILDDIR}/../meta-openembedded/meta-initramfs"
+                ],
+                "extravars" : [
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES =  'kexec-klibc kexec-tools-klibc-dbg'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES += 'mtdinfo-klibc ubiattach-klibc ubiblock-klibc ubicrc32-klibc ubidetach-klibc ubiformat-klibc ubimkvol-klibc'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES += 'ubinfo-klibc ubinize-klibc ubirename-klibc ubirmvol-klibc ubirsvol-klibc ubiupdatevol-klibc ubi-utils-klibc-dbg'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES += 'vmcore-dmesg-klibc kexecboot-klibc kexecboot-klibc-dbg'"
                 ]
             },
             "step4" : {
@@ -403,7 +411,8 @@
                     "USERADD_GID_TABLES:append = ' files/static-group-meta-perl'",
                     "USERADD_UID_TABLES:append = ' files/static-passwd-meta-perl'",
                     "USERADD_GID_TABLES:append = ' files/static-group-meta-oe'",
-                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-oe'"
+                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-oe'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES = 'libencode-perl-src libhtml-tree-perl libhtml-tree-perl-doc libmodule-build-tiny-perl po4a po4a-doc'"
                 ]
             },
             "step8" : {
-- 
2.30.2


