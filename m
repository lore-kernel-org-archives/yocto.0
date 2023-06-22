Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2776DEB64DA
	for <webhook@archiver.kernel.org>; Thu, 22 Jun 2023 15:13:28 +0000 (UTC)
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
 by mx.groups.io with SMTP id smtpd.web10.14016.1687446802387041252
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jun 2023 08:13:22 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=M+kZTjZG;
 spf=pass (domain: gmail.com, ip: 209.85.128.180, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-5700e993f37so11341217b3.0
        for <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 08:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687446801; x=1690038801;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=lpEI8G4XK8lvvT5tyay1zgdKw64oOoKLTQGm6XSKHxI=;
        b=M+kZTjZGWKdIab+/9VMQSY2VO1wYaebSiZlKHOqwcEoY35G1mOydumSt1xQZuTafU3
         8rDJTOPl5EbQ4Kc6d+mfk3rUQ3GvbPSiaqtxfCM4Bt1ePXJbDXCx/jsHhLDHgIWnUJQ4
         XWi99xN2k10WftZQxaPsEvdDvnVd0ek+4tXzqd+X1Tkt9IJNTGz9svxnbC36q1SahSQK
         E9JMmoogH5ChzBgjj3qfGLlX4sc3OY/IzAUBP9sc7rbdqKjM6gUB8Iq8ctNY0LZxDG6f
         WzW5oBGa+hWMF/WmtTORqnXPCJ0MHGe8We89hijMvdfmld5g7Fbxyt/kuk95/3Wtf5OJ
         iwBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687446801; x=1690038801;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lpEI8G4XK8lvvT5tyay1zgdKw64oOoKLTQGm6XSKHxI=;
        b=Rl98Wd752klHLHEdq++AEc7yw2YJORXo+D5id/qHlFPAhCXy1zO9AYb4oqJ8Dih6vP
         ImUDVS0jw98HrED1QLP+yDwymSIBGGik4j5llizB60cyEU9m70cGK2v+szMDudHgLZqx
         /8ZpTKmkYnUBSiZTSuko+YyhNx0M7HEpuJpPrT3YkRNgDYbc/LO2NZY44uNy24XfswiR
         3iw13aHhiOZbR4BoKhm5cNDu2j0sIJFffNPepNVG84RM5d6bykoVRpiYsenPIgce5J6+
         cB1m279immYeaT4l2DPYLoJKE+0zIoymL0l5fza0/przZv7+SBwcpGtLn6V6HzeNu8J1
         FqYA==
X-Gm-Message-State: AC+VfDzDi3xADBwIk0D4Z/LzvjMUokUo/J/puGLBkop7thwTQ3fl1iff
	hmOcvwtCQXQI/jTLeftz1HeNtjZ/b6I=
X-Google-Smtp-Source: ACHHUZ7SUqTHS5Zp8j6kfNrUYUod5GO8x82cX35n3HH/9KY5KMxNC4eGr0ccEbmoczNQQy2H5KLRXw==
X-Received: by 2002:a0d:cb51:0:b0:570:2a0:6c18 with SMTP id n78-20020a0dcb51000000b0057002a06c18mr20249286ywd.2.1687446801210;
        Thu, 22 Jun 2023 08:13:21 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:80e:b8b0:6c85:7e])
        by smtp.gmail.com with ESMTPSA id b65-20020a816744000000b0056183cdb2d9sm1853228ywc.60.2023.06.22.08.13.20
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jun 2023 08:13:20 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] arpwatch: Fix typo in COMPATIBLE_HOST:libc-musl = "null"
Date: Thu, 22 Jun 2023 11:13:19 -0400
Message-Id: <20230622151320.2921659-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 15:13:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60404

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-scanners/arpwatch/arpwatch_3.3.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-scanners/arpwatch/arpwatch_3.3.bb b/recipes-scanners/arpwatch/arpwatch_3.3.bb
index 8efb339..4b4d476 100644
--- a/recipes-scanners/arpwatch/arpwatch_3.3.bb
+++ b/recipes-scanners/arpwatch/arpwatch_3.3.bb
@@ -82,6 +82,6 @@ FILES:${PN} = "${bindir} ${sbindir} ${prefix}/etc/rc.d \
 
 COMPATIBLE_HOST:riscv32 = "null"
 COMPATIBLE_HOST:riscv64 = "null"
-OMPATIBLE_HOST:libc-musl = "null"
+COMPATIBLE_HOST:libc-musl = "null"
 
 RDEPENDS:${PN} = "libpcap"
-- 
2.34.1


