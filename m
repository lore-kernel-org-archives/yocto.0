Return-Path: <bruce.ashfield@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2BD33C61D97
	for <webhook@archiver.kernel.org>; Tue, 24 Jan 2023 22:02:12 +0000 (UTC)
Received: from mail-yw1-f174.google.com (mail-yw1-f174.google.com [209.85.128.174])
 by mx.groups.io with SMTP id smtpd.web10.29700.1674597729316086819
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Jan 2023 14:02:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=lOeEaqxF;
 spf=pass (domain: gmail.com, ip: 209.85.128.174, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-yw1-f174.google.com with SMTP id 00721157ae682-4c24993965eso238121387b3.12
        for <yocto@lists.yoctoproject.org>; Tue, 24 Jan 2023 14:02:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XaqF25r7I8+W/vZF2SisaPHAH+gAZtEo8GixnVU/84E=;
        b=lOeEaqxFMMJYfvZysFuDaACWgl4h1NYVh+5lDxp6YKduA+0Y4JvS5pJ4m1wZU49aQK
         qkDthyQVRriYhPtwJO2xCox2dM9ixly1ElrOkefpb1PFRPRVRo7KlKT/otP9OIsq2v4V
         knOq9oj4MU5Ju12EtMW0VOIEeZERvQiHiK4nWgjHNwqaywRlvdgbQqJyNicYlTmFvOgh
         76Tbkn5zTODoFUjpLLaJSfJ9mmaQuMT7Cd0ZRFB3XXOTs2d2TrnD9vM5tZkvjZH9TbSi
         QtEEac8j/DwxVkhfVDJEraEpkvmQOrHqWadP9evZYJtDhTfHvCvtgZcCSEYZNiS3zqx+
         SbEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XaqF25r7I8+W/vZF2SisaPHAH+gAZtEo8GixnVU/84E=;
        b=TQgh8udXx0IQCaoFy6XLkPCvvtoMjVMcFPkMq/A6ZGpmBSoiDrtxJ++Q2VNCHkmK/d
         0LDHbZIVp9KMnq1RBUJNd9XfyY/LtAwwJv+UNGaOEp1X5t5cuBcWOOFB2YPC+SbhlJb6
         EUq9aB7ZZHRpcMcvAnHWLDFOsADrK5UzdEOOtdHqqEYnbcEb3aGzkJdDd9yCQE3b/sCx
         cc403w+9wWaKm6kSkKvz10FUrYsRKHebrjAp1HmM3DguGAFjFk2ExQwUAYmAvoc7QiDw
         xTxyYxhEJOPNk41YgSa/JqOxE/qgp88bKn1x44x0CV0Ih+pP04f1JVDpFxJS7km11VdO
         6M6g==
X-Gm-Message-State: AFqh2kpnb08Sb81oGHGYy6vPvLhJiXwQT/vu7Qi3oRtQmlo6AzziuvzB
	LUIGfy8PuhjQC6YGxkAkBeY=
X-Google-Smtp-Source: AMrXdXtMRxusgYaJFUEnYkGyCA9S/sjoeBxXq1xTABKwtWFgCkekJd8jFSMsM0W+TTnv03UU3j9YgA==
X-Received: by 2002:a81:5e08:0:b0:4de:debe:5587 with SMTP id s8-20020a815e08000000b004dedebe5587mr17986042ywb.51.1674597728442;
        Tue, 24 Jan 2023 14:02:08 -0800 (PST)
Received: from build.lan (cpe7c9a54441c1f-cm7c9a54441c1d.cpe.net.cable.rogers.com. [173.34.238.88])
        by smtp.gmail.com with ESMTPSA id c38-20020a05620a26a600b006ea7f9d8644sm2196923qkp.96.2023.01.24.14.02.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jan 2023 14:02:08 -0800 (PST)
From: bruce.ashfield@gmail.com
To: richard.purdie@linuxfoundation.org
Cc: yocto@lists.yoctoproject.org
Subject: [PATCH 0/2] poky/yocto-bsps: drop 5.19 and move to 6.1
Date: Tue, 24 Jan 2023 17:02:05 -0500
Message-Id: <cover.1674597613.git.bruce.ashfield@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 24 Jan 2023 22:02:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59053

From: Bruce Ashfield <bruce.ashfield@gmail.com>

Richard,

These follow the OEcore patches to remove 5.19. This bumps poky
and poky-tiny to 6.1 and leaves the alt configuration on 5.15.

Bruce

The following changes since commit 3c3fd6a65e8103f74ae382d196d486b31a168b39:

  insane: Improve patch warning/error handling (2023-01-21 07:46:38 +0000)

are available in the Git repository at:

  https://git.yoctoproject.org/poky-contrib zedd/kernel-yocto
  http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel-yocto

Bruce Ashfield (2):
  poky/poky-tiny: bump preferred version to 6.1
  yocto-bsps: remove 5.19 bbappend

 meta-poky/conf/distro/poky-tiny.conf          |  2 +-
 meta-poky/conf/distro/poky.conf               |  4 ++--
 .../linux/linux-yocto_5.19.bbappend           | 23 -------------------
 3 files changed, 3 insertions(+), 26 deletions(-)
 delete mode 100644 meta-yocto-bsp/recipes-kernel/linux/linux-yocto_5.19.bbappend

-- 
2.34.1


