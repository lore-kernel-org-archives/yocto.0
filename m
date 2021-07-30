Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
 by mx.groups.io with SMTP id smtpd.web08.22038.1627637124843402190
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Jul 2021 02:25:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BsADHj/Z;
 spf=pass (domain: gmail.com, ip: 209.85.208.49, mailfrom: martin.jansa@gmail.com)
Received: by mail-ed1-f49.google.com with SMTP id y12so12236975edo.6
        for <yocto@lists.yoctoproject.org>; Fri, 30 Jul 2021 02:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=sB71yAvoxtXlsYgNCSUNILOoKcXTuMzqiwC3hlc1M8A=;
        b=BsADHj/Z+Z0+NrppJV8g/D15kcI1xtKB6d7iYY655B3WgUCP3ozMW7nsFhlTZlLrSZ
         yhCxbj6Om2hTavg+Bjrq+qhY6ZxDny9rBShlY/mOcDyOCQSCHOrnTciqaJh065sbSaie
         +KsadfTG5/IkmajxuMdUMLfStnAXlhSdEYo9MOBDDwLEIYpA7z6ow52mb2sCqikWXcW0
         /PX/SsxoGoaTqHjjEeyDRKP1tI8USw/cUybcbska3yeBFC9f53pZiourOmjFf+hT6jrU
         yNee9JTAnXOBCu/tmuP1IZ4AYEQgZA3pnLi3UJSsD8U0VE1L7sp3G5UzubQTipKBSWkr
         VcGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sB71yAvoxtXlsYgNCSUNILOoKcXTuMzqiwC3hlc1M8A=;
        b=UxMnvN38nlyO1CLJK2kLdlF5G9Bt/o3laEE1dYfOQQ8/wvmCn2CiwPmbkH6Hdce0rH
         c2aw2M635qJTk+kdcLfZwOVyDbRCOKxtLDeoSIvbP7+op602EhLHUo9fmz5VnjbKA9n+
         EkCHvt8l6bd7kFO85sdwwMYZbt0PdgS1t6bahjZeHTfmLQd+WpoYY+JsmYfST6TV7aJi
         Bx7nqJheld896gwE9wQrG8xd12ch39fZhfGLs8mmj/ZS1Xz2WOTuEWMSgFqHcJgdNnh4
         evyySETsOgBYivwIZvaCyMiRRKa9fBNvXB+PK1ROiCesXXfdmm+hK6D2W+hcdBqjs+UN
         G4FA==
X-Gm-Message-State: AOAM532F2ltlUOfVBnXwlmU6Pd+zHLRg2VToRvbN9KIRWEQm8bv+kNlH
	5eCaMUXNnf1jGrCrWYEGOWjIN9y/rzNF8w==
X-Google-Smtp-Source: ABdhPJyoU87Z2+GcQQymldF8F+xiH66IE141qexPQPKa5AxtUv4tcxwwQGhthierJpOYWK93D3v+0g==
X-Received: by 2002:aa7:d4da:: with SMTP id t26mr1867010edr.42.1627637123484;
        Fri, 30 Jul 2021 02:25:23 -0700 (PDT)
Return-Path: <martin.jansa@gmail.com>
Received: from localhost (ip-109-238-218-228.aim-net.cz. [109.238.218.228])
        by smtp.gmail.com with ESMTPSA id u2sm425290edd.82.2021.07.30.02.25.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jul 2021 02:25:23 -0700 (PDT)
From: "Martin Jansa" <Martin.Jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Martin Jansa <Martin.Jansa@gmail.com>
Subject: [meta-security][WIP][PATCH 2/2] layer.conf: Update to honister
Date: Fri, 30 Jul 2021 11:25:18 +0200
Message-Id: <20210730092518.14608-2-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210730092518.14608-1-Martin.Jansa@gmail.com>
References: <20210730092518.14608-1-Martin.Jansa@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This marks the layers as compatible with honister now they use the new override
syntax.

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 conf/layer.conf                          | 2 +-
 meta-hardening/conf/layer.conf           | 2 +-
 meta-integrity/conf/layer.conf           | 2 +-
 meta-parsec/conf/layer.conf              | 2 +-
 meta-security-compliance/conf/layer.conf | 2 +-
 meta-security-isafw/conf/layer.conf      | 2 +-
 meta-tpm/conf/layer.conf                 | 2 +-
 7 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 7853d6e..cdcfaee 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -9,7 +9,7 @@ BBFILE_COLLECTIONS += "security"
 BBFILE_PATTERN_security = "^${LAYERDIR}/"
 BBFILE_PRIORITY_security = "8"
 
