Return-Path: <devendra.tewari@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E3F8C433F5
	for <webhook@archiver.kernel.org>; Thu, 18 Nov 2021 20:01:42 +0000 (UTC)
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com
 [209.85.222.50])
 by mx.groups.io with SMTP id smtpd.web10.1322.1637265702035204270
 for <yocto@lists.yoctoproject.org>;
 Thu, 18 Nov 2021 12:01:42 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=TErU6E3W;
 spf=pass (domain: gmail.com, ip: 209.85.222.50,
 mailfrom: devendra.tewari@gmail.com)
Received: by mail-ua1-f50.google.com with SMTP id y5so16318515ual.7
        for <yocto@lists.yoctoproject.org>;
 Thu, 18 Nov 2021 12:01:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oryw1X6hggKPCYxq6wwGcOvYKM77O/Ouy+Q+/UIKFbI=;
        b=TErU6E3W6Tcta5eUCyzjjaLvBkTUQLaN9HjQ17zhZjKq9BO+Fit3u1HoGPwR6JuKXU
         7Y7FY2P5wTYrBisE8fiT+t/hUA+2dJ9UFUcxExdR6Pp7GxM86Uz5f+ZhCvht1Kmjh2qr
         v0emvjwM36gJTEP98wkHQZ57M4AMYbwTss+jeJR4x6eIW1dzAqDLXKdo3qnX7DUEaCBF
         R/DtxSQKPcGwmtm0CG4rBQRMwoVzWudkEe5GDSsnHEjKiZOURqBy13z61jVw85HZMcQo
         OfbBwhrokbyYgK278Mpb7phbsrX6RJBGoqiXkT8dt+SlXu8pAmiTCxrZuxX9jMlZzQY6
         zaaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=oryw1X6hggKPCYxq6wwGcOvYKM77O/Ouy+Q+/UIKFbI=;
        b=sJulgFRl6bUCTgGLX/ZSVmg0+jjIxamY4LXXtznSF7n2PeIQI7DOnQd549/y0OQ5vm
         +LrlP6hd6/htdky6/E5mEevCYDtfdKw8Mlt0HnhgBEX//b8WwT7ld/5B6Qz+YkIiPXpX
         GWn/6SccuNC6aphwdcxgZfkzBzez2jApCn3ByVzu/LUF97zzm7Z2U9tSsCPuErcHJEPX
         KtzUOvG6DuUGevBEigSNNimaLybUEe1bHHqjKPmivB+4Gp6NzEVdbBjrWZOHFvaPXUzH
         cTB2J+6k0rGkTrXIdlRbBvqHSyGqCLRORomFcGUk+ETClKjSuzCdLLGqtailjePmeX2W
         yf2w==
X-Gm-Message-State: AOAM530nObXsocf+qtI/6oH3aNOZCYC1brUAkjvIs5cKLcXpRh6pXP9o
	w1fzzpXi3RYyuqd4O+dn+5EVlgtco+EUQA==
X-Google-Smtp-Source: 
 ABdhPJz6sB/G8mqbWgg6KzVfx9QLWkVjJ4jfr/KC5Pw085nS05L+Z5As4ZEmbvcnjKHeu6/kyEvDuQ==
X-Received: by 2002:a05:6102:1ca:: with SMTP id
 s10mr86601444vsq.61.1637265700944;
        Thu, 18 Nov 2021 12:01:40 -0800 (PST)
Received: from ma-mailsvcp-relay-lapp02.apple.com ([187.59.247.30])
        by smtp.gmail.com with ESMTPSA id
 v68sm466645vkb.30.2021.11.18.12.01.39
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Nov 2021 12:01:40 -0800 (PST)
From: Devendra Tewari <devendra.tewari@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Devendra Tewari <devendra.tewari@gmail.com>
Subject: [meta-raspberrypi][PATCH] linux-firmware-rpidistro: add branch in
 SRC_URI
Date: Thu, 18 Nov 2021 17:01:32 -0300
Message-Id: <20211118200132.60968-1-devendra.tewari@gmail.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 18 Nov 2021 20:01:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55363

Branch master has been renamed to buster. Also setting protocol to
https as GitHub is migrating away from unencrypted git protocol

Signed-off-by: Devendra Tewari <devendra.tewari@gmail.com>
---
 .../linux-firmware-rpidistro/linux-firmware-rpidistro_git.bb    | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidistro_git.bb b/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidistro_git.bb
index a091585..874e444 100644
--- a/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidistro_git.bb
+++ b/recipes-kernel/linux-firmware-rpidistro/linux-firmware-rpidistro_git.bb
@@ -34,7 +34,7 @@ LIC_FILES_CHKSUM = "\
 NO_GENERIC_LICENSE[Firmware-broadcom_bcm43xx-rpidistro] = "LICENCE.broadcom_bcm43xx"
 NO_GENERIC_LICENSE[WHENCE] = "WHENCE"
 
-SRC_URI = "git://github.com/RPi-Distro/firmware-nonfree"
+SRC_URI = "git://github.com/RPi-Distro/firmware-nonfree;protocol=https;branch=buster"
 
 SRCREV = "83938f78ca2d5a0ffe0c223bb96d72ccc7b71ca5"
 PV = "20190114-1+rpt11"
-- 
2.33.1


