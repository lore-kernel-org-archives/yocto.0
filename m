Return-Path: <mhalstead@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 83C27C43334
	for <webhook@archiver.kernel.org>; Fri, 15 Jul 2022 19:33:27 +0000 (UTC)
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com
 [209.85.210.172])
 by mx.groups.io with SMTP id smtpd.web09.990.1657913605707108437
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Jul 2022 12:33:25 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=c7/Hn1MI;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.210.172,
 mailfrom: mhalstead@linuxfoundation.org)
Received: by mail-pf1-f172.google.com with SMTP id w185so5460162pfb.4
        for <yocto@lists.yoctoproject.org>;
 Fri, 15 Jul 2022 12:33:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3RC/cqsx9KwfVZjl+JF91DSzZ6GTekNQTI9/BFBrJCc=;
        b=c7/Hn1MIqMTiHum60Lg8Tw5kQZ1599GVrpuzf/YjTlFCUslFxj+IRnOf51ejruF7cc
         EtrzWKBmve8h4JU/1rfMpZP0KUXFszYlb9+ch8E50A/4EPcQ3c6X9rdFWxFqm9jg9DMF
         4y3g2YIcfvUM5hYSJxbTv/ErfsmpiilDShwhg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3RC/cqsx9KwfVZjl+JF91DSzZ6GTekNQTI9/BFBrJCc=;
        b=25D6yKhj3mztaY6F4+qR8soJmRSTbLz9iOUq3vnSu6226D26n2xi5TMlqdoWrk5D8x
         aN7YhCF1P2lSCDRo8bgReKnJtxoW/AImZpIr3vfwEkw6JkwDzJRSW/hpK1Uok9hBBvtA
         Nfg8SQhkL3D7Cv8/Pdxu4827KVedqaWawfKPBmNPFUGbT+JTwPIQxAcxGRVZ0qtxntTF
         Vr8wPDy+k7nV5LAkKL69JjRz1gKAEdr7bg+NCm9ePkk0kQebZIYD86YPRLQmvGROGRFS
         D7EOpmipyOmN78U3h7EsydXr6RNovJBBUyP0Kz1jy3uSu6YG+bBOBJe0HLlOsGiZnDOl
         uaBw==
X-Gm-Message-State: AJIora+XByvRJC6XLUcHlDbxpGzO7xwtLOkdcGRd+a4y1Dgm8rBZaxKy
	W+/eYnKGM6tBy7YOlNwaNL1AwQKj9FPAcA==
X-Google-Smtp-Source: 
 AGRyM1vxbqJ8x+xU+l5VKlDjLuSwTYmjCZXIx0rzXVsJlpMpeQxH1yDoQXbXx+hUd1oj2RGYWVScmQ==
X-Received: by 2002:a63:6b49:0:b0:40e:64ef:1be7 with SMTP id
 g70-20020a636b49000000b0040e64ef1be7mr13469824pgc.552.1657913604799;
        Fri, 15 Jul 2022 12:33:24 -0700 (PDT)
Received: from mhalstead-laptop.linuxfoundation.org.beta.tailscale.net
 (97-115-71-176.ptld.qwest.net. [97.115.71.176])
        by smtp.gmail.com with ESMTPSA id
 b193-20020a621bca000000b005251b1fde90sm4224001pfb.219.2022.07.15.12.33.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jul 2022 12:33:24 -0700 (PDT)
From: Michael Halstead <mhalstead@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: richard.purdie@linuxfoundation.org,
	Michael Halstead <mhalstead@linuxfoundation.org>
Subject: [PATCH yocto-autobuilder-helper] config.json: update to dedicated
 domain
Date: Fri, 15 Jul 2022 12:33:04 -0700
Message-Id: <20220715193304.53602-1-mhalstead@linuxfoundation.org>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Jul 2022 19:33:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57554

A dedicated domain for hashserv allows us to move it to dedicated
infrastructre.

Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index ede6117..5f37e77 100644
--- a/config.json
+++ b/config.json
@@ -60,7 +60,7 @@
             "SDK_INCLUDE_TOOLCHAIN = '1'",
             "ESDK_LOCAL_CONF_REMOVE:append = 'BB_HASHSERVE'",
             "BB_DISKMON_DIRS = 'STOPTASKS,${TMPDIR},1G,100K STOPTASKS,${DL_DIR},1G STOPTASKS,${SSTATE_DIR},1G STOPTASKS,/tmp,100M,30K HALT,${TMPDIR},100M,1K HALT,${DL_DIR},100M HALT,${SSTATE_DIR},100M HALT,/tmp,10M,1K'",
-            "BB_HASHSERVE = 'typhoon.yocto.io:8686'",
+            "BB_HASHSERVE = 'hashserv.yocto.io:8686'",
             "RUNQEMU_TMPFS_DIR = '/home/pokybuild/tmp'",
             "BB_HEARTBEAT_EVENT = '60'",
             "BB_LOG_HOST_STAT_ON_INTERVAL = '1'",
-- 
2.36.1


