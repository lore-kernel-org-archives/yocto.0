Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.web12.11215.1629872146581672824
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Aug 2021 23:15:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=fnvCUdao;
 spf=pass (domain: gmail.com, ip: 209.85.128.51, mailfrom: rybczynska@gmail.com)
Received: by mail-wm1-f51.google.com with SMTP id o39-20020a05600c512700b002e74638b567so3769060wms.2
        for <yocto@lists.yoctoproject.org>; Tue, 24 Aug 2021 23:15:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RYDhodyp8/eZ50GUyqfJr0p+1DFbUBLTpt5kDletIks=;
        b=fnvCUdaocw7G9eAN9TKgzu3DIAZvaIZ9Q9CqtIxSDhlpdenyvYTfmKnF5PROhiJAcJ
         7D7UBcm7rJ/prRdDlzH5YEALFdyUdohj8/kXMzpav+0QG2EnHVnAIaHM/QpnVGSc/+Ao
         qHycuvIT5yb65q0+eWnWYuo0BFVAMwBOB7eoz4Abf6bW9kKhXpvf80EGWptVl+ZfQQYk
         9hPiwZaeihxfPl3PKPYOSl+WgirUc1UsT4yY9swF4g38iUUaS9T+YGoMV3Jv/rVPYG+F
         c9seHWP8tFjeOqn3fwKH9vDW6YzgQap3i/YsKSGq4x4Z3sbvB7PF6xl/+5jGsM14Z+TK
         /Slg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=RYDhodyp8/eZ50GUyqfJr0p+1DFbUBLTpt5kDletIks=;
        b=Hn0a8KC3PZQztT88a/acFTrL/X+azNfCDFB8h6r5U4fIz8IZSd7rZvYCDytD0aQ6/j
         kks0FYq9UYd52WihuKmveXhlzM+PaNHwhdECSOqdGHDfsValo3XcLcau9usptfgrpgju
         +tOV9dyQRyh0MNwOWkTBa8/XEZ2NK0FQrdcLixugY8eNdxfuigbrya7YkE4mm7IJYhrf
         uRh2X+aXLdYPfIEWZOZHwQTzLAtA24hf52mz3bYtGY1dq3qj47w63BmC9gUjOrnm2ESq
         zbFNjaBQQeIi4v1sCxcslZVdAUXaAuWVh17AXqXKa4xC8tOIZ13k7AWBMJv+rDaN5NCI
         uNMw==
X-Gm-Message-State: AOAM5316IQklb3tuTyC+FyW0q5g9J0GL+ngW7zaKQT4KvoUNY9uZi8Qn
	jAs3w6KiDvnG+qqhJTxv40NtpGAyX2w=
X-Google-Smtp-Source: ABdhPJwXuzgvaCZvooPRRivD7gKIYwzjNZhugzn6CrLtR3cqoaIv4M6DpkeFutddhQS6nu8cWpZS9g==
X-Received: by 2002:a05:600c:198a:: with SMTP id t10mr7475157wmq.181.1629872144890;
        Tue, 24 Aug 2021 23:15:44 -0700 (PDT)
Return-Path: <rybczynska@gmail.com>
Received: from localhost.localdomain ([80.215.138.76])
        by smtp.gmail.com with ESMTPSA id m7sm4189335wmq.29.2021.08.24.23.15.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Aug 2021 23:15:44 -0700 (PDT)
From: "Marta Rybczynska" <rybczynska@gmail.com>
To: yocto@lists.yoctoproject.org,
	akuster808@gmail.com
Cc: Marta Rybczynska <rybczynska@gmail.com>,
	Marta Rybczynska <marta.rybczynska@huawei.com>
Subject: [meta-hardening][PATCH] meta-hardening/binutils: harden installation permissions
Date: Wed, 25 Aug 2021 08:15:34 +0200
Message-Id: <20210825061534.9658-1-rybczynska@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Compilers and related utils are better restricted on production platforms.
Change permissions of all installed binutils tools to remove access from
users outside of the root group.

This also demonstrates how to restrict file permissions in a hardened
distribution.

Signed-off-by: Marta Rybczynska <marta.rybczynska@huawei.com>
---
 meta-hardening/recipes-devtools/binutils/binutils_%.bbappend | 3 +++
 1 file changed, 3 insertions(+)
 create mode 100644 meta-hardening/recipes-devtools/binutils/binutils_%.bbappend

diff --git a/meta-hardening/recipes-devtools/binutils/binutils_%.bbappend b/meta-hardening/recipes-devtools/binutils/binutils_%.bbappend
new file mode 100644
index 0000000..3eb3ad0
--- /dev/null
+++ b/meta-hardening/recipes-devtools/binutils/binutils_%.bbappend
@@ -0,0 +1,3 @@
+do_install_append_class-target () {
+    chmod o-rx ${D}${prefix}/${TARGET_SYS}/bin/*
+}
-- 
2.30.2

