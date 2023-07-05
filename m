Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78C69EB64DA
	for <webhook@archiver.kernel.org>; Wed,  5 Jul 2023 13:25:06 +0000 (UTC)
Received: from mail-yw1-f170.google.com (mail-yw1-f170.google.com [209.85.128.170])
 by mx.groups.io with SMTP id smtpd.web11.16858.1688563500722079730
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Jul 2023 06:25:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=TeOzP8W7;
 spf=pass (domain: gmail.com, ip: 209.85.128.170, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f170.google.com with SMTP id 00721157ae682-570877f7838so80610407b3.0
        for <yocto@lists.yoctoproject.org>; Wed, 05 Jul 2023 06:25:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688563500; x=1691155500;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=wT5tf6QYtHkvADsEtweXn7u6l0RVLnoTAmRDYdoEGRU=;
        b=TeOzP8W7fIKpreoZ5xUdAxhlxGFBRQuMxMpGtem4NXlyj8ICEC95ws1jEa79pQwrNh
         pR9tfliZSBKlHcoE5fMpWpDYbpPssKsXLAhzegYlM9L32kWYD/viK91M8za5f7wZ62zH
         Ixj/2osdB3B3HR/5WUELadlmuNEXfPi8cgWaNURpxJcDkLpl6pdGWX8mUVwNWV+ruXTb
         Kyu9DN3f5R7EcuxcObkUhPBoyaBiMsEw0qTlPw7zJ5kidWW4AwMZVkxSG1RJMiy5+dHa
         8Kh/RkrZGvuC/mGFkHgNCwwTBxu6vGpmMwjCofznAjn7FMe9xfUoUZ1l3e4o9Tpq2rUw
         6NNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688563500; x=1691155500;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wT5tf6QYtHkvADsEtweXn7u6l0RVLnoTAmRDYdoEGRU=;
        b=feogKyuFcLnwfaG+45bUKvVRkVEdBA8qWdaIDk1Qp/wK4Vsw02Ur86QtvXg1Yn4m/L
         RV6oMDAzBIdWF7XNoinW0Rp4kyBxezvX7RpTCVgbAFMBkHMWGTGbPKT75I475XarNSxK
         6fM93Zi5mVvlrWG1qGakn9fcbtdevZQWSW0vaINtUARKnZEhABkk/7quSsI9AxyRPTTa
         I0F2q9VxuzIl7cehRn46Cy5PV64VRuQQxEy2fATxVo4HAMHh//S3Xe6BZZhtWqTxHXQQ
         MOl9TNK36G1pdNbmcme3eUOkioPfdEIfkt4uHyBYmRYGOWOdzmhWItIM4YsaMAolsM0s
         cEAQ==
X-Gm-Message-State: ABy/qLaAqq68t+V5TIjEGuLHee8Bjc/WHTM5iccxOBJBmj2XLg/tzQir
	2LPnsdN4QKIaMQ79YO7c4F6kXI7AjwE=
X-Google-Smtp-Source: APBJJlHGR62EZU2R6WzPbwOvYvWxeaz6D7AQox2/EMWh0SanFU4XAmn2+IL0SBy+5Gi6Q3PV0MfxyQ==
X-Received: by 2002:a25:4189:0:b0:c5f:5157:984f with SMTP id o131-20020a254189000000b00c5f5157984fmr3078736yba.50.1688563499582;
        Wed, 05 Jul 2023 06:24:59 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:534c:e39e:6813:ee4e])
        by smtp.gmail.com with ESMTPSA id b133-20020a25348b000000b00c4e93761e38sm1799715yba.64.2023.07.05.06.24.58
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jul 2023 06:24:59 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] clamav: update SRC_URI
Date: Wed,  5 Jul 2023 09:24:57 -0400
Message-Id: <20230705132457.2324547-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 05 Jul 2023 13:25:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60518

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-scanners/clamav/clamav_0.104.4.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-scanners/clamav/clamav_0.104.4.bb b/recipes-scanners/clamav/clamav_0.104.4.bb
index 68a7d1f..102f267 100644
--- a/recipes-scanners/clamav/clamav_0.104.4.bb
+++ b/recipes-scanners/clamav/clamav_0.104.4.bb
@@ -13,7 +13,7 @@ LIC_FILES_CHKSUM = "file://COPYING.txt;beginline=2;endline=3;md5=f7029fbbc5898b2
 # July 30th, 2022
 SRCREV = "563ba93052f3b7b46fb8725a65ee6299a9c332cf"
 
-SRC_URI = "git://github.com/vrtadmin/clamav-devel;branch=rel/0.104;protocol=https \
+SRC_URI = "git://github.com/Cisco-Talos/clamav;branch=rel/0.104;protocol=https \
     file://clamd.conf \
     file://freshclam.conf \
     file://volatiles.03_clamav \
-- 
2.34.1


