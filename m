Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE7A5C19F2A
	for <webhook@archiver.kernel.org>; Thu, 28 Jul 2022 22:32:39 +0000 (UTC)
Received: from mail-pl1-f171.google.com (mail-pl1-f171.google.com
 [209.85.214.171])
 by mx.groups.io with SMTP id smtpd.web08.1667.1659047557458111914
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 15:32:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=bApYCHGS;
 spf=pass (domain: gmail.com, ip: 209.85.214.171,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f171.google.com with SMTP id o3so3006931ple.5
        for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 15:32:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BCmukLbUp0zPHCfE6CN47WbOOzTLWBdXX63mA6QJqFs=;
        b=bApYCHGSTLqq6wNQ5vjIW46BZ2fYbeoc7KeqZ3e9PWyChgnoA2IYWeywEVvg8xHR5S
         Ns+jrhjDj59G8aovnx1CXlYKOeKGwqDY30dDPnVCoIgplCHasOHpDApjysBWngf0rbhm
         UPZ2/YsxhqlIww3tSM8InpmTCHVYdypN5y00JQy8CQxPfuSA1IEoGkKqnnH8Jyn1o549
         oztWSBSshitCiBzztH34yCd9+QbWCBZ50VWlYwc59jWhDtqWVCYGZ7YtsZ04oZYzvn7X
         UTPpVUwSVIfoAW44T34Uh+A3HJ9mkxqT0ZvP5+NGJTGwadqnmLhvLzbZbTwkL8wDFhkB
         qdUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=BCmukLbUp0zPHCfE6CN47WbOOzTLWBdXX63mA6QJqFs=;
        b=EyCaGcpD0QV7gB1dB1ocrEAZBdoA+CunhjjxnZF3g0rsCvW0BD+xsCy0lZjE/w1s0T
         CsVkF0s44IaPj3J4+Ja4bJUpug9mcvU4jEDDuqYeUKvGW628gxIHJwQ7C/XYfRHnzJTQ
         FHgYHNc5BHvJSKq6BEoisoqracZO0o/NW6tJZcdqxuy2y+j6SM1Bum/O6AbwCDXwU4hq
         T0KICZNZNC2N2TYqnDB9NQGpU7ix3S5JQxR/LEGF5mLhiLDIDwlbmn+hanpfZmrZzjlu
         gQgDIfHg3oJc7KtF7W0PMSAi0nwXmXXSB+dF8hd3QgBH0W5kLrCHIV+8HO9sxegT26mM
         95Lw==
X-Gm-Message-State: ACgBeo2mmy5AnK8YO1W1A53hkrboEA49SrQALzBDCpCTThLjgYa/VdCa
	4pICJbnVlKVqpRs8yKhENANpRVbB3PU=
X-Google-Smtp-Source: 
 AA6agR6H/+jTLfhJAksWsMNbipbL4n/mo02CVNpWs+zdBimNZdun1iSBsqxnB/xeu1+st+c3iMjwAQ==
X-Received: by 2002:a17:90b:1c04:b0:1f2:96f8:7db with SMTP id
 oc4-20020a17090b1c0400b001f296f807dbmr867118pjb.88.1659047556493;
        Thu, 28 Jul 2022 15:32:36 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:8cdd:3284:a497:445d])
        by smtp.gmail.com with ESMTPSA id
 z184-20020a6233c1000000b0052a198c2046sm1233626pfz.203.2022.07.28.15.32.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jul 2022 15:32:36 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Armpit's Upgrade Helper <akuster808@gmail.com>
Subject: [meta-tpm][PATCH] libtpm: upgrade 0.9.3 -> 0.9.5
Date: Thu, 28 Jul 2022 15:32:34 -0700
Message-Id: <20220728223234.54562-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Jul 2022 22:32:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57678

From: Armpit's Upgrade Helper <akuster808@gmail.com>

---
 .../recipes-tpm/libtpm/{libtpm_0.9.3.bb => libtpm_0.9.5.bb}     | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)
 rename meta-tpm/recipes-tpm/libtpm/{libtpm_0.9.3.bb => libtpm_0.9.5.bb} (89%)

diff --git a/meta-tpm/recipes-tpm/libtpm/libtpm_0.9.3.bb b/meta-tpm/recipes-tpm/libtpm/libtpm_0.9.5.bb
similarity index 89%
rename from meta-tpm/recipes-tpm/libtpm/libtpm_0.9.3.bb
rename to meta-tpm/recipes-tpm/libtpm/libtpm_0.9.5.bb
index c03c44c..cf80064 100644
--- a/meta-tpm/recipes-tpm/libtpm/libtpm_0.9.3.bb
+++ b/meta-tpm/recipes-tpm/libtpm/libtpm_0.9.5.bb
@@ -2,7 +2,7 @@ SUMMARY = "LIBPM - Software TPM Library"
 LICENSE = "BSD-3-Clause"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=e73f0786a936da3814896df06ad225a9"
 
-SRCREV = "3f8fbc831b7bc3a6cc8422c432f577596b4cf3df"
+SRCREV = "df1c3e98d697f3c1f09262d2ba161a7db784d6cc"
 SRC_URI = "git://github.com/stefanberger/libtpms.git;branch=stable-0.9;protocol=https"
 
 PE = "1"
-- 
2.25.1


