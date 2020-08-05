Received: from mail-qv1-f67.google.com (mail-qv1-f67.google.com [209.85.219.67])
 by mx.groups.io with SMTP id smtpd.web12.6170.1596631495730116805
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Aug 2020 05:44:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=VcfJJ/DM;
 spf=pass (domain: gmail.com, ip: 209.85.219.67, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qv1-f67.google.com with SMTP id w2so8531029qvh.12
        for <yocto@lists.yoctoproject.org>; Wed, 05 Aug 2020 05:44:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lWloM/B/KQ8bBWozFc8zbTm93d6p5RbFw+xUFGJbMfQ=;
        b=VcfJJ/DM3TIyflm1XByse3fQjxzGUBrAg3KkZ9kyDsG8hzgimhIacJUyaV3snd6dwa
         YJEhClEsmKf5/ADmVj6Vy7WUM5jXNTKt4BoJUeUv2pRdTh+I2ugA3ViaRRLD/kbmMdOu
         y2ozkTyhHTaNdAol+58WvR4W6sVkU+7SQtDqXd0tZIOrEa85iFnd3TcvTmD9o4dVbdBv
         000PBWOi1NMKEgjs4a+k7XTsZpiZrBKOZ6izxHGN5LkIz3TNuoN2tqyG2xeNWMi1KU5A
         4i2ysVhriVST3eiWoll6KYegTwVyK+UA+u/KxducKIMRNzJjPOUPnpFz5CcaZg43kDs7
         fYrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lWloM/B/KQ8bBWozFc8zbTm93d6p5RbFw+xUFGJbMfQ=;
        b=o2PJ6TQrgwCbQmWqlQET/XlocYoK3SZugPG+Kg/pJDio5d057EMHTk1R4xNZ4IUooT
         ZQ46BT+LaWqbsutz76dSyR5egUhJp8YMJnq+FP7XjL/vqznkM2VWuT+Wh5uxFpueorhO
         iJ5iagANddhVfuT6bG4ZVGZ0EW1FdWSCRX1MnyyoyKWP4HPBXct40GVYe2WccDHuHPaM
         JMH6ef7hXJSjhhhhON4VMn7DYWxERPHxKzNovWGl650xx8p8Zzg8+2MkSrs/RW9t3bfX
         o11BSWzmTDGHVRTL4euCPYwLOOAJHuD13O0Jh702diAfYGrBQ73FI8Itw6LWHsduFfRj
         S8zg==
X-Gm-Message-State: AOAM53363YYS4jS6sk2eNEfy6QLRQK1sS/1szHSsCoLqFsl/MCKolOJP
	dicorwsnnuxSZ42+rTLupvY=
X-Google-Smtp-Source: ABdhPJwiBWRCHDZCv4OczV9YShNbvjKCv7OWRZ+fypRPFDaZ3ZnwoM3m9dQNcvgGi9BhmZ+IAiSmSg==
X-Received: by 2002:a0c:f007:: with SMTP id z7mr3349248qvk.53.1596631494819;
        Wed, 05 Aug 2020 05:44:54 -0700 (PDT)
Return-Path: <bruce.ashfield@gmail.com>
Received: from localhost.localdomain (CPE04d4c4975b80-CM64777d5e8820.cpe.net.cable.rogers.com. [174.112.240.214])
        by smtp.gmail.com with ESMTPSA id t127sm1595883qkc.100.2020.08.05.05.44.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Aug 2020 05:44:54 -0700 (PDT)
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH] yocto-bsps: update reference BSPs to 5.4.54
Date: Wed,  5 Aug 2020 08:44:52 -0400
Message-Id: <20200805124452.42477-1-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---

This also picks up the binutils fix.

Bruce

 .../linux/linux-yocto_5.4.bbappend               | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
index 626748541a..2c73eb2f67 100644
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
+++ b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.4.bbappend
@@ -7,17 +7,17 @@ KMACHINE_genericx86 ?= "common-pc"
 KMACHINE_genericx86-64 ?= "common-pc-64"
 KMACHINE_beaglebone-yocto ?= "beaglebone"
 
-SRCREV_machine_genericx86 ?= "ec485bd4afef57715eb45ba331b04b3f941e43bb"
-SRCREV_machine_genericx86-64 ?= "ec485bd4afef57715eb45ba331b04b3f941e43bb"
-SRCREV_machine_edgerouter ?= "ec485bd4afef57715eb45ba331b04b3f941e43bb"
-SRCREV_machine_beaglebone-yocto ?= "ec485bd4afef57715eb45ba331b04b3f941e43bb"
+SRCREV_machine_genericx86 ?= "9fc2fb2e73466a520ee9a3c48b3ca2f5b21415dc"
+SRCREV_machine_genericx86-64 ?= "9fc2fb2e73466a520ee9a3c48b3ca2f5b21415dc"
+SRCREV_machine_edgerouter ?= "9fc2fb2e73466a520ee9a3c48b3ca2f5b21415dc"
+SRCREV_machine_beaglebone-yocto ?= "9fc2fb2e73466a520ee9a3c48b3ca2f5b21415dc"
 
 COMPATIBLE_MACHINE_genericx86 = "genericx86"
 COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
 COMPATIBLE_MACHINE_edgerouter = "edgerouter"
 COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
 
-LINUX_VERSION_genericx86 = "5.4.49"
-LINUX_VERSION_genericx86-64 = "5.4.49"
-LINUX_VERSION_edgerouter = "5.4.49"
-LINUX_VERSION_beaglebone-yocto = "5.4.49"
+LINUX_VERSION_genericx86 = "5.4.54"
+LINUX_VERSION_genericx86-64 = "5.4.54"
+LINUX_VERSION_edgerouter = "5.4.54"
+LINUX_VERSION_beaglebone-yocto = "5.4.54"
-- 
2.19.1

