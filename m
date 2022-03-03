Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 826CCC433EF
	for <webhook@archiver.kernel.org>; Thu,  3 Mar 2022 08:28:00 +0000 (UTC)
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com
 [209.85.218.53])
 by mx.groups.io with SMTP id smtpd.web09.8800.1646296079275384203
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Mar 2022 00:27:59 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Ow/FeBwf;
 spf=pass (domain: gmail.com, ip: 209.85.218.53,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ej1-f53.google.com with SMTP id p15so8949246ejc.7
        for <yocto@lists.yoctoproject.org>;
 Thu, 03 Mar 2022 00:27:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=35isUZWVX85h7SSH0klutgxumTtz8jOI9C76ENTSd9M=;
        b=Ow/FeBwff0pvFEXRxegz2dbJQyyT3k5JAqh3rCJX7VLn1bkK97/gauK6GZPJv7W1aG
         3v0u4av+y/Cv71om+/jaxlHqqQwOYch30pz5+LX7hXiftj3BoEpRO45cc/qUCV3HTrPJ
         /OBLxekvdHZVcfECZAZZrA8nVxTpBfAos4YrRdeg2BLxdddYkHsZY2mpjD7ps4GcXHUn
         78lEV/5iYCS26xizI3imK9NdwKHvOgIenzw4SP5AnP2yfklyIOqcYvp7Ry2l6L9O9vMo
         AGcbM6msJVRu5H3pejQYUrqSnZb7SNiEuty3OFtF7iixYX5szPhveI1Is2p14ZSafOsJ
         HVzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=35isUZWVX85h7SSH0klutgxumTtz8jOI9C76ENTSd9M=;
        b=MNgDzMgMiuB+t1ZbyEgtBo5RPp3FvITt4q0CeBNrhNMyNlIHQNFmtErEOSKsowsPxw
         GA0oYKHiaJ8sni1e44doZJj6WZ51NcbINkbeQB6P28J8m6KsmADFcSJvV15E1DrJ03RR
         aDyAyok8e5iFm+jj1dV7aOxxwWpSjiVfloVEcygL8r1VSI42rklXN5PfsaFKBXLmKKg6
         lpJpt5LCuwtQOM6TVwDnrtV+ce7fRpigcHAVkiCFW3LMK2B6862bZ3ZkYr8xfpPCzCjo
         hqnTNuBMG7uf1tmoGlcscY30+uTu3N+5DO4Q3ZlBrfrphuhM/wInay6Sn9jpjXgXNoaX
         w1Nw==
X-Gm-Message-State: AOAM532SvZcosrOjZzBHaDeTEUzxbQImqXgVrkbWLxe64vhSp2QM3O4u
	6icxIV0vSf/z2V8qzU2eL04BBJC7OBs=
X-Google-Smtp-Source: 
 ABdhPJzz7hf/Hvl+bpAveIeWzf+gy1kNkgx8q6jSFI93T3uz0SXmIWX4S6eKCrGPQ44HMNE83DLZZw==
X-Received: by 2002:a17:907:7656:b0:6d0:1f5a:2bec with SMTP id
 kj22-20020a170907765600b006d01f5a2becmr26226427ejc.164.1646296077685;
        Thu, 03 Mar 2022 00:27:57 -0800 (PST)
Received: from localhost.localdomain
 ([2a02:2454:29b:3b00:d35d:e3cf:58b5:748b])
        by smtp.gmail.com with ESMTPSA id
 gv54-20020a1709072bf600b006da7953530bsm447741ejc.104.2022.03.03.00.27.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Mar 2022 00:27:57 -0800 (PST)
From: Alexander Kanavin <alex.kanavin@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Subject: [PATCH yocto-autobuilder-helper] auh-config: update smtp server to
 localhost
Date: Thu,  3 Mar 2022 09:27:52 +0100
Message-Id: <20220303082752.357858-1-alex.kanavin@gmail.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 03 Mar 2022 08:28:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56354

Current setup only allows sending mail via localhost on alma workers.

Signed-off-by: Alexander Kanavin <alex.kanavin@gmail.com>
---
 scripts/auh-config/upgrade-helper.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/auh-config/upgrade-helper.conf b/scripts/auh-config/upgrade-helper.conf
index 6255f3f..3a0aa6c 100644
--- a/scripts/auh-config/upgrade-helper.conf
+++ b/scripts/auh-config/upgrade-helper.conf
@@ -9,7 +9,7 @@ blacklist=linux-libc-headers linux-yocto alsa-utils-scripts build-appliance-imag
 # only recipes belonging to maintainers in whitelist will be attempted
 #maintainers_whitelist=anibal.limon@linux.intel.com
 # SMTP server
-smtp=mail.yoctoproject.org:25
+smtp=localhost:25
 # from whom should the mails arrive
 from=auh@yoctoproject.org
 # who should get the status mail with statistics, at the end
-- 
2.35.1


