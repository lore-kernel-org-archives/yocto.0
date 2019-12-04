Received: from mail-pg1-f173.google.com (mail-pg1-f173.google.com [209.85.215.173])
 by mx.groups.io with SMTP id smtpd.web12.2248.1575426968017547982
 for <yocto@lists.yoctoproject.org>;
 Tue, 03 Dec 2019 18:36:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BhQTOW+J;
 spf=pass (domain: gmail.com, ip: 209.85.215.173, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f173.google.com with SMTP id b137so2578777pga.6
        for <yocto@lists.yoctoproject.org>; Tue, 03 Dec 2019 18:36:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=hSIGhe+VfQFh+XF3W1YxdxH0qzKb1D7poS6H2Kt5qCI=;
        b=BhQTOW+JcgBmTde4PT4qtTNPHbDaacIdsZN+5FjM0MXwb3DS/TkA/NCLQViKKnxe5B
         VcKywu09qwvtBTBGVFotYuEZoWLWShi6BdZ87+66CtUamiSKb/itnAWepqYZu6BXdgcB
         eyaGjOZyDzwweicgrDAaCR8C1AzxNzbPCO9Z4KLN9qnBIwYO6mM1KfgDpKIaUu5I9ClF
         xsATrRZL9t4LJ8aGZlZvJ7XmIjbFixZXiahaIi4xrUdltlTLuFXNU3n3xTZan7MT5fcU
         j1qT697xRUK64ybwa250knzu0YnrfQbqkjyvL2/6ePURHwmGhdUrfhuDESRh7a/VRVRd
         LtEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=hSIGhe+VfQFh+XF3W1YxdxH0qzKb1D7poS6H2Kt5qCI=;
        b=QTzuq683eg+B6QGDaq33XOeZ3byzy5MvfySati6XWihiqQ/RAnlOZR+3zu2pve3gep
         9avCou6iodW+QNPb0i/whp9iVBDraASXajGMFrDqHwibv8RaS1JQHmRhABlhNE5+vpjp
         9ApUHFNwnrBaYsJAm/J3nHbHRBELdA6T5fmnRgZ0d5GkXsh7LtkcWQjaOSLEQwxd4dfX
         NaPHDVp3aFzTSmfDaWV2mTFWW0OXUEBE6rIwlYw6RYzpYWuQxX0FV1tPfqFxJf2mZ3DU
         C/wyGAGDnXqWe/Jv4wUpLtghsDV4nJsPcVRZPU/vdBHdydNRVi62aIvY16ao0vzoBfRi
         3Tcw==
X-Gm-Message-State: APjAAAU3sxRDmmtWDjB7Ssf1zURy1eiltuD9urauUr0p4U3hrEl0laog
	PotqrQCxgTwcpQKrHpoFoIOU0YT4
X-Google-Smtp-Source: APXvYqzGnK1JYgsdHyiZUCWLfseb6CRqZvrgBAjqj07PtRzEJLa13WkUaOUH2rKjUWANdDRnrHoIFg==
X-Received: by 2002:a63:8041:: with SMTP id j62mr1014894pgd.41.1575426967063;
        Tue, 03 Dec 2019 18:36:07 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from pahoa2.kama-aina.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id o31sm2466366pgb.56.2019.12.03.18.36.06
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 03 Dec 2019 18:36:06 -0800 (PST)
From: "Armpit" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/6] tpm2-tools: update to 4.0.1
Date: Tue,  3 Dec 2019 18:35:59 -0800
Message-Id: <20191204023602.31748-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191204023602.31748-1-akuster808@gmail.com>
References: <20191204023602.31748-1-akuster808@gmail.com>

LIC_FILES_CHKSUM added new copyrights

Migrate to https d/l from git clone

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-tpm2/tpm2-tools/tpm2-tools_3.2.0.bb   | 15 ---------------
 .../recipes-tpm2/tpm2-tools/tpm2-tools_4.0.1.bb   | 14 ++++++++++++++
 2 files changed, 14 insertions(+), 15 deletions(-)
 delete mode 100644 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.2.0.bb
 create mode 100644 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.0.1.bb

diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.2.0.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.2.0.bb
deleted file mode 100644
index b6f1be0..0000000
--- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_3.2.0.bb
+++ /dev/null
@@ -1,15 +0,0 @@
-SUMMARY = "Tools for TPM2."
-DESCRIPTION = "tpm2-tools"
-LICENSE = "BSD"
-LIC_FILES_CHKSUM = "file://LICENSE;md5=91b7c548d73ea16537799e8060cea819"
-SECTION = "tpm"
-
-DEPENDS = "pkgconfig tpm2-tss openssl curl autoconf-archive"
-
-SRCREV = "a17daa948fc67685651bf3b7a589ed341080ddd3"
-
-SRC_URI = "git://github.com/tpm2-software/tpm2-tools.git;branch=3.X"
-
-S = "${WORKDIR}/git"
-
-inherit autotools pkgconfig
diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.0.1.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.0.1.bb
new file mode 100644
index 0000000..8f94972
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.0.1.bb
@@ -0,0 +1,14 @@
+SUMMARY = "Tools for TPM2."
+DESCRIPTION = "tpm2-tools"
+LICENSE = "BSD"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=0eb1216e46938bd723098d93a23c3bcc"
+SECTION = "tpm"
+
+DEPENDS = "tpm2-abrmd tpm2-tss openssl curl autoconf-archive"
+
+SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN}-${PV}.tar.gz"
+
+SRC_URI[md5sum] = "071aa40bc8721700ea4ed19cc2fdeabf"
+SRC_URI[sha256sum] = "ccec3fca6370341a102c5c2ef1ddb4e5cd242bf1bbc6c51d969f77fc78ca67d1"
+
+inherit autotools pkgconfig bash-completion
-- 
2.17.1

