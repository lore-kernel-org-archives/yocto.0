Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com [209.85.216.42])
 by mx.groups.io with SMTP id smtpd.web10.24905.1591982064387249957
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Jun 2020 10:14:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mMjr6mU0;
 spf=pass (domain: gmail.com, ip: 209.85.216.42, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f42.google.com with SMTP id s88so4110449pjb.5
        for <yocto@lists.yoctoproject.org>; Fri, 12 Jun 2020 10:14:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=DpIgE+lwP9aIrG6ZIu2SFXKJFqz5Lwn5KbxtvKoQSS8=;
        b=mMjr6mU0txG6WgYS/Z66lNLx7Y/xPRE8Lzpe5i1cjmnhHwS/9EpUm2gIjm1vqkwelu
         Ii0ymEIAuCuvNPG2HR2DfaxulAv5DIHY/HRukNmxHU9tjki+xi7PCo2GglHc7AELQwM4
         ww7t6gfk7/kbsu+pOAV6JlwAsBySytBqRBcH224Wqf4VYsBhTetdzgFxMvVHO8lA3C45
         DAPY05Tn57j/9w620PDJZ/UOQLq0y2r8BrHoqLrraB3u8HlnGY3gXQFZYECgV7LJAQUm
         NL2dSw15wouJ6hyYdq/tK/I4rzz+idJtvWi+x24DXAffwVdLN+o6UNEfxi4xS0T54jmR
         VPKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=DpIgE+lwP9aIrG6ZIu2SFXKJFqz5Lwn5KbxtvKoQSS8=;
        b=V/go/tthwn1mPHue//p8J5kqwsQLUyKlHgCHyWHy3tXtqPWyzpXPOWtL95Yz3o+weS
         /2Z3+KGsfsgMLPfASPaTWMcY0gmi/RnlzJ3LGaDP+rHApXPlGDZSWOM6QIpn1ewXn5h/
         5kq1UY2CPey8U8+8H2o6XsrNjOumF1AwLbunqOenyrcKjCNB8naaxxeSgeseDxIPpa8d
         mqHLl3TlVtdr22hxyY9LUlsH7OJz5yzG68B91ZoH702833dBA4A084CoC+8plv61P50T
         H3QMmBKwrh1RJZs6WfCXSykwK7CBUkc6SqD8CsyNx18JwPDZEfN7kCwgiscyrhCQyaTz
         GTCg==
X-Gm-Message-State: AOAM531DStmSejUx49IspcuECmX01W6QgAv9UeOv51XUHoHbgo3a0AJ4
	InoZgJt+s8nOPduhqQu55m0nRrv6
X-Google-Smtp-Source: ABdhPJyAVSKeSz1vGvAXmKBiItoUZdUi1bV7LIzwmOF7SRWwHWsH8mTN0nVg7YeQQ9dz3nzmIS5j+Q==
X-Received: by 2002:a17:902:7487:: with SMTP id h7mr12384955pll.155.1591982063504;
        Fri, 12 Jun 2020 10:14:23 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.hsd1.ca.comcast.net ([2601:202:4180:a5c0:5030:aa9f:23eb:a3d9])
        by smtp.gmail.com with ESMTPSA id q6sm6687494pff.163.2020.06.12.10.14.22
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2020 10:14:23 -0700 (PDT)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/6] tpm2-tools: update to 4.1.3
Date: Fri, 12 Jun 2020 10:14:17 -0700
Message-Id: <20200612171422.3380-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

LICENSE changed to BSD3

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb | 17 -----------------
 .../recipes-tpm2/tpm2-tools/tpm2-tools_4.1.3.bb | 13 +++++++++++++
 2 files changed, 13 insertions(+), 17 deletions(-)
 delete mode 100644 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb
 create mode 100644 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.3.bb

diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb
deleted file mode 100644
index e90dcfe..0000000
--- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb
+++ /dev/null
@@ -1,17 +0,0 @@
-SUMMARY = "Tools for TPM2."
-DESCRIPTION = "tpm2-tools"
-LICENSE = "BSD"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=0eb1216e46938bd723098d93a23c3bcc"
-SECTION = "tpm"
-
-DEPENDS = "tpm2-abrmd tpm2-tss openssl curl autoconf-archive"
-
-SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz"
-
-SRC_URI[md5sum] = "701ae9e8c8cbdd37d89c8ad774f55395"
-SRC_URI[sha256sum] = "40b9263d8b949bd2bc03a3cd60fa242e27116727467f9bbdd0b5f2539a25a7b1"
-SRC_URI[sha1sum] = "d097d321237983435f05c974533ad90e6f20acef"
-SRC_URI[sha384sum] = "396547f400e4f5626d7741d77ec543f312d94e6697899f4c36260d15fab3f4f971ad2c0487e6eaa2d60256f3cf68f85f"
-SRC_URI[sha512sum] = "25952cf947f0acd16b1a8dbd3ac8573bce85ff970a7e24c290c4f9cd29418e77a3e48ac82c932fbd250887a9303ab301ff92db594c2fffaba47b873382444d26"
-
-inherit autotools pkgconfig bash-completion
diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.3.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.3.bb
new file mode 100644
index 0000000..ae01d5e
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.3.bb
@@ -0,0 +1,13 @@
+SUMMARY = "Tools for TPM2."
+DESCRIPTION = "tpm2-tools"
+LICENSE = "BSD-3-Clause"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=0eb1216e46938bd723098d93a23c3bcc"
+SECTION = "tpm"
+
+DEPENDS = "tpm2-abrmd tpm2-tss openssl curl autoconf-archive"
+
+SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz"
+
+SRC_URI[sha256sum] = "bb5d3310620e75468fe33dbd530bd73dd648c70ec707b4579c74d9f63fc82704"
+
+inherit autotools pkgconfig bash-completion
-- 
2.17.1

