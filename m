Return-Path: <jpuhlman@mvista.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 559E2C433F5
	for <webhook@archiver.kernel.org>; Thu, 24 Feb 2022 08:41:34 +0000 (UTC)
Received: from mail-pg1-f181.google.com (mail-pg1-f181.google.com
 [209.85.215.181])
 by mx.groups.io with SMTP id smtpd.web08.8020.1645692092524095793
 for <yocto@lists.yoctoproject.org>;
 Thu, 24 Feb 2022 00:41:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mvista.com header.s=google header.b=YWUdMviU;
 spf=pass (domain: mvista.com, ip: 209.85.215.181,
 mailfrom: jpuhlman@mvista.com)
Received: by mail-pg1-f181.google.com with SMTP id 132so1172847pga.5
        for <yocto@lists.yoctoproject.org>;
 Thu, 24 Feb 2022 00:41:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mvista.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MJE0Uj0IOjYm5fUQdKXPWX4BAG3ljB+m+hPmA1Xhdyo=;
        b=YWUdMviUKrcQCrNtvWbM2x2rbMBXvhnxKiUnx0EuXW/1JcR4wNAWML5H4DCST2Ad9Z
         jNXZadLlUflvWtvjIEFBm0fBtGDULp5S1sh//t7x4vR6JMJLsNVlZjIapAqxu+aO9Q9P
         6i1rEJOwnghY2l0zZIOuYBz48JuaMZFXNK39E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MJE0Uj0IOjYm5fUQdKXPWX4BAG3ljB+m+hPmA1Xhdyo=;
        b=xmASq5MyIUuS+2r87m1xj7vG9D3VDTBXGynVB11JL9cR5VEAFAGdBFDsMdg9ObwXCA
         S9vcHDqAF8GbNZ2IELGqBznxSuAUnGqJQTAV0K0C1NNhA5b9m6flsudiW8Z1yPJnV3Pw
         AmQN+7R+HOlzpdfx7nqdsZJibHHLyB3fWVMOCjNd6KJVX+8Q0PgdMO/Bm6GrVpXMGL15
         wKz+qP7+bTYV89KDIFUzgD+ip8wbuErFd0CP4r9vn3OKWN6J+RNXBUAypNdst2R8xjxi
         oL3pqJxURy+MNHqbe2kGgbLklOYwmAWTEtGGeyg7kLIrYxgiBrY2fDckk49ND9XHUVXS
         DMbg==
X-Gm-Message-State: AOAM532uNUynp3x7+/5qvRpvVFYzStLQ11vtN8Uy48mMQeobvd6CzVrq
	xANVQnoArRhSnVunDNKVRrL8vK4c5bOiKA==
X-Google-Smtp-Source: 
 ABdhPJyolaUUddP6+XG6cnRdQbDdVy5XC5lhTD/qFHgqiomSxGmgivJNdqfyUDvtTAR2zjSf/6AVTA==
X-Received: by 2002:a62:8c44:0:b0:4c4:8072:e588 with SMTP id
 m65-20020a628c44000000b004c48072e588mr1823250pfd.11.1645692091759;
        Thu, 24 Feb 2022 00:41:31 -0800 (PST)
Received: from red (99-14-97-149.lightspeed.frokca.sbcglobal.net.
 [99.14.97.149])
        by smtp.gmail.com with ESMTPSA id
 s5sm2366896pfd.66.2022.02.24.00.41.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Feb 2022 00:41:31 -0800 (PST)
Received: by red (sSMTP sendmail emulation); Thu, 24 Feb 2022 03:41:29 -0500
From: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
To: yocto@lists.yoctoproject.org
Cc: "Jeremy A. Puhlman" <jpuhlman@mvista.com>
Subject: [meta-selinux][PATCH] Update compat to kirkstone
Date: Thu, 24 Feb 2022 03:41:27 -0500
Message-Id: <20220224084128.1220768-1-jpuhlman@mvista.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 24 Feb 2022 08:41:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56275

Signed-off-by: Jeremy A. Puhlman <jpuhlman@mvista.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index d7c80b8..d6f83c9 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -17,7 +17,7 @@ BBFILE_PRIORITY_selinux = "5"
 # cause compatibility issues with other layers
 LAYERVERSION_selinux = "1"
 
-LAYERSERIES_COMPAT_selinux = "honister"
+LAYERSERIES_COMPAT_selinux = "kirkstone"
 
 LAYERDEPENDS_selinux = " \
     core \
-- 
2.33.0


