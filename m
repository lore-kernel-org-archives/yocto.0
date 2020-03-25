Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
 by mx.groups.io with SMTP id smtpd.web10.10609.1585141323511962605
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Mar 2020 06:02:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=rSrau6DE;
 spf=pass (domain: gmail.com, ip: 209.85.128.47, mailfrom: martin.jansa@gmail.com)
Received: by mail-wm1-f47.google.com with SMTP id z5so2353377wml.5
        for <yocto@lists.yoctoproject.org>; Wed, 25 Mar 2020 06:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OTnEIS3DIVkOUtypgP7iUwEjlBY0VBQ12sdkkoKhnAk=;
        b=rSrau6DEszg1POpEyJz3VK0tJehuUIv/CCd6xpCMMmoi57EPSC7ES7565G9UGVu2Pl
         LetiT/PTlyqatNqzDofyED+hg29rTS5Y8Z+kHOooOCxg5Z/BFI2sVISrkCtXk/xQdBI6
         SLbqVVnxM3MOj8uP6M7N8hbqFIPDiq1rY6Q4SuilEFUkGBmyCAJPUZQrlXx2jzg2RcMY
         sO1FfuFriXJCqz8rodxi+kF9EdnC5vVjc4iSfQzvUxIiCFXOZ1ciDOnYp7JBVXNaMbz9
         mkJs3hmlzfMIb9CTHxkOveHiLrobbgrC+cmvCwweabZGunI67ZO0zQvj/qyTWveuMKhL
         N42Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=OTnEIS3DIVkOUtypgP7iUwEjlBY0VBQ12sdkkoKhnAk=;
        b=RjG6ZPxhF2dkkc6x+k7YnHiRP9Ux6mGQsXEtonuj/68tt3hRzozfWABknO6OYLtYbk
         9voImYrXaE7ZIrg4r3H5NJ0byqRNJBt0qtR7oTFaewxpNS1LEXhA+kCBJWwIe4lfJJb8
         UCwccU+nDhUJ6MuFwShgfF7kkDONAcupksL2D7yu3pr4X3AyRvPkDjqdra2jBsIem2sq
         9FG9lE8uSxFAjT/E/Z50dVhOCmI95dHy2+nUQT+bM5kN0EVIZpDoeYhIheYC/oKpxGQc
         mmjM1/Nw2K+XQegEiuX781OX+3NNIgMZ+hNGhpBqt0NrcM6GTyrA6pi7XuGEy4+8mYdH
         TRqQ==
X-Gm-Message-State: ANhLgQ3I++3oHeEkaXf9RnQK4RtumBDDx+co03JEGn6svuMW+vhAUumc
	ug+f2DNAG/sMFyAb2SXGav3jensO
X-Google-Smtp-Source: ADFU+vvBeyNjQsNYv7CO3ZLdo2uub76sPORAV8VYeowX2cb8TmaLWNMMkDjY70+O2UIl0yqGNviTuQ==
X-Received: by 2002:a1c:e442:: with SMTP id b63mr3499617wmh.174.1585141321288;
        Wed, 25 Mar 2020 06:02:01 -0700 (PDT)
Return-Path: <martin.jansa@gmail.com>
Received: from localhost ([109.238.218.228])
        by smtp.gmail.com with ESMTPSA id r9sm9449975wma.47.2020.03.25.06.01.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Mar 2020 06:02:00 -0700 (PDT)
From: "Martin Jansa" <Martin.Jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Martin Jansa <Martin.Jansa@gmail.com>
Subject: [meta-security][PATCH] layer.conf: update LAYERSERIES_COMPAT for dunfell
Date: Wed, 25 Mar 2020 14:01:58 +0100
Message-Id: <20200325130158.23467-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 conf/layer.conf                          | 2 +-
 meta-integrity/conf/layer.conf           | 2 +-
 meta-security-compliance/conf/layer.conf | 2 +-
 meta-security-isafw/conf/layer.conf      | 2 +-
 meta-tpm/conf/layer.conf                 | 2 +-
 5 files changed, 5 insertions(+), 5 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 3e890e1..2c3bd96 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -9,6 +9,6 @@ BBFILE_COLLECTIONS += "security"
 BBFILE_PATTERN_security = "^${LAYERDIR}/"
 BBFILE_PRIORITY_security = "8"
 
-LAYERSERIES_COMPAT_security = "zeus"
+LAYERSERIES_COMPAT_security = "dunfell"
 
 LAYERDEPENDS_security = "core openembedded-layer perl-layer networking-layer meta-python"
diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.conf
index bfc9c6f..b4edac3 100644
--- a/meta-integrity/conf/layer.conf
+++ b/meta-integrity/conf/layer.conf
@@ -21,7 +21,7 @@ INTEGRITY_BASE := '${LAYERDIR}'
 # interactive shell is enough.
 OE_TERMINAL_EXPORTS += "INTEGRITY_BASE"
 
-LAYERSERIES_COMPAT_integrity = "zeus"
+LAYERSERIES_COMPAT_integrity = "dunfell"
 # ima-evm-utils depends on keyutils from meta-oe
 LAYERDEPENDS_integrity = "core openembedded-layer"
 
diff --git a/meta-security-compliance/conf/layer.conf b/meta-security-compliance/conf/layer.conf
index 8572a1f..965c837 100644
--- a/meta-security-compliance/conf/layer.conf
+++ b/meta-security-compliance/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "scanners-layer"
 BBFILE_PATTERN_scanners-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_scanners-layer = "10"
 
-LAYERSERIES_COMPAT_scanners-layer = "zeus"
+LAYERSERIES_COMPAT_scanners-layer = "dunfell"
 
 LAYERDEPENDS_scanners-layer = "core openembedded-layer meta-python"
 
diff --git a/meta-security-isafw/conf/layer.conf b/meta-security-isafw/conf/layer.conf
index 241c461..63f990a 100644
--- a/meta-security-isafw/conf/layer.conf
+++ b/meta-security-isafw/conf/layer.conf
@@ -14,4 +14,4 @@ LAYERVERSION_security-isafw = "1"
 
 LAYERDEPENDS_security-isafw = "core"
 
-LAYERSERIES_COMPAT_security-isafw = "zeus"
+LAYERSERIES_COMPAT_security-isafw = "dunfell"
diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
index 175eba8..c3372c7 100644
--- a/meta-tpm/conf/layer.conf
+++ b/meta-tpm/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "tpm-layer"
 BBFILE_PATTERN_tpm-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_tpm-layer = "10"
 
-LAYERSERIES_COMPAT_tpm-layer = "zeus"
+LAYERSERIES_COMPAT_tpm-layer = "dunfell"
 
 LAYERDEPENDS_tpm-layer = " \
     core \
-- 
2.20.1

