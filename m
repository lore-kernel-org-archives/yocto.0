Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B508AC4829D
	for <webhook@archiver.kernel.org>; Mon, 12 Feb 2024 23:32:16 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web10.1994.1707780727785915907
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 Feb 2024 15:32:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=HAIACoqg;
 spf=pass (domain: smile.fr, ip: 209.85.221.48, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-33b401fd72bso2499759f8f.3
        for <yocto@lists.yoctoproject.org>; Mon, 12 Feb 2024 15:32:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1707780725; x=1708385525; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=o7sF5/zRKb4z7KUijPTyr4rHAKM/8afVjRDLCRWo5Ps=;
        b=HAIACoqg92s1uqaIWyK9HSNcvUGWscmw2G4//OqPJbnS1jTJzI3nKcqM+i0etaNpBY
         jVTpwZArHDt5ZYmICt5yLtueJ+C4E8XmuMTqcY4IsSAJ/9nqjIyZjqX04lEMkrEoCRmg
         whIOEo6698IaS8GDIP14XYYFFuEAqLpMiYxYNmas3SEGtO/6XQDyvKJcKLFv7hLvnkQO
         HArN2DLaJTO2EingwfAojo0uIXMja0Slz7O+ty5aNafjoAEsgBwjqlRbVwNtPzkUnVAm
         vksRjlccPJ6QJ67tfKKhqM3keN1hQyYwbNkLsQcGbIWfvTgNwGt7d3RvGXSDOsA8NqvQ
         gM+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707780725; x=1708385525;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o7sF5/zRKb4z7KUijPTyr4rHAKM/8afVjRDLCRWo5Ps=;
        b=OoWVPnwUQW22Le7jgJvq8F8GIlIWN2MUkyqtJbLQi7L8YuDZeSjkXeEhvhe/zdwpbI
         70EQdyo6BabKuSesUaEWzVzw+fiEQTBy09ibknBaMujulmKVzTkJHr5iibVbBSx8s+0b
         xJtk8z6KdMAzLVqcA0FQmWns7++pJkD0rAK0wJjuTiFphSGYU/QCBlYwc+d6vexnUcIG
         eNybY8FLNeSavFSq403/XLOOY7vyAxuk57QlKtzhsMn2wnLV6R09DrjaCAgu5qTpbdZ/
         G8YTVrMPVD+YegVtDvMXSF126+gOwPQBhKTIz3adjLY92GG3gwho++atXiNkgRnlTlgl
         BtyQ==
X-Gm-Message-State: AOJu0YyLk1NAgiQSVsFdsw5G6/0mv2YByobEE7CaKiD/Ysx2Bk6gMTLX
	ZIicZyhxTbpx3hxoJG6HMsX/29HnHRht/AwDk9xeyilK2LFIK0iDcKcirsDJQ+HOYNb7wozfHsR
	1jCR0kg==
X-Google-Smtp-Source: AGHT+IGOjWQW/KViQZHP0HVXoH3mz+tOz/y7TqS3GJGAAQYXVfItpFKlE6TWAIbRYRedBiF4RUqh8A==
X-Received: by 2002:adf:a29b:0:b0:33c:d4d6:659b with SMTP id s27-20020adfa29b000000b0033cd4d6659bmr223228wra.7.1707780725240;
        Mon, 12 Feb 2024 15:32:05 -0800 (PST)
Received: from P-ASN-ECS-830T8C3.local ([89.159.1.53])
        by smtp.gmail.com with ESMTPSA id bw28-20020a0560001f9c00b0033b66ce7ae9sm8039771wrb.84.2024.02.12.15.32.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Feb 2024 15:32:05 -0800 (PST)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Subject: [yocto-autobuilder-helper][PATCH v2] config.json: meta-oe-repro: exclude packages that failed previously
Date: Tue, 13 Feb 2024 00:31:07 +0100
Message-Id: <20240212233107.3716212-1-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 12 Feb 2024 23:32:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62469

Those are the non-reproducible packages from:
https://autobuilder.yoctoproject.org/typhoon/#/builders/155/builds/11

NB: I've not looked too much at the list.
At least an element is weird: samba-dbg being non-reproducible in
meta-xfce but reproducible in meta-networking?

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>

---
v1->v2: Added previously missing meta-webserver packages
---
 config.json | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/config.json b/config.json
index 48d43db..e2e2b0c 100644
--- a/config.json
+++ b/config.json
@@ -371,7 +371,8 @@
                     "USERADD_UID_TABLES:append = ' files/static-passwd-meta-multimedia'",
                     "USERADD_GID_TABLES:append = ' files/static-group-meta-oe'",
                     "USERADD_UID_TABLES:append = ' files/static-passwd-meta-oe'",
-                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES = 'crossguid'"
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES = 'crossguid libcamera libcamera-dbg libcamera-src libgssdp-1.6-src libgupnp-1.6-src libsquish-staticdev'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES += 'oscam oscam-dbg oscam-src rtmpdump-staticdev'"
                 ]
             },
             "step5" : {
@@ -426,7 +427,9 @@
                 "extravars" : [
                     "EXCLUDE_FROM_WORLD:layer-openembedded-layer = '1'",
                     "USERADD_GID_TABLES:append = ' files/static-group-meta-oe'",
-                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-oe'"
+                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-oe'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES = 'python3-frozenlist python3-frozenlist-dbg python3-kivy-src python3-pycocotools-src python3-pydantic-core'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES += 'python3-pyproj python3-pyproj-dbg python3-pyproj-src python3-pyzmq python3-yarl python3-yarl-dbg'"
                 ]
             },
             "step9" : {
@@ -441,7 +444,8 @@
                     "USERADD_GID_TABLES:append = ' files/static-group-meta-webserver'",
                     "USERADD_UID_TABLES:append = ' files/static-passwd-meta-webserver'",
                     "USERADD_GID_TABLES:append = ' files/static-group-meta-oe'",
-                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-oe'"
+                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-oe'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES = 'netdata-dbg netdata php-phar'"
                 ]
             },
             "step10" : {
@@ -467,7 +471,8 @@
                     "USERADD_UID_TABLES:append = ' files/static-passwd-meta-networking'",
                     "USERADD_GID_TABLES:append = ' files/static-group-meta-multimedia'",
                     "USERADD_UID_TABLES:append = ' files/static-passwd-meta-multimedia'",
-                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-gnome'"
+                    "USERADD_UID_TABLES:append = ' files/static-passwd-meta-gnome'",
+                    "OEQA_REPRODUCIBLE_EXCLUDED_PACKAGES = 'catfish libsamba-util0 samba-dbg'"
                 ]
             }
         },
-- 
2.39.2


