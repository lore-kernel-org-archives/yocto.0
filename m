Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web09.47890.1622485977285781620
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 May 2021 11:32:57 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Np9En0y0;
 spf=pass (domain: gmail.com, ip: 209.85.216.44, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id h16so3208862pjv.2
        for <yocto@lists.yoctoproject.org>; Mon, 31 May 2021 11:32:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=zwB06cTKblNSyNXWXoX9NR0YIt87Y553sPXXcz8X0P0=;
        b=Np9En0y0WBI7By7lnoWgfD5BpViXuhuF70kmkGHUj1UBaCZ3YMlwkEf2KhNNmns2d0
         TPawn9sUSBuXjrL+eH6GJLORtDzZDSsRHAdvoBSglngRxhp7QXnLYfXxxHexYayJe6mO
         Z/9GY0yTDXLk7TE8kPd9c/vATj3nqdzdSO6QC0OzP5odC859ZTuqFXRYOdaKhUFlCg7Y
         ysh7vSD4ARN/qzGHFENCNP3tJwyya6PMBcRCJJNO/cNt3tDJadIwj0/sKUGSDEzNnA3+
         HDuuwL6wXMaEB+rw5vIgxqOKjDAeg46LThwgfncCFGn2+T6sJJCkmtXbQAUgt6D4dWN+
         sYaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zwB06cTKblNSyNXWXoX9NR0YIt87Y553sPXXcz8X0P0=;
        b=awuxZ4YBs9wnTgX2h8PXWxQarq1PYj0GwCzOcEuGaFEoKv5MuI5YXWDA5Zx9RuH42+
         KJcZItX3wXkvpFCbBFE6QiV9AvWyyom/pA3ViJhxahn722AvLgRbi+iSBQV7X7Db8fdC
         OWSu4TyVc8vZrY4Cm05fRZONZnLw3Nu+pNAJYlnfkY9Qb7gbgIHOc34a8LG0tz/HYbqB
         pYsbY0GMijg6ZuFKVSQfKf+owrX9AOnhyR5TTfDJxg8bU9aj2QyE/IiXdXy8Ep5zeMoo
         ZA4OWk6CHI2qVHgSucdMXBwUHiBalKGPIYck76OLObbleuW2zrfztDjRJUn+XenIbbW/
         L81A==
X-Gm-Message-State: AOAM533q82TXs2vhPau+uQNrO1pS0SIs98t1T3ladyuZcYG7ur4Mty0n
	CBvR7VfdRSApJEUehdc4pRnp0Xv6uF9Qqw==
X-Google-Smtp-Source: ABdhPJzrDegqilz9BNzbAZeAhOhUzNX66vYm+J5Aw4/vb4nWBVDw+32zEBPf4f9h15iIkh7GnNG/Nw==
X-Received: by 2002:a17:90a:80c5:: with SMTP id k5mr412949pjw.129.1622485976241;
        Mon, 31 May 2021 11:32:56 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from kona.dnls.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id x19sm11803957pgj.66.2021.05.31.11.32.55
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 May 2021 11:32:55 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/4] meta-tpm: remove linux-yocto
Date: Mon, 31 May 2021 18:32:51 +0000
Message-Id: <20210531183253.963737-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210531183253.963737-1-akuster808@gmail.com>
References: <20210531183253.963737-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-kernel/linux/linux-yocto/tpm.cfg    |  8 --------
 .../recipes-kernel/linux/linux-yocto/tpm.scc    |  3 ---
 .../recipes-kernel/linux/linux-yocto/tpm2.cfg   |  6 ------
 .../recipes-kernel/linux/linux-yocto/tpm2.scc   |  3 ---
 .../linux/linux-yocto/tpm_i2c.cfg               | 15 ---------------
 .../linux/linux-yocto/tpm_i2c.scc               |  6 ------
 .../linux/linux-yocto/tpm_x86.cfg               |  4 ----
 .../recipes-kernel/linux/linux-yocto/vtpm.cfg   |  5 -----
 .../recipes-kernel/linux/linux-yocto/vtpm.scc   |  4 ----
 .../linux/linux-yocto_5.%.bbappend              | 17 -----------------
 10 files changed, 71 deletions(-)
 delete mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm.cfg
 delete mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm.scc
 delete mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.cfg
 delete mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.scc
 delete mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm_i2c.cfg
 delete mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm_i2c.scc
 delete mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/tpm_x86.cfg
 delete mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.cfg
 delete mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.scc
 delete mode 100644 meta-tpm/recipes-kernel/linux/linux-yocto_5.%.bbappend

diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto/tpm.cfg b/meta-tpm/recipes-kernel/linux/linux-yocto/tpm.cfg
deleted file mode 100644
index 8782823..0000000
--- a/meta-tpm/recipes-kernel/linux/linux-yocto/tpm.cfg
+++ /dev/null
@@ -1,8 +0,0 @@
-CONFIG_HW_RANDOM_TPM=y
-CONFIG_TCG_TPM=y
-CONFIG_TCG_TIS_CORE=y
-CONFIG_TCG_TIS=y
-CONFIG_SECURITYFS=y
-CONFIG_TCG_NSC=m
-CONFIG_TCG_ATMEL=m
-CONFIG_TCG_INFINEON=m
diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto/tpm.scc b/meta-tpm/recipes-kernel/linux/linux-yocto/tpm.scc
deleted file mode 100644
index 2949ed4..0000000
--- a/meta-tpm/recipes-kernel/linux/linux-yocto/tpm.scc
+++ /dev/null
@@ -1,3 +0,0 @@
-define KFEATURE_DESCRIPTION "Enable TPM"
-
-kconf hardware tpm.cfg
diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.cfg b/meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.cfg
deleted file mode 100644
index a81b54d..0000000
--- a/meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.cfg
+++ /dev/null
@@ -1,6 +0,0 @@
-CONFIG_HW_RANDOM_TPM=y
-CONFIG_TCG_TPM=y
-CONFIG_TCG_TIS_CORE=y
-CONFIG_TCG_TIS=y
-CONFIG_TCG_CRB=y
-CONFIG_SECURITYFS=y
diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.scc b/meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.scc
deleted file mode 100644
index 088148f..0000000
--- a/meta-tpm/recipes-kernel/linux/linux-yocto/tpm2.scc
+++ /dev/null
@@ -1,3 +0,0 @@
-define KFEATURE_DESCRIPTION "Enable TPM 2.0"
-
-kconf hardware tpm2.cfg
diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto/tpm_i2c.cfg b/meta-tpm/recipes-kernel/linux/linux-yocto/tpm_i2c.cfg
deleted file mode 100644
index 59993f9..0000000
--- a/meta-tpm/recipes-kernel/linux/linux-yocto/tpm_i2c.cfg
+++ /dev/null
@@ -1,15 +0,0 @@
-CONFIG_HW_RANDOM_TPM=y
-CONFIG_TCG_TPM=y
-CONFIG_TCG_TIS_CORE=y
-CONFIG_TCG_TIS=y
-CONFIG_SECURITYFS=y
-
-CONFIG_REGMAP_I2C=y
-CONFIG_I2C_BOARDINFO=y
-CONFIG_I2C_COMPAT=y
-CONFIG_RTC_I2C_AND_SPI=y
-
-CONFIG_TCG_TIS_I2C_ATMEL=m
-CONFIG_TCG_TIS_I2C_INFINEON=m
-CONFIG_TCG_TIS_I2C_NUVOTON=m
-CONFIG_TCG_TIS_ST33ZP24_I2C=m
diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto/tpm_i2c.scc b/meta-tpm/recipes-kernel/linux/linux-yocto/tpm_i2c.scc
deleted file mode 100644
index 0e4eedb..0000000
--- a/meta-tpm/recipes-kernel/linux/linux-yocto/tpm_i2c.scc
+++ /dev/null
@@ -1,6 +0,0 @@
-define KFEATURE_DESCRIPTION "Enable TPM i2c"
-
-include features/i2c/i2c.scc
-
-kconf hardware tpm_i2c.cfg
-
diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto/tpm_x86.cfg b/meta-tpm/recipes-kernel/linux/linux-yocto/tpm_x86.cfg
deleted file mode 100644
index 8be331a..0000000
--- a/meta-tpm/recipes-kernel/linux/linux-yocto/tpm_x86.cfg
+++ /dev/null
@@ -1,4 +0,0 @@
-CONFIG_TCG_NSC=m
-CONFIG_TCG_ATMEL=m
-CONFIG_TCG_INFINEON=m
-CONFIG_TCG_TIS_ST33ZP24=m
diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.cfg b/meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.cfg
deleted file mode 100644
index a8b3758..0000000
--- a/meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.cfg
+++ /dev/null
@@ -1,5 +0,0 @@
-CONFIG_HW_RANDOM_TPM=y
-CONFIG_TCG_TPM=y
-CONFIG_TCG_VTPM_PROXY=y
-CONFIG_SECURITYFS=y
-~                    
diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.scc b/meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.scc
deleted file mode 100644
index e842da6..0000000
--- a/meta-tpm/recipes-kernel/linux/linux-yocto/vtpm.scc
+++ /dev/null
@@ -1,4 +0,0 @@
-define KFEATURE_DESCRIPTION "Enable vTPM"
-
-kconf hardware vtpm.cfg
-
diff --git a/meta-tpm/recipes-kernel/linux/linux-yocto_5.%.bbappend b/meta-tpm/recipes-kernel/linux/linux-yocto_5.%.bbappend
deleted file mode 100644
index cea8b1b..0000000
--- a/meta-tpm/recipes-kernel/linux/linux-yocto_5.%.bbappend
+++ /dev/null
@@ -1,17 +0,0 @@
-FILESEXTRAPATHS_prepend := "${THISDIR}/linux-yocto:"
-
-# Enable tpm in kernel 
-SRC_URI_append_x86 = " \
-    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm', 'file://tpm.scc', '', d)} \
-    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm2', 'file://tpm2.scc', '', d)} \
-    "
-
-SRC_URI_append_x86-64 = " \
-    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm', 'file://tpm.scc', '', d)} \
-    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm2', 'file://tpm2.scc', '', d)} \
-    "
-
-SRC_URI += " \
-    ${@bb.utils.contains('MACHINE_FEATURES', 'tpm_i2c', 'file://tpm_i2c.scc', '', d)} \
-    ${@bb.utils.contains('MACHINE_FEATURES', 'vtpm', 'file://vtpm.scc', '', d)} \
-    "
-- 
2.25.1