-LAYERSERIES_COMPAT_security = "hardknott"
+LAYERSERIES_COMPAT_security = "honister"
 
 LAYERDEPENDS_security = "core openembedded-layer perl-layer networking-layer meta-python"
 
diff --git a/meta-hardening/conf/layer.conf b/meta-hardening/conf/layer.conf
index 085ea45..1cd6f4f 100644
--- a/meta-hardening/conf/layer.conf
+++ b/meta-hardening/conf/layer.conf
@@ -8,6 +8,6 @@ BBFILE_COLLECTIONS += "harden-layer"
 BBFILE_PATTERN_harden-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_harden-layer = "10"
 
-LAYERSERIES_COMPAT_harden-layer = "hardknott"
+LAYERSERIES_COMPAT_harden-layer = "honister"
 
 LAYERDEPENDS_harden-layer = "core openembedded-layer"
diff --git a/meta-integrity/conf/layer.conf b/meta-integrity/conf/layer.conf
index 37776f8..e9446e6 100644
--- a/meta-integrity/conf/layer.conf
+++ b/meta-integrity/conf/layer.conf
@@ -20,7 +20,7 @@ INTEGRITY_BASE := '${LAYERDIR}'
 # interactive shell is enough.
 OE_TERMINAL_EXPORTS += "INTEGRITY_BASE"
 
-LAYERSERIES_COMPAT_integrity = "hardknott"
+LAYERSERIES_COMPAT_integrity = "honister"
 # ima-evm-utils depends on keyutils from meta-oe
 LAYERDEPENDS_integrity = "core openembedded-layer"
 
diff --git a/meta-parsec/conf/layer.conf b/meta-parsec/conf/layer.conf
index 2d4aa12..86d41b2 100644
--- a/meta-parsec/conf/layer.conf
+++ b/meta-parsec/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "parsec-layer"
 BBFILE_PATTERN_parsec-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_parsec-layer = "5"
 
-LAYERSERIES_COMPAT_parsec-layer = "hardknott gatesgarth"
+LAYERSERIES_COMPAT_parsec-layer = "honister"
 
 LAYERDEPENDS_parsec-layer = "core rust-layer clang-layer tpm-layer"
 BBLAYERS_LAYERINDEX_NAME_parsec-layer = "meta-parsec"
diff --git a/meta-security-compliance/conf/layer.conf b/meta-security-compliance/conf/layer.conf
index 2024d4a..ec4fd47 100644
--- a/meta-security-compliance/conf/layer.conf
+++ b/meta-security-compliance/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "scanners-layer"
 BBFILE_PATTERN_scanners-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_scanners-layer = "10"
 
-LAYERSERIES_COMPAT_scanners-layer = "hardknott"
+LAYERSERIES_COMPAT_scanners-layer = "honister"
 
 LAYERDEPENDS_scanners-layer = "core openembedded-layer meta-python"
 
diff --git a/meta-security-isafw/conf/layer.conf b/meta-security-isafw/conf/layer.conf
index 1f1095f..86b0d4b 100644
--- a/meta-security-isafw/conf/layer.conf
+++ b/meta-security-isafw/conf/layer.conf
@@ -14,4 +14,4 @@ LAYERVERSION_security-isafw = "1"
 
 LAYERDEPENDS_security-isafw = "core"
 
-LAYERSERIES_COMPAT_security-isafw = "hardknott"
+LAYERSERIES_COMPAT_security-isafw = "honister"
diff --git a/meta-tpm/conf/layer.conf b/meta-tpm/conf/layer.conf
index 0b102c5..b00dd3c 100644
--- a/meta-tpm/conf/layer.conf
+++ b/meta-tpm/conf/layer.conf
@@ -8,7 +8,7 @@ BBFILE_COLLECTIONS += "tpm-layer"
 BBFILE_PATTERN_tpm-layer = "^${LAYERDIR}/"
 BBFILE_PRIORITY_tpm-layer = "10"
 
-LAYERSERIES_COMPAT_tpm-layer = "hardknott"
+LAYERSERIES_COMPAT_tpm-layer = "honister"
 
 LAYERDEPENDS_tpm-layer = " \
     core \
-- 
2.30.2

