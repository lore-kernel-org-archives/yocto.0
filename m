Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web08.3898.1625048668675241284
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Jun 2021 03:24:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=t4piFePx;
 spf=pass (domain: gmail.com, ip: 209.85.221.42, mailfrom: samuli.piippo@gmail.com)
Received: by mail-wr1-f42.google.com with SMTP id v5so2986412wrt.3
        for <yocto@lists.yoctoproject.org>; Wed, 30 Jun 2021 03:24:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Mqutf8Gg/W6gA3vm+e4nPk+9ZZIY0rII1u83PVqHrrg=;
        b=t4piFePxp7iBd3G2X5pzugfrxcHFllbOznhTUTtXu6f7Xvu0X4CsJpGNhQWvOIHld+
         1VQSd5J40O6bRiXJ+7wwi6hsGHaxttDTK82Fuk/idpvdUSfkf6y3AliGAXa8R7zmrbsG
         qPKriz9N06K2dr+lpthbmJTFaVuxHKAp7pjbc5oTd8rKAWzrI0W9z36WfOUpp77T2bUZ
         G3n+BGvzYRa9ydcCtc1V/GDjQbZZMUjbTIHSO0V2Frkb5VT34ToFhgKY1niD0t5PFzb9
         q8RxOamoyvWUVNzIGOhtmbCVaKzTackD0e9UgwgNwc+xUxOqRvhfDyqnTnIZvyt1xyN8
         B4dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Mqutf8Gg/W6gA3vm+e4nPk+9ZZIY0rII1u83PVqHrrg=;
        b=KiVGfYufjlBF5rMo2MHv7u8499gX6BxQVnm1NSsQF4g9uCKLBQqP3/T1qL97XDLNuY
         GiOvYgNhw50QAXOK4j+QiQUwo9hR5DujWnPhN+BTsLJ/fIOT3a9Xe4w0l55JXw8iQPUC
         isIKqqaSE2cekiMFc6IjxkzTECNlUyulZkjTp6PJRlMBB8T+E/0IePMriP5oHsIO3DLB
         m4Xldtya1mZ9fUdB/5Wi54/v5Cam+EQLDiuznO9R5XiLFKNzuugp6HChQj7qIqeOJH2F
         VRJo97u4wWPxZFrZhn0DmEbMPXRBzeHT4IWGda5ceIHG31UPNsfoYkKm8pwoxMtwtMHO
         ONwg==
X-Gm-Message-State: AOAM531FXRlXTW5EkxiCKEUqNWCMcx/2y/72homNjic+37AY1Tf1ggEg
	xLKmwpXOuWO7X13fsEeTZGv/Gchb3/7jLw==
X-Google-Smtp-Source: ABdhPJzXoWAnI+HwnusEBMj0K0pqljbZzsHO9z0EIUtdukFNwUdyBgvC9iCBRtyGXr1AeG+6Ia4u9A==
X-Received: by 2002:a5d:638b:: with SMTP id p11mr39400824wru.380.1625048666921;
        Wed, 30 Jun 2021 03:24:26 -0700 (PDT)
Return-Path: <samuli.piippo@gmail.com>
Received: from munkone.intra.qt.io (62-183-187-94.co.dnainternet.fi. [62.183.187.94])
        by smtp.gmail.com with ESMTPSA id x18sm21111433wrw.19.2021.06.30.03.24.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jun 2021 03:24:26 -0700 (PDT)
From: "Samuli Piippo" <samuli.piippo@gmail.com>
X-Google-Original-From: Samuli Piippo <samuli.piippo@qt.io>
To: yocto@lists.yoctoproject.org
Cc: jpewhacker@gmail.com
Subject: [meta-mingw] [PATCH] libidn2: package all files
Date: Wed, 30 Jun 2021 13:24:20 +0300
Message-Id: <20210630102420.879587-1-samuli.piippo@qt.io>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Include .def files to the -dev package to fix QA Issue: nativesdk-libidn2:
Files/directories were installed but not shipped in any package.

Signed-off-by: Samuli Piippo <samuli.piippo@qt.io>
---
 recipes-extended/libidn/libidn2_%.bbappend | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 recipes-extended/libidn/libidn2_%.bbappend

diff --git a/recipes-extended/libidn/libidn2_%.bbappend b/recipes-extended/libidn/libidn2_%.bbappend
new file mode 100644
index 0000000..275886d
--- /dev/null
+++ b/recipes-extended/libidn/libidn2_%.bbappend
@@ -0,0 +1 @@
+FILES_${PN}-dev_append_mingw32 = " ${libdir}/*.def"
-- 
2.25.1

