Received: from mail-qk1-f169.google.com (mail-qk1-f169.google.com [209.85.222.169])
 by mx.groups.io with SMTP id smtpd.web08.65.1623876818270114223
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Jun 2021 13:53:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=vRLQZej9;
 spf=pass (domain: gmail.com, ip: 209.85.222.169, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qk1-f169.google.com with SMTP id i68so922089qke.3
        for <yocto@lists.yoctoproject.org>; Wed, 16 Jun 2021 13:53:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zot5Dd33nFHLI2eMDTiFzR31QFOBqHmh2l5FGFEK7Lg=;
        b=vRLQZej9Y2DWwI23comFqOHfi8c2Wy9czX6uuSs/UAqnoH+bDi3RQjfuH1U5j38CzP
         MFfroxLEvT48GoRRy62XKmkrTxqkVCQSb4BvqDB2ulnH7BY3Tvpnp7j9oIQOuX+Cu3M1
         dP24X+OAFl1WzRt+B+BVHFljevukgab9C1BhbgEWVgI5WUJn13du8KSn8YIaUEYL4mOi
         2h1PRnKmNIg3qlllLS9dqsN1Wq2LNwuNIBlTVCxsmKAx3Yp6K5GMDqhvISzUkfwU5L+s
         3Y1IE7loD9gRxX9DKVI/fmtZrDZw/Um/PsGQAglDcSvQzfwDRTgCA8d4ezB5FV5H7Ciu
         7vtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zot5Dd33nFHLI2eMDTiFzR31QFOBqHmh2l5FGFEK7Lg=;
        b=iWXpr6JMT7dUZmCPPg2IcE76Zps9nzZbLt+sYeuecZkum3dxClZDNTHLgTDp/rk8nI
         Mpqog6hZEU7VpaGrmmbD26pO9nKhtHzevlNfHjdSfu7ZJep47Iy9lf16EO1Vzi2uaAoN
         pK3zWGMr6rx391jo0pqG26tt+cGlLDC4+zsICCDtqphSWiZjlmD5aSjBsr6vubonwz4X
         nf40CwR1QloTtP4KCj0c/A4LU82xNSOCBlSOxV/4ra+MQCqHIe+Jf1N2jclJR7euT/t/
         y+XViKuaDp1e5grQWw2GpMZ3KVm/U8QCNh+x1ZQ3xZPhuVQIeY1CTAvQwQLUxQS2KO/B
         85pw==
X-Gm-Message-State: AOAM532QVmwFGNgxkirVk773Vm1KHrjPFX8oOuh9FVucFwGL/0FGR9EO
	sbahezgqOnb3mkVPjDj+aGc=
X-Google-Smtp-Source: ABdhPJxzuUsK9UGOwp79UnTpsGRLYaXIPheKFCn8YjpvAqWyVFzO4Z5OAhA0UYT3eG1C5f6uHMkWjg==
X-Received: by 2002:a37:6851:: with SMTP id d78mr240780qkc.483.1623876817361;
        Wed, 16 Jun 2021 13:53:37 -0700 (PDT)
Return-Path: <bruce.ashfield@gmail.com>
Received: from build.lan (cpe04d4c4975b80-cmf4c11490699b.cpe.net.cable.rogers.com. [174.112.159.151])
        by smtp.gmail.com with ESMTPSA id b132sm298366qkg.116.2021.06.16.13.53.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jun 2021 13:53:37 -0700 (PDT)
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH] bsps/5.10: update to v5.10.43
Date: Wed, 16 Jun 2021 16:53:35 -0400
Message-Id: <20210616205335.4326-1-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Updating linux-yocto/5.10 to the latest korg -stable release, and to
match the qemu BSPs in oe-core

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 .../linux/linux-yocto_5.10.bbappend              | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
index bc2b3bf576..f8362b6635 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.10.bbappend
@@ -7,17 +7,17 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "8c516ced69f41563404ada0bea315a55bcf1df6f"
-SRCREV_machine_genericx86-64 ?= "8c516ced69f41563404ada0bea315a55bcf1df6f"
-SRCREV_machine_edgerouter ?= "965ab3ab746ae8a1158617b6302d9c218ffbbb66"
-SRCREV_machine_beaglebone-yocto ?= "8c516ced69f41563404ada0bea315a55bcf1df6f"
+SRCREV_machine_genericx86 ?= "ab49d2db98bdee2c8c6e17fb59ded9e5292b0f41"
+SRCREV_machine_genericx86-64 ?= "ab49d2db98bdee2c8c6e17fb59ded9e5292b0f41"
+SRCREV_machine_edgerouter ?= "274d63799465eebfd201b3e8251f16d29e93a978"
+SRCREV_machine_beaglebone-yocto ?= "ab49d2db98bdee2c8c6e17fb59ded9e5292b0f41"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.10.21"
-LINUX_VERSION_genericx86-64 = "5.10.21"
-LINUX_VERSION_edgerouter = "5.10.21"
-LINUX_VERSION_beaglebone-yocto = "5.10.21"
+LINUX_VERSION_genericx86 = "5.10.43"
+LINUX_VERSION_genericx86-64 = "5.10.43"
+LINUX_VERSION_edgerouter = "5.10.43"
+LINUX_VERSION_beaglebone-yocto = "5.10.43"
-- 
2.19.1

