Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3F88C2BB3F
	for <webhook@archiver.kernel.org>; Wed, 15 Nov 2023 17:09:07 +0000 (UTC)
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
 by mx.groups.io with SMTP id smtpd.web11.18829.1700068145025772355
 for <yocto@lists.yoctoproject.org>;
 Wed, 15 Nov 2023 09:09:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=mIr53yd3;
 spf=pass (domain: smile.fr, ip: 209.85.128.48, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-4084de32db5so60498265e9.0
        for <yocto@lists.yoctoproject.org>; Wed, 15 Nov 2023 09:09:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1700068143; x=1700672943; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Lrf2QnXj2U11LR6xkSVaUVjciVpgbUyEyA6NaEfueo8=;
        b=mIr53yd3iN+XXn8ZSwUWK0GmpnVkoxJ/zUu81eMLVTwYf/D00QbhPAeZjDi4NAGLnk
         SYY6ZqIOaZ389ZezKs+PuGCIy9907MHS2h/tXyPZL7jSyZ+vCWUf1mrbjiZFTAwyray5
         AwklQewXsoJ7erR27xa2Ciges1T86SbewiAd5h70lUvwDG2TgECAeduz/4rpjJWZfaNP
         9s7WK2Mhk0UEhvt2U/sdqJbEBbKPkzKDh+qElDkQ+1UiZXzNn8sWzt+Tb0lMSUbBK8kk
         q2NYMZdcGjtcqrtfq2X01KOyy2euvCjQnvvQRLCzMCVc3U013dUTMR3Uiwm0LcyZRN8H
         6fnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700068143; x=1700672943;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Lrf2QnXj2U11LR6xkSVaUVjciVpgbUyEyA6NaEfueo8=;
        b=nppKw9p67Mih9BG0En5dNCWKiLEUvjqpXUxpGdgf3y7Wh42Zvxr2+hw8Kv4ym7rOpP
         U+2SD3n+iuABYbAPbeFnNnXNs4iuWTBo8hsBwpqDZy0DzPNHAHGJoO+6gnoeGVUWYqOS
         FbSRu0mbJhKhb7iNKadxqb8S0AUnSPJtgHuJl9ybBLP9fqEpQuVkPy5PIDB4ik/lefg2
         gaPf8uoB/V1DP2Bev6rh4bvS6G2ZrVTIqAz/qjeEuIkqJ6jARYN4/vdKynV40Vq1bKDv
         qsZyDkDYmE3mZO6UTILiyqGK74ac/HNca4/vF+6ggux+Af2sIDdItWykPHtBQtByzt2X
         A6Uw==
X-Gm-Message-State: AOJu0YwJ0hNlzRUnvVqgc4dE2SM+sbv6y1hgkSBMJ+wd8TE6YdYRLEyW
	fEtND/eVwicwqCtMxkDHH+WRdepw5C6H6mPRRkc=
X-Google-Smtp-Source: AGHT+IGN7+Dnmh8NyhDATWLSk8Xl5q1SwkQoFF2LhvhKgvg4u9NuqYW1FNe6cbzaZFmMvXOGB13odQ==
X-Received: by 2002:a05:600c:1c25:b0:408:543d:5536 with SMTP id j37-20020a05600c1c2500b00408543d5536mr10901889wms.4.1700068142848;
        Wed, 15 Nov 2023 09:09:02 -0800 (PST)
Received: from P-ASN-ECS-830T8C3.idf.intranet (static-css-ccs-204145.business.bouyguestelecom.com. [176.157.204.145])
        by smtp.gmail.com with ESMTPSA id c20-20020a7bc854000000b0040a43d458c9sm285237wml.25.2023.11.15.09.09.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Nov 2023 09:09:02 -0800 (PST)
From: Yoann Congal <yoann.congal@smile.fr>
To: yocto@lists.yoctoproject.org
Cc: Yoann Congal <yoann.congal@smile.fr>
Subject: [yocto-autobuilder-helper][PATCH] config.json: reproducible-meta-oe: add meta-webserver static GIDs
Date: Wed, 15 Nov 2023 18:08:54 +0100
Message-Id: <20231115170854.2226917-1-yoann.congal@smile.fr>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Nov 2023 17:09:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61704

This is needed to fix a reproducibility error in netdata.

Signed-off-by: Yoann Congal <yoann.congal@smile.fr>
---
This depends on a patch in meta-oe/meta-webserver:
[meta-webserver][PATCH] static-id: add missing netdata group
https://lists.openembedded.org/g/openembedded-devel/message/106765
---
 config.json | 1 +
 1 file changed, 1 insertion(+)

diff --git a/config.json b/config.json
index 819fc7c..b8d1f31 100644
--- a/config.json
+++ b/config.json
@@ -435,6 +435,7 @@
                 ],
                 "extravars" : [
                     "EXCLUDE_FROM_WORLD:layer-openembedded-layer = '1'",
+                    "USERADD_GID_TABLES:append = ' files/static-group-meta-webserver'",
                     "USERADD_UID_TABLES:append = ' files/static-passwd-meta-webserver'",
                     "USERADD_GID_TABLES:append = ' files/static-group-meta-oe'",
                     "USERADD_UID_TABLES:append = ' files/static-passwd-meta-oe'"
-- 
2.30.2


