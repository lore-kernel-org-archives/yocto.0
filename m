Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7D984C38142
	for <webhook@archiver.kernel.org>; Sat, 28 Jan 2023 23:41:17 +0000 (UTC)
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com [209.85.160.177])
 by mx.groups.io with SMTP id smtpd.web11.6875.1674949276973709731
 for <yocto@lists.yoctoproject.org>;
 Sat, 28 Jan 2023 15:41:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=J4SpMhK7;
 spf=pass (domain: gmail.com, ip: 209.85.160.177, mailfrom: twoerner@gmail.com)
Received: by mail-qt1-f177.google.com with SMTP id g16so7229479qtu.2
        for <yocto@lists.yoctoproject.org>; Sat, 28 Jan 2023 15:41:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=Rno45oQdRPXHZQ6ueRf+RZmIg2RjwZTF4JFMmibcUkA=;
        b=J4SpMhK7hmgPqpulc8i9UXdN0Oql8E/DO4NdUFGQTzcM6DPCGN5iUue7CehTifFCJS
         SJAmPQvoXOwxVRtwUErJYKuJBVkW754e8oJsD9FZfGbu4Q7zMGkLPtT+ORxXUN2HjU7o
         nlbcgfDB9lFE4C2UXEbPJNZgTzIiCv0OOkYV89AcXpg4tDICzGoodm6DVL34fTxMY0lE
         SS5VAPteEVvPZrmOGicAt2lAWDt4lpQLUeXlQ9CJIHw5R9gnKanD6dg40pisgu4Ru3lD
         NzOANQmcIdMD+hNHsubpCB3wWM4zmr443kYomurJFgmfP8GVuCAEEKOIvDxNiuDFpR05
         kx4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Rno45oQdRPXHZQ6ueRf+RZmIg2RjwZTF4JFMmibcUkA=;
        b=3wIJH8aq7fZnL2b3KvjMTjcuKiUxv/eNUx+HdexkH3jWclF513N0Au7+bbaHFYR3c5
         uFs5RecF3vTWlf3xNXbaQzDDoLqmvKgnnvlcZz0r314rKlsK62zGet6Rt0GzHZHNq65R
         mqTDsbq9rdERJiaWM9Ofj7KI83s8XOusmhoBhVdmthAOPMHymi+k+kQVTk4DE6Kj00d0
         ISS8C9i/XMjF3KVXPRP8PADpvRFkvDx+3YSN4qGIu4VBAFrpEMhSH97oA3AsjV1iTPke
         HrbMP/ZvJotOFYuV/98jqRJdqG7x6TuHp+V+bu/zUTTdxF19wqMl4qOFzjLgJMHQVsdM
         tV3g==
X-Gm-Message-State: AO0yUKWd/OCQQQ1ZZwYzAFKXYFO3XFZpyEWAJUlmOH+7ZSK7Bjz5BFhE
	F+bT70iBAV7HT02gP0QaKdm+0WjijoM=
X-Google-Smtp-Source: AK7set8Z5QX2eg2MtVSRwSwlEszRQoH7ZzyuZiY5qtj60r29ulNuD9rlO2eJaivK8WT3vBBE2mdYMg==
X-Received: by 2002:ac8:5f0d:0:b0:3b6:3acb:7f70 with SMTP id x13-20020ac85f0d000000b003b63acb7f70mr6531464qta.61.1674949275686;
        Sat, 28 Jan 2023 15:41:15 -0800 (PST)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id hh5-20020a05622a618500b0039cc0fbdb61sm5333315qtb.53.2023.01.28.15.41.15
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 28 Jan 2023 15:41:15 -0800 (PST)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] U-Boot: add DEPENDS for rock-pi-4[abc]
Date: Sat, 28 Jan 2023 18:41:10 -0500
Message-Id: <20230128234110.36450-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.36.0.rc2.17.g4027e30c53
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 28 Jan 2023 23:41:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59094

The U-Boot build for rock-pi-4[abc] was recently changed to add information
for UEFI. The build now DEPENDS on gnutls-native.

U-Boot: e86c789ca372 ("rockpi4: board: Add firmware image information for capsule updates")

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 recipes-bsp/u-boot/u-boot%.bbappend | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-bsp/u-boot/u-boot%.bbappend b/recipes-bsp/u-boot/u-boot%.bbappend
index de1f2caa171f..b7c6b4936324 100644
--- a/recipes-bsp/u-boot/u-boot%.bbappend
+++ b/recipes-bsp/u-boot/u-boot%.bbappend
@@ -5,6 +5,8 @@ do_compile:append:rock2-square () {
 	fi
 }
 
+DEPENDS:append:rock-pi-4 = " gnutls-native"
+
 ATF_DEPENDS ??= ""
 
 EXTRA_OEMAKE:append:rk3399 = " BL31=${DEPLOY_DIR_IMAGE}/bl31-rk3399.elf"
-- 
2.36.0.rc2.17.g4027e30c53


