Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EED58C072A2
	for <webhook@archiver.kernel.org>; Wed, 15 Nov 2023 22:59:09 +0000 (UTC)
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web11.27597.1700089139833784742
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Nov 2023 14:59:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=ykHTiNy3;
 spf=pass (domain: smile.fr, ip: 209.85.128.54, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-40853c639abso1219975e9.0
        for <yocto@lists.yoctoproject.org>; Wed, 15 Nov 2023 14:58:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1700089138; x=1700693938; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0tL0NlcNDT3UEZhDj+bOaIZAy22ZM1nt/jParj57W58=;
        b=ykHTiNy3Fje+0l9c/VQaT+hbrH+J5mwBGDJx/MKaEV+1eHB7c/gZQEwYBZnBsmE790
         v2bStifn7cGKE4OTpBC/eTLogR6vhjR5Z8IJVCJ1MN2FWHAEWiezdfgCMSXh5ELvpJmH
         yeCnM61ninkv9gIvynGdtOrNk1jlY71zDDK9RFSjlarv5qjIs8oz0kuPFrTCMihytJdy
         UcrkQ7s2eT7zaRfRMB4mxgFAj1K1s98qMLap5PNarm6USL+BEp/lxK8N1yFJzAOYBovI
         H+EfHWNiWhClpgpia4TPWszH4Va9sezyrJqC18fmzism64qw83VnRScP+pC27Ht0Wepn
         VOgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700089138; x=1700693938;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0tL0NlcNDT3UEZhDj+bOaIZAy22ZM1nt/jParj57W58=;
        b=ZiUvV1HvgrN65he13oh9pUqYRpUVqHr3uFzzphnKj0EppKjGGiLtLve4SK1KbhNDSB
         V7eTUMRKCRPTHinH+9SaR83txOZLssETfv+ngXZRxmxAScAHDXVtGdDlH3bbhGRhf5Ir
         cmElY2cYseWKR7/Tmce9SW9+orNk7EwQZYHZa5HXV9yQi4ukijJzebLfI0EHdAEDlT9K
         1qlDQkLDctseN9aWJfjC8D/j05Z1zTMJU+glnZprG2tNtBLKQ8mHdf+VMyfxODD5L2LV
         kKQ40C54uF4ED4raQJ6UBtXR2fEPGf1DGyTKyTSL4uCDP2ydQxLZnV02WTwoJhvDQY1j
         X/aQ==
X-Gm-Message-State: AOJu0YyK8CkNuM/j2+0TpjWig+T/vTRHZqEA7sUbW8mLHmJI3FAjXG2K
	519NfrsiXsyKG/d9WcpDH9Z41W2r+FLXqZ1xwow=
X-Google-Smtp-Source: AGHT+IGI1iCnsehS3JOVY3JIu5zOKTsqZP3ncdmc30UDe9MdH+sFNgXCi4eHGToyD/BvXahcZ8I54A==
X-Received: by 2002:a05:600c:4f48:b0:406:177e:5df7 with SMTP id m8-20020a05600c4f4800b00406177e5df7mr11725981wmq.29.1700089137714;
        Wed, 15 Nov 2023 14:58:57 -0800 (PST)
Received: from P-ASN-ECS-830T8C3.local ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id m7-20020a05600c4f4700b0040772138bb7sm1179758wmq.2.2023.11.15.14.58.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Nov 2023 14:58:57 -0800 (PST)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Subject: [yocto-autobuilder-helper][PATCH] config.json: reproducible-meta-oe: Add missing USERADD_UID/GID_TABLES
Date: Wed, 15 Nov 2023 23:58:47 +0100
Message-Id: <20231115225847.2607574-1-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Nov 2023 22:59:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61705

Some USERADD_UID/GID_TABLES were missing for lower layers which caused
some recipes to be not buildable because of skipped recipes (e.g. xfmpc,
python3-ldap)

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 config.json | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/config.json b/config.json
index b8d1f31..f52034d 100644
--- a/config.json
+++ b/config.json
@@ -423,7 +423,9 @@
                     "${BUILDDIR}/../meta-openembedded/meta-python"
                 ],
                 "extravars" : [
-                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer = '1'"
+                    "EXCLUDE_FROM_WORLD:layer-openembedded-layer = '1'",
+                    "USERADD_GID_TABLES:append = ' files/static-group-meta-oe'",
+                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-oe'"
                 ]
             },
             "step9" : {
@@ -457,7 +459,14 @@
                     "EXCLUDE_FROM_WORLD:layer-gnome-layer = '1'",
                     "EXCLUDE_FROM_WORLD:layer-multimedia-layer = '1'",
                     "EXCLUDE_FROM_WORLD:layer-meta-python = '1'",
-                    "EXCLUDE_FROM_WORLD:layer-networking-layer = '1'"
+                    "EXCLUDE_FROM_WORLD:layer-networking-layer = '1'",
+                    "USERADD_GID_TABLES:append = ' files/static-group-meta-oe'",
+                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-oe'",
+                    "USERADD_GID_TABLES:append = ' files/static-group-meta-networking'",
+                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-networking'",
+                    "USERADD_GID_TABLES:append = ' files/static-group-meta-multimedia'",
+                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-multimedia'",
+                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-gnome'"
                 ]
             }
         },
-- 
2.30.2


