Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com [209.85.222.196])
 by mx.groups.io with SMTP id smtpd.web12.140147.1598036887666877529
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Aug 2020 12:08:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=qUSDVW7B;
 spf=pass (domain: gmail.com, ip: 209.85.222.196, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qk1-f196.google.com with SMTP id x69so2324460qkb.1
        for <yocto@lists.yoctoproject.org>; Fri, 21 Aug 2020 12:08:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=6wrUE5zCpUYryjdGOYs/tY6uxxRl45Ov5ArJGqZDevA=;
        b=qUSDVW7BEtUNitmRc/Hy0HXu9lI9gTu+JtGyIySH0iXrBAycrRcl+Zg1RAUj1xaY5H
         okdvw0cL450AVorzcC2ps/tiFTG/Qeqr8JpIWxJlBnqlx04Xnjv6AoIhpHLRlAt0wVXL
         g3D0QdpaAeyTv73+umLhkB0cGWsBLKcyLN6s4SMjazrLgwsgiyczWnArBkYKv1EKHkAv
         bi0t60Is8tCq3n243q/BPTAw43hqsA3Tm21WeTk5Dizck0uGeqjImcb3+hHQoWCsIs69
         2fVxN93RQkcPVs4zKcHnoKD5FNdJzlKxJqSkt+v43UG+LqkWC78iI1ZPk15hEqyUYd2P
         3OeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6wrUE5zCpUYryjdGOYs/tY6uxxRl45Ov5ArJGqZDevA=;
        b=hIwCrS5+Q8dWXC6Zmt7rsIQMUFX0akK58e6BqVd5NRRVxgSHj3X8hmiYi3sRXThez9
         N3v4E8TmOmjAlWdldBAWpDNEd8M8f4z1gxud9XQqPcw5nnZXQgURY1mvBbYhJzrmTVcS
         GekVdVulNI5fWYBZiKOMdVg13V9SlxPGe3cxzNyNOh0cQm0OyDgaf7pARL319F1oHi2D
         L9RerYJFiT4slXkJQYs4qv9kPf86cZcS3taEXwK7M9qWC1UeV1KkCFhERXH34TBnpkAH
         glN4qEPcDJ/4IofCIvzKil40bR8Ryr+xayJO6H0TGlwCj7OeCSdNDwJtjao9GTLhUMZw
         5VDA==
X-Gm-Message-State: AOAM532eEFe1SzQ00KItb0Gm6zkBxA6h26Bn0iq19X8w0gSglLyTCT08
	TZUklpYerSR71adaJKO8Y9YoGhZ+L95pfqsi
X-Google-Smtp-Source: ABdhPJzKwwlFOf5W+JxKNGTPmSCIbx5P33w/7EHRfKH7aT0x7jm1lglH90IIDGRZr0Nx9u3+lVw14w==
X-Received: by 2002:ae9:eb82:: with SMTP id b124mr3920917qkg.124.1598036886674;
        Fri, 21 Aug 2020 12:08:06 -0700 (PDT)
Return-Path: <bruce.ashfield@gmail.com>
Received: from localhost.localdomain (CPE04d4c4975b80-CM64777d5e8820.cpe.net.cable.rogers.com. [174.112.240.214])
        by smtp.gmail.com with ESMTPSA id y46sm2927264qth.78.2020.08.21.12.08.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:08:05 -0700 (PDT)
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 2/3] yocto-bsp: update to v5.4.56
Date: Fri, 21 Aug 2020 15:08:01 -0400
Message-Id: <a51b8fd7d0530f4f5ea4660b790667403f607ff2.1598036643.git.bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <cover.1598036643.git.bruce.ashfield@gmail.com>
References: <cover.1598036643.git.bruce.ashfield@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 .../linux/linux-yocto_5.4.bbappend               | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
index 2c73eb2f67..e1c7372417 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
@@ -7,17 +7,17 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "9fc2fb2e73466a520ee9a3c48b3ca2f5b21415dc"
-SRCREV_machine_genericx86-64 ?= "9fc2fb2e73466a520ee9a3c48b3ca2f5b21415dc"
-SRCREV_machine_edgerouter ?= "9fc2fb2e73466a520ee9a3c48b3ca2f5b21415dc"
-SRCREV_machine_beaglebone-yocto ?= "9fc2fb2e73466a520ee9a3c48b3ca2f5b21415dc"
+SRCREV_machine_genericx86 ?= "eaeb8b7e17aaf93a3b727a51731b1c9a3916009f"
+SRCREV_machine_genericx86-64 ?= "eaeb8b7e17aaf93a3b727a51731b1c9a3916009f"
+SRCREV_machine_edgerouter ?= "eaeb8b7e17aaf93a3b727a51731b1c9a3916009f"
+SRCREV_machine_beaglebone-yocto ?= "eaeb8b7e17aaf93a3b727a51731b1c9a3916009f"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.4.54"
-LINUX_VERSION_genericx86-64 = "5.4.54"
-LINUX_VERSION_edgerouter = "5.4.54"
-LINUX_VERSION_beaglebone-yocto = "5.4.54"
+LINUX_VERSION_genericx86 = "5.4.56"
+LINUX_VERSION_genericx86-64 = "5.4.56"
+LINUX_VERSION_edgerouter = "5.4.56"
+LINUX_VERSION_beaglebone-yocto = "5.4.56"
-- 
2.19.1

