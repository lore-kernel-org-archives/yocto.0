Received: from mail-pg1-f182.google.com (mail-pg1-f182.google.com [209.85.215.182])
 by mx.groups.io with SMTP id smtpd.web12.17262.1622930582580283517
 for <yocto@lists.yoctoproject.org>;
 Sat, 05 Jun 2021 15:03:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CkZ99HdN;
 spf=pass (domain: gmail.com, ip: 209.85.215.182, mailfrom: akuster808@gmail.com)
Received: by mail-pg1-f182.google.com with SMTP id e22so10765531pgv.10
        for <yocto@lists.yoctoproject.org>; Sat, 05 Jun 2021 15:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=FqzaPmVWxrfhWR6K48u3iakJRSqiiD53UX+GpY/FsNE=;
        b=CkZ99HdNOWxolh91/KWS451Y8lnz3CwBop78bCN/TcOOPt2hyWJU3ooUAPi1ajKC0/
         3HTots4Q97aPZZef1TUlest6X9LaYl0gg+GgRx2xBigT1NVrHFbWLVSWweWLO/Vu1E0i
         hur2j31gyhBH1qw103ACBWewKIHwrbgOFqrFSWGyQtBE9GT+p2MhGeOalUmusc5utTq6
         NRy6XfLruWCb4OXQZEDlbUAXqweUdtWSwAbcZ1sDTGZVflvmpVHkmdGyYeLOqZbrJrWw
         xyg9dVis3k5fqM6YtCklsiU40zThJnDdU6/K6Y5ZAPU9Tzgwt3U2ZNGSXioB9NWEgqcr
         EPKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FqzaPmVWxrfhWR6K48u3iakJRSqiiD53UX+GpY/FsNE=;
        b=m/A0vLbLEneHRwaOswBxdnqPZAYZyywcHMW6snNVc/BSufyk8lqxmTaCVRTQqkBPel
         og2BeCd2FEXOkBr0O9FG/J1D0jSOY6glV/HLta+fx0oSy3zCTtBET6hTGMZ+R8aucln0
         QFcTMHWN7kEZAy2iufnGhd+rnTWmItsV0bpzHkYLmm6nEu0PXj+nGGM4p9ZNIC6xFwM1
         OectbSGLhKKW+ES1faGnGBRJbWo2Eu0AMrYvR6MQVhgldwCwm2loJCuJ3q7rZBx7sm0K
         kz9Roh0GrFCGD00F4XXXIgDYH8B89KFdtmDG8x/PcpbSVOgg8wBbAn5DOct1508N51uA
         NXDw==
X-Gm-Message-State: AOAM530tPHKjfUvEs0hlxNx+y5evRvt+beihB28F4Ep5UbTfTvArYV1z
	qY4E5pFjFfe6hI/+60Cyojq+0uxd7BkxqQ==
X-Google-Smtp-Source: ABdhPJxHM3M+0qmvD7KK42/PdVlSSQCTWporBb2p6zJ58SHXEWKZrSjqhQVuBCehHmZREB6jh9IwWg==
X-Received: by 2002:a63:f84c:: with SMTP id v12mr11198657pgj.299.1622930582039;
        Sat, 05 Jun 2021 15:03:02 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from kona.dnls.ca.comcast.net (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id t23sm5264678pgj.9.2021.06.05.15.03.01
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Jun 2021 15:03:01 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/7] meta-security/recipe-kernel: use sanity check
Date: Sat,  5 Jun 2021 22:02:53 +0000
Message-Id: <20210605220258.414233-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210605220258.414233-1-akuster808@gmail.com>
References: <20210605220258.414233-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-kernel/linux/linux-yocto-dev.bbappend | 4 +---
 recipes-kernel/linux/linux-yocto_5.%.bbappend | 4 +---
 recipes-kernel/linux/linux-yocto_security.inc | 3 +++
 3 files changed, 5 insertions(+), 6 deletions(-)
 create mode 100644 recipes-kernel/linux/linux-yocto_security.inc

diff --git a/recipes-kernel/linux/linux-yocto-dev.bbappend b/recipes-kernel/linux/linux-yocto-dev.bbappend
index fa536d0..1d9054f 100644
--- a/recipes-kernel/linux/linux-yocto-dev.bbappend
+++ b/recipes-kernel/linux/linux-yocto-dev.bbappend
@@ -1,3 +1 @@
-KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", " features/apparmor/apparmor.scc", "" ,d)}"
-KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "smack", " features/smack/smack.scc", "" ,d)}"
-KERNEL_FEATURES_append = " ${@bb.utils.contains("IMAGE_CLASSES", "dm-verity-img", " features/device-mapper/dm-verity.scc", "" ,d)}"
+require ${@bb.utils.contains('DISTRO_FEATURES', 'security', '${BPN}_security.inc', '', d)}
diff --git a/recipes-kernel/linux/linux-yocto_5.%.bbappend b/recipes-kernel/linux/linux-yocto_5.%.bbappend
index fa536d0..1d9054f 100644
--- a/recipes-kernel/linux/linux-yocto_5.%.bbappend
+++ b/recipes-kernel/linux/linux-yocto_5.%.bbappend
@@ -1,3 +1 @@
-KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", " features/apparmor/apparmor.scc", "" ,d)}"
-KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "smack", " features/smack/smack.scc", "" ,d)}"
-KERNEL_FEATURES_append = " ${@bb.utils.contains("IMAGE_CLASSES", "dm-verity-img", " features/device-mapper/dm-verity.scc", "" ,d)}"
+require ${@bb.utils.contains('DISTRO_FEATURES', 'security', '${BPN}_security.inc', '', d)}
diff --git a/recipes-kernel/linux/linux-yocto_security.inc b/recipes-kernel/linux/linux-yocto_security.inc
new file mode 100644
index 0000000..fa536d0
--- /dev/null
+++ b/recipes-kernel/linux/linux-yocto_security.inc
@@ -0,0 +1,3 @@
+KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "apparmor", " features/apparmor/apparmor.scc", "" ,d)}"
+KERNEL_FEATURES_append = " ${@bb.utils.contains("DISTRO_FEATURES", "smack", " features/smack/smack.scc", "" ,d)}"
+KERNEL_FEATURES_append = " ${@bb.utils.contains("IMAGE_CLASSES", "dm-verity-img", " features/device-mapper/dm-verity.scc", "" ,d)}"
-- 
2.25.1

