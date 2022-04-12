Return-Path: <ranjitsinhrathod1991@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05596C433EF
	for <webhook@archiver.kernel.org>; Tue, 12 Apr 2022 17:00:40 +0000 (UTC)
Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com
 [209.85.210.180])
 by mx.groups.io with SMTP id smtpd.web08.66.1649782272482839261
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Apr 2022 09:51:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=D/MHuxNz;
 spf=pass (domain: gmail.com, ip: 209.85.210.180,
 mailfrom: ranjitsinhrathod1991@gmail.com)
Received: by mail-pf1-f180.google.com with SMTP id bo5so18008874pfb.4
        for <yocto@lists.yoctoproject.org>;
 Tue, 12 Apr 2022 09:51:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id;
        bh=gnMYgito/Kmr6ybRwOYRTumEnLWjROGVUKeXp80prU4=;
        b=D/MHuxNzBYIp5mJL6td5Vk0nWWgK4SPZN+oH3cPBBkCmVzR+JGqGcgr3rnC6W+p7ON
         +8g6HjdcIQyikkHOIToptIt+QNvPtTmOzjWmKhcvxyAYL9FD0T6YZukiYt1/lFu28pWN
         EIwTyAIWZoapFwg6GqNvyEBKS3BxeAefkG/XvvMHJgM22alUZLwDzLGn8/NwqPwGA7vz
         R4ycjMrl5qaFPiUbiHoDfnI1TOB/pWUm8q6KZirSJeCyNdGl3S0nWQKp3lfHGjVVFTx6
         eKG1KOWvVT5/mV8f5NoaRmPMR+pFRn9mkg1RwNSyASoEZbHhw6b5gtQyrP+DHXl++Wem
         IOVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id;
        bh=gnMYgito/Kmr6ybRwOYRTumEnLWjROGVUKeXp80prU4=;
        b=WGsPlcg1u1ifWvWOH2JmUzqqI+oV6XIL2QkA7qvUxXtvCy68X45BnXNVWCnkKSn6yt
         5k3w7DsEi8PAGKha/G9Iq5uu3/Nm1QczkGIl6pam6B4gulGTeJuMPkFENEyRDOhL2YVZ
         HWoNhCatQRviuy0ADCSqc5E7L8JRkx0kEpq3glCF8tPWIS48fzrhrljOjCmFLzTj+aAh
         Ys3EmOt4DAo/A7n9OPkqNtn7v0MsgdV+LQgYDpX7HCZJlnnbbh3S014P6QLAcpDwXGvM
         5OhZnTNMVzxGTxcj9BBAcBbvQa0ZKvD3VpbNo6MotQA5QpO47JuzKKmcJo7bnhjdJV2L
         3cxQ==
X-Gm-Message-State: AOAM532CAg7oAzER3olTTFC1ZEnoASONe+P/di2LS2npWKHng31QZQF5
	IZF5HsgCR6X3xW+zK4+DKD6aNT19lHI=
X-Google-Smtp-Source: 
 ABdhPJw0Aaxo9ZHlWjOignU5wDCzbMNq6aJP6y+Q/gH2zeHLRHiH2M7NmjIS/MpLMx7CtuXuDpvdUw==
X-Received: by 2002:a63:ec46:0:b0:381:81c4:ebbd with SMTP id
 r6-20020a63ec46000000b0038181c4ebbdmr31307238pgj.534.1649782271480;
        Tue, 12 Apr 2022 09:51:11 -0700 (PDT)
Received: from localhost.localdomain ([150.129.206.209])
        by smtp.gmail.com with ESMTPSA id
 b4-20020a17090a550400b001ca38abb248sm21178pji.53.2022.04.12.09.51.10
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Apr 2022 09:51:10 -0700 (PDT)
From: Ranjitsinh Rathod <ranjitsinhrathod1991@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] samhain.inc: Correct LICENSE to GPL-2.0-only
Date: Tue, 12 Apr 2022 22:20:54 +0530
Message-Id: <20220412165054.7805-1-ranjitsinhrathod1991@gmail.com>
X-Mailer: git-send-email 2.17.1
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Apr 2022 17:00:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56756

It seems below change done manually and so LICENSE variable modified
from GPLv2 to GPL-2.0-or-later. But it should be GPL-2.0-only
Link: https://git.yoctoproject.org/meta-security/commit/?id=c56ae450c93a1383a1ce800a32a6ef2c3fbbae1c

Signed-off-by: Ranjitsinh Rathod <ranjitsinhrathod1991@gmail.com>
---
 recipes-ids/samhain/samhain.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-ids/samhain/samhain.inc b/recipes-ids/samhain/samhain.inc
index 5c1d6f5..df9e215 100644
--- a/recipes-ids/samhain/samhain.inc
+++ b/recipes-ids/samhain/samhain.inc
@@ -1,6 +1,6 @@
 DESCRIPTION = "Provides file integrity checking and log file monitoring/analysis"
 HOMEPAGE    = "http://www.la-samhna.de/samhain/"
-LICENSE     = "GPL-2.0-or-later"
+LICENSE     = "GPL-2.0-only"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=8ca43cbc842c2336e835926c2166c28b"
 
 PV = "4.4.7"
-- 
2.17.1


