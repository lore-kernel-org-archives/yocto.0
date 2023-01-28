Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4F835C61D97
	for <webhook@archiver.kernel.org>; Sat, 28 Jan 2023 15:18:46 +0000 (UTC)
Received: from mail-qt1-f181.google.com (mail-qt1-f181.google.com [209.85.160.181])
 by mx.groups.io with SMTP id smtpd.web11.15096.1674919119228240643
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Jan 2023 07:18:39 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=OaZ3wlsq;
 spf=pass (domain: gmail.com, ip: 209.85.160.181, mailfrom: akuster808@gmail.com)
Received: by mail-qt1-f181.google.com with SMTP id z9so6510085qtv.5
        for <yocto@lists.yoctoproject.org>; Sat, 28 Jan 2023 07:18:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=KVo3NBLwKetzpxEreyNLxYOA2HTLtxj6zfd6cenXxsQ=;
        b=OaZ3wlsqNN1lAf29pIJVao5/Jt6mPqobo9RyBTi11S3lp4TlGwaoRKDfln6HqFsalB
         EvJmUokWePbHwSuZXJWs44i9GAtpQd6qcpNI2mjvWrnALYspcUwqXGu2mOE/KtoGKgAj
         sHleCR12iQMpkgq7hdiFUybfNBp8ffSxtlj3GZlCwGSK1YPuzDCkwaGCkrvBAwtKSYgn
         XF71Y2uhCSDvDo1sE/RcqyAPfCLH1KoomfnLuA+akYPra2pzjFcTSL6AVcKTtxjah3Nk
         sBskD9T8ZhqT7IGTf8065RNuiQvinH50vKMNobgH8fsiA6i0CiQTQpYKWV492/2G+IsC
         dXJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KVo3NBLwKetzpxEreyNLxYOA2HTLtxj6zfd6cenXxsQ=;
        b=B3XbHAkLpRaDv3h6bZ7i4CZSXJTdYmdjxMQ+Hjt2VmFQ3ZM3208W/T3OO11SXgNQfg
         gB0BJNjgswbxFBtcRJPLR7appCWvRtITyKYWpNKNW+0969JkGnqw4XarJE/2UFHootzv
         yMlGe4au/K/ly/5f1FiTS3kDeSMF3MjVStBiYAtHXQPEPUPqz0N+wzdtliTnMZAVRN32
         gI8Ar/IzA2zt4Bxgemx4ToB7MZ+hO+ekvIXLYQKKlevYG3ziBc1kFhCoyoxUhBF1jnNM
         6oULm1uGUn+WEYE+1bNoxLUAenXATdtXlXTutRAkHiK98g2k7lQXs4+z+5t5Nvie1fdJ
         ud/A==
X-Gm-Message-State: AFqh2krzNZ6A1EU/996J5lsJqhIFzrkL4sy+6vHtcOohuZ71U68X5Qmb
	ER73Adbi+qbvupsFs4Yrr+Hz/i/1hjU=
X-Google-Smtp-Source: AMrXdXsCoZtQxDcsq4qiyI0oZ6Lf/NregNIkNP114e/8i4AmICPI0M7SaArBx9VL0Lzazs6rsDSFew==
X-Received: by 2002:ac8:7205:0:b0:3b6:30f9:131c with SMTP id a5-20020ac87205000000b003b630f9131cmr58410085qtp.4.1674919117950;
        Sat, 28 Jan 2023 07:18:37 -0800 (PST)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:f329:fc42:2781:4396])
        by smtp.gmail.com with ESMTPSA id i2-20020ac87642000000b003b6a17e1996sm4687532qtr.83.2023.01.28.07.18.37
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Jan 2023 07:18:37 -0800 (PST)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] linux-yocto.bbappend: bump to kernel version 6.x
Date: Sat, 28 Jan 2023 10:18:36 -0500
Message-Id: <20230128151837.376291-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 28 Jan 2023 15:18:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59089

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../linux/{linux-yocto_5.%.bbappend => linux-yocto_6.%.bbappend}  | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-kernel/linux/{linux-yocto_5.%.bbappend => linux-yocto_6.%.bbappend} (100%)

diff --git a/recipes-kernel/linux/linux-yocto_5.%.bbappend b/recipes-kernel/linux/linux-yocto_6.%.bbappend
similarity index 100%
rename from recipes-kernel/linux/linux-yocto_5.%.bbappend
rename to recipes-kernel/linux/linux-yocto_6.%.bbappend
-- 
2.25.1


