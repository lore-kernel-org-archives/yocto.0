Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
 by mx.groups.io with SMTP id smtpd.web10.2404.1615955000483784872
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Mar 2021 21:23:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Llfn4ssV;
 spf=pass (domain: gmail.com, ip: 209.85.210.170, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f170.google.com with SMTP id y200so231139pfb.5
        for <yocto@lists.yoctoproject.org>; Tue, 16 Mar 2021 21:23:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=S8sJHuPDVyw6qZOQkRCYsjW200hVQGcPh+qNnuEnlMw=;
        b=Llfn4ssVWwKkFNQJgOAQdI+dXqvVEwRIVYMXogoXlnE6sOajDcYMWKUcv+m6mqogIE
         Tx8kgZ0syGzjmpPl69Cz/qmtlBWdzE++52u61O5MZ2J++7ysO3zifzPY9G4NAxzcvlVr
         LtFM1WsUej8HJmoFXQFei1ngFLdCycHnE+gCAYVID6Z6iOIomeYdCxllki06wLs1xRDO
         bh1+JmHvh/+6u373gPMzYwTfwU/M84ylbVaqxGrlC/0d7Sx4EENAsE9ziwEGkYCrm81O
         9hLzxdSzvbEDdhI/5YK0w9iKIoDkOpEGTca4LzlgCNh+ETuAExaUQ8UMdxYIIQNPhGh/
         yfIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=S8sJHuPDVyw6qZOQkRCYsjW200hVQGcPh+qNnuEnlMw=;
        b=OAlFe8kewC5v79MS+2An/lo8nvPCCtJ5yDEWTgeWJTPll5hRJJeLx1slQs9t6m9tbH
         glNnp8ilLKEGYln9/GmkRqrzvXksLZ0WJi4OH52eytHZGvk9Mw+OMrjU1btLR6EDDXeb
         6xeqg9PBDcCvKEEBaszkJaaJCJ8m2UjWLdnwhRLkNhRl2qlZqouZllQY9Etxqu7DAVll
         Ku2gG9n09aK7iUdOJBPk3Ih6AM4XivbIyX+dQgpwoeTyzYrzxJakEUgztXkegIKsOv/f
         8u3wBipG0BK69lEFUZW7YRKzlMpuCYbEF4mZVmlMk2ZL0gLLoam7x9rCpD/a5dvx9IFr
         lueQ==
X-Gm-Message-State: AOAM531VaxflH9OxdNJXdgiJETWGZ56FrhT1+DV0YQewzcDe0uJbSpul
	2JNwu7lutyIu2j4u9u6VSKqs84I5mmM=
X-Google-Smtp-Source: ABdhPJymuVwQcKRYbyvv2ZPTbvUzp4OgJWtyotiR3K03IbpJuX/g+3ueff0EdkEyUuWJV5RUDHiEMQ==
X-Received: by 2002:a63:6dca:: with SMTP id i193mr970945pgc.81.1615954999434;
        Tue, 16 Mar 2021 21:23:19 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:25c8:44cd:2453:cf2a])
        by smtp.gmail.com with ESMTPSA id o13sm18216855pfp.26.2021.03.16.21.23.18
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Mar 2021 21:23:19 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] layer.conf: Add hardknott to LAYERSERIES_COMPAT
Date: Tue, 16 Mar 2021 21:23:17 -0700
Message-Id: <20210317042317.23425-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Thats codename for 3.3

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 conf/layer.conf                          | 2 +-
 meta-hardening/conf/layer.conf           | 2 +-
 meta-integrity/conf/layer.conf           | 2 +-
 meta-security-compliance/conf/layer.conf | 2 +-
 meta-security-isafw/conf/layer.conf      | 2 +-
 meta-tpm/conf/layer.conf                 | 2 +-
 6 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 8c0254b..fd21da1 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -9,6 +9,6 @@ BBFILE_COLLECTIONS += "security"
 BBFILE_PATTERN_security = "^${LAYERDIR}/"
 BBFILE_PRIORITY_security = "8"
 
-LAYERSERIES_COMPAT_security = "gatesgarth"
+LAYERSERIES_COMPAT_security = "hardknott"
 
 LAYERDEPENDS_security = "core openembedded-layer perl-layer networking-layer meta-python"
diff --git a/meta-hardening/conf/layer.conf b/meta-hardening/conf/layer.conf
index 22d8874..085ea45 100644
--- a/meta-hardening/conf/layer.conf
+++ b/meta-hardening/conf/layer.conf
@@ -8,6 +8,6 @@ BBFILE_COLLECTIONS += "harden-layer"
 BBFILE_PATTERN_harden-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_harden-layer = "10"
 
-LAYERSERIES_COMPAT_harden-layer = "gatesgarth"
+LAYERSERIES_COMPAT_harden-layer = "hardknott"
 
 LAYERDEPENDS_harden-layer = "core openembedded-layer"
diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.conf
index 76374eb..ba028da 100644
--- a/meta-integrity/conf/layer.conf
+++ b/meta-integrity/conf/layer.conf
@@ -20,7 +20,7 @@ INTEGRITY_BASE := '${LAYERDIR}'
 # interactive shell is enough.
 OE_TERMINAL_EXPORTS += "INTEGRITY_BASE"
 
-LAYERSERIES_COMPAT_integrity = "gatesgarth"
+LAYERSERIES_COMPAT_integrity = "hardknott"
 # ima-evm-utils depends on keyutils from meta-oe
 LAYERDEPENDS_integrity = "core openembedded-layer"
 
diff --git a/meta-security-compliance/conf/layer.conf b/meta-security-compliance/conf/layer.conf
index db243f7..2024d4a 100644
--- a/meta-security-compliance/conf/layer.conf
+++ b/meta-security-compliance/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "scanners-layer"
 BBFILE_PATTERN_scanners-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_scanners-layer = "10"
 
-LAYERSERIES_COMPAT_scanners-layer = "gatesgarth"
+LAYERSERIES_COMPAT_scanners-layer = "hardknott"
 
 LAYERDEPENDS_scanners-layer = "core openembedded-layer meta-python"
 
diff --git a/meta-security-isafw/conf/layer.conf b/meta-security-isafw/conf/layer.conf
index b8ee1c0..1f1095f 100644
--- a/meta-security-isafw/conf/layer.conf
+++ b/meta-security-isafw/conf/layer.conf
@@ -14,4 +14,4 @@ LAYERVERSION_security-isafw = "1"
 
 LAYERDEPENDS_security-isafw = "core"
 
-LAYERSERIES_COMPAT_security-isafw = "gatesgarth"
+LAYERSERIES_COMPAT_security-isafw = "hardknott"
diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
index cd62fba..65788eb 100644
--- a/meta-tpm/conf/layer.conf
+++ b/meta-tpm/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "tpm-layer"
 BBFILE_PATTERN_tpm-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_tpm-layer = "10"
 
-LAYERSERIES_COMPAT_tpm-layer = "gatesgarth"
+LAYERSERIES_COMPAT_tpm-layer = "hardknott"
 
 LAYERDEPENDS_tpm-layer = " \
     core \
-- 
2.17.1

