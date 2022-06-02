Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB14AC43334
	for <webhook@archiver.kernel.org>; Thu,  2 Jun 2022 15:57:13 +0000 (UTC)
Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com
 [209.85.216.41])
 by mx.groups.io with SMTP id smtpd.web12.835.1654185426409310149
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Jun 2022 08:57:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=akzWZtI2;
 spf=pass (domain: gmail.com, ip: 209.85.216.41,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f41.google.com with SMTP id e24so5333729pjt.0
        for <yocto@lists.yoctoproject.org>;
 Thu, 02 Jun 2022 08:57:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=7yQgloVTImGF+Yn1KORE+ABVDRe4/u0eXooKv3dcHkc=;
        b=akzWZtI2AzqUdPFWveS6egzrPGB4MCJHLvcndmkCJGXdEYFgo3V7PqiSEzt4nTwoiR
         Q1O9US5ITOh4HSsmLfGUQ2uy2WA9dnUAIPEd83FvwNvFmJi57pmkDcMJQKStQDnGlJnZ
         xzZ/LhWYwNEcH5w6HvUFc20sxTyBWbVUToo0TulWXFn6LumKjHIkynXrFI7VVa9yPET3
         nxpbbrES4a1AA1zB/T79H4qE2leyYr0b7Jh0/RLhRGlC0fatDH5zBRZ7qrkryDBji/Lj
         USQQFwY1GT8Iqt16rpQ+FuWJvYxP+yLtoUGcYNNmWp4D96J6R0ib/g/XGTC53X4s56bV
         IIYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7yQgloVTImGF+Yn1KORE+ABVDRe4/u0eXooKv3dcHkc=;
        b=QvITNWIvW3oBoV6dp49/JAW1nYR8YIwmKpvzmsabmifx0A2yxabIFOWfbRELlSZnk/
         oduT/eh/LxF1MQBpiN/G9Dg3aZtQqgeKOM7Z7VHF8le1snIyEsC9UbBqGBqHa4St/JOP
         64OpTfphDLiP0R73gA/1DUSmRc66+HNwtgHQw67W0q4WH8WvjDdXPc5lmU4PMaiWUzBt
         Zsby0f2Tm5tKJPGt+U52nSonQdQivRmGVPE49NX+UmmPZ0dTgebve8EXj9M4RzC8qLKX
         j0rz2yuw7Fmc1dHlwEuxtziZuh7QBVquP3mKXv3GmG2w5fByytuuvgUB8y6qLHSKOg1x
         XShg==
X-Gm-Message-State: AOAM530QfO8tpDDRTo7INVeNqdAv0ci9YGLlxkUscGAdB2FSHujcyYln
	kyt4qx65mLSA0WBG0PP8M1OQUe/dCLE=
X-Google-Smtp-Source: 
 ABdhPJwI6N0WWIcSsZvA2yu1bTUuTse5Rkre7QhfSWDY1Mb77dMsrPteHBNfdTpFCm5XDZQKpwlejw==
X-Received: by 2002:a17:90b:2245:b0:1e0:6ad6:33c with SMTP id
 hk5-20020a17090b224500b001e06ad6033cmr5993112pjb.86.1654185425402;
        Thu, 02 Jun 2022 08:57:05 -0700 (PDT)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:e8e8:b71d:2c05:ffc8])
        by smtp.gmail.com with ESMTPSA id
 c14-20020a170902c2ce00b0015e8d4eb207sm3707996pla.81.2022.06.02.08.57.04
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jun 2022 08:57:04 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] README: Update for dynamic layers
Date: Thu,  2 Jun 2022 08:57:02 -0700
Message-Id: <20220602155702.260918-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220602155702.260918-1-akuster808@gmail.com>
References: <20220602155702.260918-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 Jun 2022 15:57:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57252

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 README | 33 ++++++++++++---------------------
 1 file changed, 12 insertions(+), 21 deletions(-)

diff --git a/README b/README
index 081669f..2d1996b 100644
--- a/README
+++ b/README
@@ -28,20 +28,10 @@ Dependencies
 This layer depends on:
 
   URI: git://git.openembedded.org/openembedded-core
-  branch: master
+  branch: [same one as checked out for this layer]
 
   URI: git://git.openembedded.org/meta-openembedded/meta-oe
-  branch: master
-
-  URI: git://git.openembedded.org/meta-openembedded/meta-perl
-  branch: master
-
-  URI: git://git.openembedded.org/meta-openembedded/meta-python
-  branch: master
-
-  URI: git://git.openembedded.org/meta-openembedded/meta-networking
-  branch: master
-
+  branch: [same one as checked out for this layer]
 
 Adding the security layer to your build
 ========================================
@@ -57,21 +47,22 @@ other layers needed. e.g.:
   BBLAYERS ?= " \
     /path/to/oe-core/meta \
     /path/to/meta-openembedded/meta-oe \
-    /path/to/meta-openembedded/meta-perl \
-    /path/to/meta-openembedded/meta-python \
-    /path/to/meta-openembedded/meta-networking \
     /path/to/layer/meta-security "
 
-Optional Rust dependancy
+Optional Dynamic layer dependancy
 ======================================
-If you want to use the latest Suricata that needs rust, you will need to clone
 
-  URI: https://github.com/meta-rust/meta-rust.git
-  branch: master
+  URI: git://git.openembedded.org/meta-openembedded/meta-oe
+
+  URI: git://git.openembedded.org/meta-openembedded/meta-perl
+
+  URI: git://git.openembedded.org/meta-openembedded/meta-python
 
-  BBLAYERS += "/path/to/layer/meta-rust"
+  BBLAYERS += "/path/to/layer/meta-openembedded/meta-oe"
+  BBLAYERS += "/path/to/layer/meta-openembedded/meta-perl"
+  BBLAYERS += "/path/to/layer/meta-openembedded/meta-python"
 
-This will activate the dynamic-layer mechanism and pull in the newer suricata
+This will activate the dynamic-layer mechanism.
 
 
 
-- 
2.25.1


