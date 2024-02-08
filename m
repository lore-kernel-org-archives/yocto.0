Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C8C3C4828F
	for <webhook@archiver.kernel.org>; Thu,  8 Feb 2024 13:55:57 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web10.18084.1707400552151719728
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Feb 2024 05:55:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=G4PLYnCL;
 spf=pass (domain: smile.fr, ip: 209.85.128.48, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-40efcb37373so16695655e9.2
        for <yocto@lists.yoctoproject.org>; Thu, 08 Feb 2024 05:55:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1707400549; x=1708005349; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pQuncECxeJp9nHc4A47OylPcusnTanGjTttJUy+Wzn4=;
        b=G4PLYnCLfMo15TTwsQMvl+ThUhoIfanzi99SAdAn9N9R0v/zl7eCJtDV3fy5O/lAmZ
         Jre6Bihd+Hk42PLuFl/HfLZrWmrY1UG475Fnh9XKY5I9Esd218Yc9eM0QEzukrQzyNqV
         oiV3uW2lNjQ/xBC8L6lCyaOfJDuH0+C9wUkUnm73V40nIhLHcGzv2W2zF5JNGK25RP3O
         3Jri9HCEewFR3qQVZADQ36sZ+0JGfRUubEcFnRy3Qfhh4J/TpasE8rUBLTqq+dfFEyp5
         KWVIwV5v5FwlLPEsIWeXGQX8W37h12I1noBv2VfLeLRKJUPN/V9Bc4w5A0hOpftNpuGF
         bDdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707400549; x=1708005349;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pQuncECxeJp9nHc4A47OylPcusnTanGjTttJUy+Wzn4=;
        b=a7btM0HVI8pbnop63jucNMBkwPyWkGCCOeIw5Xq4cYfUNRIKf66aUCV6oAOpOBqPaJ
         HWTXim9u35ogGN25k9P2FKpchwMl8iA7qFU7PnwpzPgixcFLB94/+fbbtWi/NXwRlNAS
         A7GSiFC4FpOu1PekAE1TZBNqMoOpsRdknoGEDkzDqbGg1sJhY/LqveZb06rjMW+LGdVF
         iaIjac2a0EBlyJgbMftwJSUhM9EtB8kv1Ot/ZzdN3ClvMGLa9Mxr6u52xl4MQMeJLW4M
         ioiEGm4SZonQgT76SV0swQWj1WlMA0HAAv3SSPyo8hzhteVdjFZYpya4g3PLDe3x5w80
         xdzQ==
X-Gm-Message-State: AOJu0Ywml569v9BOOkqHsdZs7kPZua291389Foxj8wBNcmeEn3szVkus
	YXeQmShoDdeh76L/+esbTrU4licATv4ekPQtUgqNYvKPcKSJz3qEp6JA8p4v2JK+Au5wHnCnmWK
	Y40o=
X-Google-Smtp-Source: AGHT+IF1x6rcKiL+NsefPpJezbpRi/3NvRNDJLJDUdtpJ/PI5prCDVUogggKxmTULxuquNED9LaQxw==
X-Received: by 2002:a05:600c:3541:b0:40f:e284:d785 with SMTP id i1-20020a05600c354100b0040fe284d785mr6481574wmq.23.1707400549353;
        Thu, 08 Feb 2024 05:55:49 -0800 (PST)
Received: from P-ASN-ECS-830T8C3.idf.intranet (static-css-ccs-204145.business.bouyguestelecom.com. [176.157.204.145])
        by smtp.gmail.com with ESMTPSA id n8-20020a05600c4f8800b0040fe308ff25sm1683560wmq.24.2024.02.08.05.55.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Feb 2024 05:55:48 -0800 (PST)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Subject: [yocto-autobuilder-helper][PATCH] config.json: meta-oe-repro: exclude packages that failed previously
Date: Thu,  8 Feb 2024 14:55:26 +0100
Message-Id: <20240208135526.651401-1-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 08 Feb 2024 13:55:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62429

Those are the non-reproducible packages from:
https://autobuilder.yoctoproject.org/typhoon/#/builders/155/builds/10

NB: I've not looked too much at the list.
At least an element is weird: samba-dbg being non-reproducible in
meta-xfce but reproducible in meta-networking?

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
 config.json | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/config.json b/config.json
index 50a07f7..c708342 100644
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
@@ -467,7 +470,8 @@
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


