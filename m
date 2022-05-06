Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF75EC43219
	for <webhook@archiver.kernel.org>; Fri,  6 May 2022 14:32:38 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com
 [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web12.10266.1651847556801584854
 for <yocto@lists.yoctoproject.org>;
 Fri, 06 May 2022 07:32:36 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=C3vLPsbg;
 spf=pass (domain: gmail.com, ip: 209.85.216.44,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id
 z5-20020a17090a468500b001d2bc2743c4so7063288pjf.0
        for <yocto@lists.yoctoproject.org>;
 Fri, 06 May 2022 07:32:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=UXS20a/bAXW3fHxCwPK86Trr1HDUiomhXH0ib8+KVfg=;
        b=C3vLPsbgIFfw+qFBrDTI0b9adseTmRnMZlkanAIpNB/4nfd9kFp/oeqBayfQp5Prxk
         0U7xMxkDkBpGjzMYG+eijZeR5PQOGCUwtGch3EtfCh0ksGUQ/pKlLxSco8cfpD1NXrdC
         xqOBlckStLa+O+VwvkEA/ayFaZHZyQKIqPxiLhfkyg/Y/m3AIg+IsudHUg3FwNYn5xrK
         UbB5wfIF6D32ZLRab4cADIK64FUlFQ57hw7UDzmasbgIjmbX1qQfyRurj/ceShnpMazS
         Fa/g5pSBfHcsSBXduW8bEwMyhT07Y6X8LnGPtsU9jRb5ZrS37r5VIvX9sTYqmhypcoKm
         NZ9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=UXS20a/bAXW3fHxCwPK86Trr1HDUiomhXH0ib8+KVfg=;
        b=zAchfCXLQ6ii2Lgmcfen+m6TfFnPUoO78vmmmcMrX48TlVLRyDSCsjX+Xx74FCDZOX
         dxNzAQHpKpCDeNAagPIys/lbZk30GHl9w64LTic/uXQAKDYA7/1TCwpyrRQUpQmHH4fQ
         lfmt+IBdEj7kDi4AoHLEIIqL0/EiQ4FdMZZ1iHtGYwYr4TBjsv+5+GN43klMDVzyAIsU
         Ofo5xVX02sce26dDycP+pYuWgCjf9ic/1okJT+18pFiUx+Qil/De2dHT9I2GjHGC7KJG
         ocAJH39uF7sJ7DrWfGCmPcvifmzAi2aIJ8XzaNOOpaoGTtL5q+vjwHdTzhOFFORgTyg9
         faUA==
X-Gm-Message-State: AOAM530ySxbddrxYV76ZSbEpZfjiktm29nPSaP8irJnJDpBYGmlB4uo3
	0iQa7PwwSjzo/ecxf53L2h0QRvKnzYav1w==
X-Google-Smtp-Source: 
 ABdhPJxy7udo7s46qKUSXRV4Y0KZG45BUBkUrRA6rCxphNBolkoVDg692KxRRpxbi4HIjAPFYSkwOA==
X-Received: by 2002:a17:902:e54f:b0:15e:b40a:66f1 with SMTP id
 n15-20020a170902e54f00b0015eb40a66f1mr4067000plf.34.1651847556017;
        Fri, 06 May 2022 07:32:36 -0700 (PDT)
Received: from keaua.caveonetworks.com
 ([2601:202:4180:a5c0:c35c:fb08:9ca2:8f49])
        by smtp.gmail.com with ESMTPSA id
 196-20020a6300cd000000b003c14af5060dsm3385322pga.37.2022.05.06.07.32.34
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 May 2022 07:32:35 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/9] packagegroup-core-security: add perl pkgs
 grps
Date: Fri,  6 May 2022 07:32:24 -0700
Message-Id: <20220506143229.2141000-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220506143229.2141000-1-akuster808@gmail.com>
References: <20220506143229.2141000-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 06 May 2022 14:32:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57015

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../packagegroup-core-security.bbappend        | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)
 create mode 100644 dynamic-layers/meta-perl/recipes-core/packagegroup/packagegroup-core-security.bbappend

diff --git a/dynamic-layers/meta-perl/recipes-core/packagegroup/packagegroup-core-security.bbappend b/dynamic-layers/meta-perl/recipes-core/packagegroup/packagegroup-core-security.bbappend
new file mode 100644
index 0000000..475a24d
--- /dev/null
+++ b/dynamic-layers/meta-perl/recipes-core/packagegroup/packagegroup-core-security.bbappend
@@ -0,0 +1,18 @@
+
+
+PACKAGES += "\
+   packagegroup-security-hardening \
+   "
+RDEPENDS:packagegroup-core-security += "\
+   packagegroup-security-hardening \
+   "
+
+SUMMARY:packagegroup-security-hardening = "Security Hardening tools"
+RDEPENDS:packagegroup-security-hardening = " \
+    bastille \
+    "
+
+RDEPENDS:packagegroup-security-scanners += "\
+     nikto \
+     checksecurity \
+     "
-- 
2.25.1


