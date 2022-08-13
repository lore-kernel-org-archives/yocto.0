Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86A9FC19F2D
	for <webhook@archiver.kernel.org>; Sat, 13 Aug 2022 14:00:24 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com
 [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web10.5153.1660399223745333725
 for <yocto@lists.yoctoproject.org>;
 Sat, 13 Aug 2022 07:00:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=iWu+cfxZ;
 spf=pass (domain: gmail.com, ip: 209.85.216.50,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f50.google.com with SMTP id
 t2-20020a17090a4e4200b001f21572f3a4so3230319pjl.0
        for <yocto@lists.yoctoproject.org>;
 Sat, 13 Aug 2022 07:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc;
        bh=azEJ/wlkWV95wZFtJP/05twpRcXDGVZGIhigssa2h0c=;
        b=iWu+cfxZLnBBtrPJFBHtrwFz8Lw4phU0wdlV56BOqDp5TXSeP6JDnBOjShdNC+BL1U
         RNQCsq3rsPwmdBy9sClLRtan5jGUgq8n4KYkSnsF/rcIHHvNfkc2f2ejMZFuzcAYQPAh
         F+i5jEIFsAMSC1X8fGOhHioboebKsIsSPMU+YxZ+ga47p9MNmJKS0TZoJRI6B8D04XkV
         SFIdHIgITWOymIDSOcBW2ZWHITFR8V2q8QOUum+b4KvxiDhlK/Pd82S89F3ZSxOxpLWe
         vCfDjuZpFBWDyMQ2QlbpUf/sblkq4jWXbKQ1fqTYyztW5iadSnuNsOLYnrFEdQh2/lEg
         HyAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc;
        bh=azEJ/wlkWV95wZFtJP/05twpRcXDGVZGIhigssa2h0c=;
        b=ioSPzvRIKZA1TVSQf8SlUapQfXKliMB+EkAq085kSZbDIGedjChy0Deq0EJt45t7ti
         yv3cVbkaNMqq+rpxgtV3vvCtlndBq0HPQB0XUnvaRqLrjrnp0ENS2+r8ryyNTmEGOHUw
         M/WEtcCMfjGAVSbDEoynn/H89pMFKioqa+D7DGNe63CfeDuMP2UoOAqXvCXF7x3D8TNg
         rgtQC1rQL2q7MzKMm9c3rvaAyb1N0C97PD+FN5iM8WAYZ7ahMmP82oS/Vn4I7iYXvvil
         GkDYFDtB/MdsM6KLNdbLmbaDiv/kAHMwSjnRxTMN7bq9hdJlGct+/3lnYb0C/onMU6D6
         4NNA==
X-Gm-Message-State: ACgBeo1BWJ7uumZ0oDpYo11lfu4cXzxWs0H6fIjmXOKWreq2knvn2LT+
	8RbzsvrlZ3csU4HUt2Rtq69g418271s=
X-Google-Smtp-Source: 
 AA6agR6haB557qm+d+vqJLvK+L+d0+bsqceBVxwm0jDhZUyACw/mRUMfWEAsM0blaTJTAKaZvz1xng==
X-Received: by 2002:a17:90b:4c89:b0:1f5:3aee:79d1 with SMTP id
 my9-20020a17090b4c8900b001f53aee79d1mr18913321pjb.195.1660399222558;
        Sat, 13 Aug 2022 07:00:22 -0700 (PDT)
Received: from keaua.caveonetworks.com (c-67-181-203-136.hsd1.ca.comcast.net.
 [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 s3-20020a170903200300b0016a091eb88esm3686462pla.126.2022.08.13.07.00.20
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 13 Aug 2022 07:00:21 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] suricata: fix compile issue
Date: Sat, 13 Aug 2022 06:58:19 -0700
Message-Id: <20220813135819.947310-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 13 Aug 2022 14:00:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57837

make[2]: *** No rule to make target '../rust/target/arm-poky-linux-gnueabi/release/libsuricata.a', needed by 'suricata'

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/suricata/suricata_6.0.6.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-ids/suricata/suricata_6.0.6.bb b/recipes-ids/suricata/suricata_6.0.6.bb
index 35054ef..efa4bdd 100644
--- a/recipes-ids/suricata/suricata_6.0.6.bb
+++ b/recipes-ids/suricata/suricata_6.0.6.bb
@@ -145,6 +145,8 @@ export logdir = "${localstatedir}/log"
 CACHED_CONFIGUREVARS = "ac_cv_func_malloc_0_nonnull=yes ac_cv_func_realloc_0_nonnull=yes"
 
 do_configure:prepend () {
+    # use host for RUST_SURICATA_LIB_XC_DIR
+    sed -i -e 's:host_alias:host:' ${S}/configure.ac
     oe_runconf
 }
 
-- 
2.25.1


