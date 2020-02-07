Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web11.7636.1581094074763590271
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Feb 2020 08:47:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=E9xTt3nx;
 spf=pass (domain: gmail.com, ip: 209.85.216.54, mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f54.google.com with SMTP id n96so1115454pjc.3
        for <yocto@lists.yoctoproject.org>; Fri, 07 Feb 2020 08:47:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id;
        bh=UWcqDFlX5va8W5P9nckh0HgtlfMexX0wH/si5T8t/zg=;
        b=E9xTt3nxUowBiJjzU3ZqBTh3YeiV/SsxurscPuPulBmIhicj7h2YfGbsVHsQMcFVAz
         WnaiMmWjR6oUuZYVvO40mFIEL0hRbFoqXe4hbqhl2TN2n2atY/7euLKoYkQ8Kn0UhMKn
         n1ysxgMRGcwfyBHGxU3zvHPvNetu+hlcgM9MoNM+5FSwZR9nj2i2hDBcirEWqnMPmfmq
         2pS7qzy8DRHpZVEzdoRIS/zEePPgK/78voNjNWniD8ihwCyCVjuEGna9QMBi1fyA4I5i
         Yb8UeOys/6jaznH1ihoRImgMgHv2xbMCiQfqBSDsD65HLeOyXXzWVWtjVYE+zxfmCBp9
         aZIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=UWcqDFlX5va8W5P9nckh0HgtlfMexX0wH/si5T8t/zg=;
        b=FFldRbvg5mrXafnphNrouiTdClWuqsE17Log1Qy0QJGkPgOusbaHowlHCI03g1/394
         GbMHpyFMwSkuhe/6vTF5vj1IomWDITYZmQxrknBpm89DUNnPlNxFboXID2pC2Ra+2kjt
         CiHckHjRoH2ynUN2u4Vg0cfjp5MWMTeJmAr39V7RKKkiXefua2y5ZyLBqoY2MCS3sgrF
         yRD9pQDA7h5pPbTcRp1FIZ0uEf5eFYMcPXEKtvBSh7yz82vn07FVmfL+LOCVV15bvXqk
         jVlXA+if8Nd4zLz7tozkCN8mR05viviuppTfNqKu9L6iC9OBIWfWS5ZLCz3u26GzJAfF
         t30Q==
X-Gm-Message-State: APjAAAUzpB+zDMmYIeizIyVjSp7JfN42aaw6Grq84JEifNzqIN/q449U
	MLs8wT6Tzz/s7/neHiI+oItg5CjE
X-Google-Smtp-Source: APXvYqxhsS+omDLOMnOzO0AWqcAKwu0rD5BZ/NkkmgkntZSygE3An9uMpH/DUkZLMj9rYk7xgj+pVg==
X-Received: by 2002:a17:902:9a82:: with SMTP id w2mr10478603plp.117.1581094073809;
        Fri, 07 Feb 2020 08:47:53 -0800 (PST)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-T460s.mvista.com ([2601:202:4180:a5c0:64e0:39eb:f6ec:ba3e])
        by smtp.gmail.com with ESMTPSA id g10sm3596526pfo.166.2020.02.07.08.47.53
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2020 08:47:53 -0800 (PST)
From: "akuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] tpm2-tools: update to 4.1.1
Date: Fri,  7 Feb 2020 08:47:52 -0800
Message-Id: <20200207164752.11942-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-tpm2/tpm2-tools/tpm2-tools_4.0.1.bb | 14 --------------
 .../recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb | 17 +++++++++++++++++
 2 files changed, 17 insertions(+), 14 deletions(-)
 delete mode 100644 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.0.1.bb
 create mode 100644 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb

diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.0.1.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.0.1.bb
deleted file mode 100644
index 8f94972..0000000
--- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.0.1.bb
+++ /dev/null
@@ -1,14 +0,0 @@
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
-SRC_URI[md5sum] = "071aa40bc8721700ea4ed19cc2fdeabf"
-SRC_URI[sha256sum] = "ccec3fca6370341a102c5c2ef1ddb4e5cd242bf1bbc6c51d969f77fc78ca67d1"
-
-inherit autotools pkgconfig bash-completion
diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb
new file mode 100644
index 0000000..e90dcfe
--- /dev/null
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_4.1.1.bb
@@ -0,0 +1,17 @@
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
+SRC_URI[md5sum] = "701ae9e8c8cbdd37d89c8ad774f55395"
+SRC_URI[sha256sum] = "40b9263d8b949bd2bc03a3cd60fa242e27116727467f9bbdd0b5f2539a25a7b1"
+SRC_URI[sha1sum] = "d097d321237983435f05c974533ad90e6f20acef"
+SRC_URI[sha384sum] = "396547f400e4f5626d7741d77ec543f312d94e6697899f4c36260d15fab3f4f971ad2c0487e6eaa2d60256f3cf68f85f"
+SRC_URI[sha512sum] = "25952cf947f0acd16b1a8dbd3ac8573bce85ff970a7e24c290c4f9cd29418e77a3e48ac82c932fbd250887a9303ab301ff92db594c2fffaba47b873382444d26"
+
+inherit autotools pkgconfig bash-completion
-- 
2.17.1

