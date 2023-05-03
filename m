Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 729ACC7EE22
	for <webhook@archiver.kernel.org>; Wed,  3 May 2023 21:16:12 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
 by mx.groups.io with SMTP id smtpd.web10.34180.1683148565337206693
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 May 2023 14:16:05 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=o2WmZRxG;
 spf=pass (domain: gmail.com, ip: 209.85.128.174, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-559debdedb5so80892237b3.0
        for <yocto@lists.yoctoproject.org>; Wed, 03 May 2023 14:16:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683148564; x=1685740564;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=vaK7spToGxV9n3QBCJCNnDo2kzoGoNwwgznXuYxgaJo=;
        b=o2WmZRxGdp3Dj7QRsMe1Fbf7S0KkmpjJW39ifr6ctnoZ5H9Z59DgmkNMesUoZneBkL
         KiExHxLZjv+rAUfJ71ocRhPj9JLwXuxXICI+gmIRHMW9jeGt89Mik2T4hve/m+H6PdPn
         HJFg8IPkiNkUKaCLae4mRl5j0Bh3GgjRe7A2HiMuzng0rN6xXqrfdk4TTx4I3j6haQuO
         BNG+0K6MlOTwiwq99UQMsx7ogXBRcwZ/LRspsV3jPFSm8dRK7XdXhZrTo6/UlQcClkFa
         we4x7j0QP+1DzpTOUoFyuuca4QIfz/YxjYqYXpe6xDmrWSsAqP+7xrCtCSvS7C2ggKso
         HtNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683148564; x=1685740564;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vaK7spToGxV9n3QBCJCNnDo2kzoGoNwwgznXuYxgaJo=;
        b=Cpc7bfSbwFB/AHGtnrVmPqINyf3LwQRwq1Cnzwta8YdJ0Y8Omgcf3viUzt1jU/BMG2
         P8NkYumdIbwYtCYOLqBNABOnTT4dJfkLUviruQAxYVE4IyN90+V/9xlAK+/7bjwEds2G
         xVvPiyfArHQJJedZ6JXVG6vUidqQxoatfWUjVY3eODdP1wvGnk5FVKbP1aLmK3i5JyYn
         u+AF6Xk66XyIlhkuEFBnMN6XCZS/u/mKaMZVi68L2Bnu60wXPfLrGqSe7P75a0XEys1k
         +84iEJsX0dlx4Ba2N8mP/0A+q0mA9AcUTgWWXyNzEAC0zuiprNF+YgdaAhkDlzTS0dnN
         /hig==
X-Gm-Message-State: AC+VfDzrfGf7lA54fcTGG3ZeYGmdWFxSTd39EMQC4Qx+CDgEXanzGa2d
	2fYCJ6RspCzFx2EGKCpBAeSfyS+Wg9M=
X-Google-Smtp-Source: ACHHUZ6VF02kUVZAjYqqBjDsCjh17FhGDvFn0rYVAzSpxh246FhI2O+JdukU6YGKuoF+wjizipD3+g==
X-Received: by 2002:a81:6187:0:b0:54f:ba86:9df with SMTP id v129-20020a816187000000b0054fba8609dfmr19047929ywb.28.1683148564173;
        Wed, 03 May 2023 14:16:04 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:bd6d:128a:1e7c:110b])
        by smtp.gmail.com with ESMTPSA id n64-20020a817243000000b005569567aac1sm6936214ywc.106.2023.05.03.14.16.03
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 May 2023 14:16:03 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/3] os-release.bbappend: drop now CPE_NAME is in core
Date: Wed,  3 May 2023 17:16:01 -0400
Message-Id: <20230503211603.2209701-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 May 2023 21:16:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59858

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-core/os-release/os-release.bbappend                  | 1 -
 1 file changed, 1 deletion(-)
 delete mode 100644 meta-security-compliance/recipes-core/os-release/os-release.bbappend

diff --git a/meta-security-compliance/recipes-core/os-release/os-release.bbappend b/meta-security-compliance/recipes-core/os-release/os-release.bbappend
deleted file mode 100644
index 604bacb..0000000
--- a/meta-security-compliance/recipes-core/os-release/os-release.bbappend
+++ /dev/null
@@ -1 +0,0 @@
-CPE_NAME="cpe:/o:openembedded:nodistro:0"
-- 
2.25.1


