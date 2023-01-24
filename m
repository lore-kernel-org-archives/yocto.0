Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2BCF9C54E94
	for <webhook@archiver.kernel.org>; Tue, 24 Jan 2023 22:02:12 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
 by mx.groups.io with SMTP id smtpd.web10.29703.1674597731006689841
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Jan 2023 14:02:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=YxLASzPR;
 spf=pass (domain: gmail.com, ip: 209.85.167.176, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-oi1-f176.google.com with SMTP id s66so14654431oib.7
        for <yocto@lists.yoctoproject.org>; Tue, 24 Jan 2023 14:02:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=77Ykg+mywRy4+UjcvCtXbpQMVXGT+LXEQFpWMI2BxhA=;
        b=YxLASzPRlWpjGe/U8SEVG2go8o2R+MpPSW1op9wHwbdFeNFWpBe1FvcisvOCbOzbQx
         F1CE8Lv3cO4Pj4aOA2dUJYcScKGvzvtB9a2dzxB5y+GIObcll8T3Fy5xRYZUi9p7B4dL
         zs5t2ZESoqHQAgjObb6cR6vOyWOA/z7F3PK2hUbRmguWwBpiU+fwiA2Epb9TDTKxvrEH
         V1tDRWicyBk55bkIcD73lmu0pVYbO0SuEknBmWVQn8Gk848646746E/2nP5S62rXBhO5
         gRdzlXtehag9hsf1EMhG50qjqmxPMmLB71MbO/002UkvCFQIxcR+EzQrkWue/vq7oAeW
         ZTKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=77Ykg+mywRy4+UjcvCtXbpQMVXGT+LXEQFpWMI2BxhA=;
        b=mi8Vy9rLDQ1sW2VNjQO/M1gh/7dLXc1jhPEUcfz1j+GzEJyelGF1K0tXTwSDfwSQG/
         QXKnAHDt9dKAFarFUApOG4chzasA5E5H3bmDRqjPXUaErFTajQlyywiBW6UnURUs+W0D
         wsr3LgeXNyM07ihMQvlXYI58v6/FeEqG0M7aUqgF2pI3oe6B3T2B3VE2dPgJCamzNx+T
         5qTnPa8vCcg3+vbG4Nyqs+SbgRPvhgQppqsCAgcuDTIgWi1I4IfIXvcTGI7AGTdHFol2
         OtWHdR7TYVgBsCcsQl5kEQ+Jk9gkV4xf6UpMXWIEBvo7PONJ63NJS4AI6lFH9urXatv+
         /smw==
X-Gm-Message-State: AFqh2kqiKrq+nNcrGV4ocal6fHsdH9kYRpTnNNpF7kunl6R5SXbS4e+V
	rCfIzSl2idD2K0BiJ4xavQE=
X-Google-Smtp-Source: AMrXdXuIfl6Ua08L2C/je8kvNZfLYCk/4jZpPq8hNG520k0tHjxgvCJGsIZQEjFQljEQe6RnvYq9FA==
X-Received: by 2002:a05:6808:187:b0:364:6fd1:92d6 with SMTP id w7-20020a056808018700b003646fd192d6mr8041338oic.25.1674597730091;
        Tue, 24 Jan 2023 14:02:10 -0800 (PST)
Received: from build.lan (cpe7c9a54441c1f-cm7c9a54441c1d.cpe.net.cable.rogers.com. [173.34.238.88])
        by smtp.gmail.com with ESMTPSA id c38-20020a05620a26a600b006ea7f9d8644sm2196923qkp.96.2023.01.24.14.02.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jan 2023 14:02:09 -0800 (PST)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 2/2] yocto-bsps: remove 5.19 bbappend
Date: Tue, 24 Jan 2023 17:02:07 -0500
Message-Id: <c8076b237b17c2dd2f94b3b3ee44ae3d502cd8c5.1674597613.git.bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <cover.1674597613.git.bruce.ashfield@gmail.com>
References: <cover.1674597613.git.bruce.ashfield@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 Jan 2023 22:02:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59055

From: Bruce Ashfield <bruce.ashfield@gmail.com>

5.19 has been dropped from oe-core, so we drop our bbappend to match.

Signed-off-by: Bruce Ashfield <bruce.ashfield@gmail.com>
---
 .../linux/linux-yocto_5.19.bbappend           | 23 -------------------
 1 file changed, 23 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.19.bbappend

diff --git a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.19.bbappend b/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.19.bbappend
deleted file mode 100644
index 5794657cfe..0000000000
--- a/meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.19.bbappend
+++ /dev/null
@@ -1,23 +0,0 @@
-KBRANCH:genericx86  = "v5.19/standard/base"
-KBRANCH:genericx86-64  = "v5.19/standard/base"
-KBRANCH:edgerouter = "v5.19/standard/edgerouter"
-KBRANCH:beaglebone-yocto = "v5.19/standard/beaglebone"
-
-KMACHINE:genericx86 ?= "common-pc"
-KMACHINE:genericx86-64 ?= "common-pc-64"
-KMACHINE:beaglebone-yocto ?= "beaglebone"
-
-SRCREV_machine:genericx86 ?= "aaf4490d1807c49e3e0ceab1372533937ef2c82b"
-SRCREV_machine:genericx86-64 ?= "aaf4490d1807c49e3e0ceab1372533937ef2c82b"
-SRCREV_machine:edgerouter ?= "43e6ab6ed043f4bc8e7cffbb08af86af0bdb5e12"
-SRCREV_machine:beaglebone-yocto ?= "43e6ab6ed043f4bc8e7cffbb08af86af0bdb5e12"
-
-COMPATIBLE_MACHINE:genericx86 = "genericx86"
-COMPATIBLE_MACHINE:genericx86-64 = "genericx86-64"
-COMPATIBLE_MACHINE:edgerouter = "edgerouter"
-COMPATIBLE_MACHINE:beaglebone-yocto = "beaglebone-yocto"
-
-LINUX_VERSION:genericx86 = "5.19.17"
-LINUX_VERSION:genericx86-64 = "5.19.17"
-LINUX_VERSION:edgerouter = "5.19"
-LINUX_VERSION:beaglebone-yocto = "5.19"
-- 
2.34.1


