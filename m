Received: from mail-qk1-f195.google.com (mail-qk1-f195.google.com [209.85.222.195])
 by mx.groups.io with SMTP id smtpd.web10.12426.1583333813843111591
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Mar 2020 06:56:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ahk1d+6l;
 spf=pass (domain: gmail.com, ip: 209.85.222.195, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-qk1-f195.google.com with SMTP id u124so1829189qkh.13
        for <yocto@lists.yoctoproject.org>; Wed, 04 Mar 2020 06:56:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=bvqTGMxou9NaQ4seX3FmW9UjhK/06HxHQy2awFzP/sc=;
        b=Ahk1d+6lksgxRQeBK5OA/ndSQfYnIiXLEucxzeIghjd/j4VlFcq0+iFj+qScCTXYwj
         tDsihXmComDEI1XbQFdR8BAJgtc8V6vf+0AMkAXkTXbwmEcGMQoUwVKzDeFKI7kXiqGv
         Z86QHnEhzpqWCIwwgm4a5CceO4G7Ant5nwMn+YH5CwFX7LfeHNk+M2v2dVX+eMkWb/DI
         io3MO7+OxqoHcdaa99CIM7M2/lsUnXXgay49azlxkRmUXt3AHTuMrqKnnmuQxm21+DV2
         UQzXtdp86xV6DBv282HOniwawqFbjsf65otLh+zoPENQV4rkq0D+QjJYCA4YRd6uXudO
         ucDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=bvqTGMxou9NaQ4seX3FmW9UjhK/06HxHQy2awFzP/sc=;
        b=LndmGhwndULiZ9AGIQ6ffKih7YqEgR+Tyd+/5LDycRWVMuDx+h0HXcTpfEMs1xqdsa
         z9p75i2frufIPV243hJjg5UZpFgM0Au4NqMSRPYjLtyYuMrKufaR4WKPi5UhfBssBRSQ
         t4NyOBVnVFq8Pjp4vjgXzJyM/B/pM89raNeP8tiXXrpPPFJ6iZVOooQbRZEE5kPHfQJ/
         GAp/wxk1Vp+8wt3BkjChdLtkZ0Jg/fMx/WsUM9e2k8oZhHkEopYKcX/bu9MRqlwOEs+N
         4gVp0J/VyGaAucdUpKOaGscaYZNC6aJWCMygzQolZbNDt0TcBwIhROdidoVyEHE4NLC+
         Nrvg==
X-Gm-Message-State: ANhLgQ3d0S4MHImiXAb+/mmmUpEwjy87oLKVTAk/8oYR5RB3dBnyVhTC
	v5dkEZ26DMd+XdHc9y7Yltc=
X-Google-Smtp-Source: ADFU+vvNz9DX2X2Z9E+Kiyj2s04DAitW10VXu4NA+13r35HIdRBs7so2MBkWAMuhpfqKvg0Pq2m4xw==
X-Received: by 2002:a37:2dc5:: with SMTP id t188mr3359562qkh.249.1583333812969;
        Wed, 04 Mar 2020 06:56:52 -0800 (PST)
Return-Path: <bruce.ashfield@gmail.com>
Received: from localhost.localdomain (CPE04d4c4975b80-CM64777d5e8820.cpe.net.cable.rogers.com. [174.112.240.214])
        by smtp.gmail.com with ESMTPSA id h24sm7136978qkk.3.2020.03.04.06.56.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2020 06:56:52 -0800 (PST)
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 2/2] yocto-bsps: drop 5.2 bbappend
Date: Wed,  4 Mar 2020 09:56:50 -0500
Message-Id: <20200304145650.20554-2-bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.19.1
In-Reply-To: <20200304145650.20554-1-bruce.ashfield@gmail.com>
References: <20200304145650.20554-1-bruce.ashfield@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Bruce Ashfield <bruce.ashfield@gmail.com>

The 5.2 recipes have been dropped from oe-core, so we drop the
5.2 bbappends to match.

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 .../linux/linux-yocto_5.2.bbappend            | 23 -------------------
 1 file changed, 23 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend
deleted file mode 100644
index a0a4222e61..0000000000
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.2.bbappend
+++ /dev/null
@@ -1,23 +0,0 @@
-KBRANCH_genericx86  = "v5.2/standard/base"
-KBRANCH_genericx86-64  = "v5.2/standard/base"
-KBRANCH_edgerouter = "v5.2/standard/edgerouter"
-KBRANCH_beaglebone-yocto = "v5.2/standard/beaglebone"
-
-KMACHINE_genericx86 ?= "common-pc"
-KMACHINE_genericx86-64 ?= "common-pc-64"
-KMACHINE_beaglebone-yocto ?= "beaglebone"
-
-SRCREV_machine_genericx86 ?= "73b12de4c879e4569bef3b2d0ee9c783a9788b27"
-SRCREV_machine_genericx86-64 ?= "73b12de4c879e4569bef3b2d0ee9c783a9788b27"
-SRCREV_machine_edgerouter ?= "73b12de4c879e4569bef3b2d0ee9c783a9788b27"
-SRCREV_machine_beaglebone-yocto ?= "73b12de4c879e4569bef3b2d0ee9c783a9788b27"
-
-COMPATIBLE_MACHINE_genericx86 = "genericx86"
-COMPATIBLE_MACHINE_genericx86-64 = "genericx86-64"
-COMPATIBLE_MACHINE_edgerouter = "edgerouter"
-COMPATIBLE_MACHINE_beaglebone-yocto = "beaglebone-yocto"
-
-LINUX_VERSION_genericx86 = "5.2.17"
-LINUX_VERSION_genericx86-64 = "5.2.17"
-LINUX_VERSION_edgerouter = "5.2.17"
-LINUX_VERSION_beaglebone-yocto = "5.2.17"
-- 
2.19.1

