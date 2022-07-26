Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95886C00144
	for <webhook@archiver.kernel.org>; Tue, 26 Jul 2022 23:40:26 +0000 (UTC)
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com
 [209.85.216.50])
 by mx.groups.io with SMTP id smtpd.web09.13816.1658878815696356438
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Jul 2022 16:40:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=RQSBybk6;
 spf=pass (domain: gmail.com, ip: 209.85.216.50,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f50.google.com with SMTP id y1so6668466pja.4
        for <yocto@lists.yoctoproject.org>;
 Tue, 26 Jul 2022 16:40:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hm4oOfnwrddCHLCgl3R0uwpwHelOwUSIsa6ggUTNt74=;
        b=RQSBybk6kguT1/1B71sQS06KG5ef18J0Crl3OdQTsUEF9nWPcVKQXa7WQIOx2AmmsQ
         WSpDwI9VbyXpaERYomINVANi4Mrf9sXd0or9LBqkTEH9MPlrVOeqzh/LM5qPR6Ifl2Iv
         LnzSY+8HKedng6abo/KRACau3moAsxtinFQ3iSzg9yOhXYs1YpMsAxFqBSl34XNm5eer
         6xh1gsZj5/4FunzyxrnOdTQbku2hAT6+Wzco/dDorLKKTU2RMHj/BJP+enwIVSsXDeYM
         KTY+ZGQ937oNAxI4CWXZJ61IzwtRdKco+0SAIpHPW5IIXDjFp/1jgSwBYzg8y2iLbD+F
         /gZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hm4oOfnwrddCHLCgl3R0uwpwHelOwUSIsa6ggUTNt74=;
        b=ijXu9RI6tPc517JFkCIOkcjkYaJiOmORzWYZ19suZhs4ZkziITxLgTbcvctEYocpXI
         u5kr5ZD82U8qFlcwOfAhYNGCNYIzokVHViQLbuSYZD9xoHDQOspiW2Uz9l+X7vh8FcBZ
         WnW27oMvoD4djkFcn74qpEf1zhpahvuVsq9gLxZkE8T0sRDHa++1ysT1NY+Sydw2jqTU
         g5N7rAX4FfO5p2qcEcNsZPUJXvYXeXGD4v02jlUv2hitZw2ppBDxTX8cgTWWlCatGsJK
         bKR3r/kZUas6Gau/akeND+oiupfuWIHKKfpSYaocdGSb0zx8cHmeU7pljSwkMd1CoW6B
         DoiA==
X-Gm-Message-State: AJIora+dQ0ffKx0m4eDAXrC5/ibDL1dEpizL4YK8WzXBJgKixRguN71L
	Rz5vUl1Nx1YkYQRETHVmG39uJwbW8bQ=
X-Google-Smtp-Source: 
 AGRyM1suh1rCdEb5JsmPD7xr58e4VRDwgqdrTZv5keJysV1sC1RFKa1qau3W11ZTi+LB1h4JBJGtsQ==
X-Received: by 2002:a17:90b:2407:b0:1ec:dd93:511a with SMTP id
 nr7-20020a17090b240700b001ecdd93511amr1434227pjb.212.1658878814519;
        Tue, 26 Jul 2022 16:40:14 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:a211:631e:5cf7:f234])
        by smtp.gmail.com with ESMTPSA id
 n2-20020a170902d2c200b0016c2cdea409sm12166280plc.280.2022.07.26.16.40.12
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Jul 2022 16:40:13 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] packagegroup-security-tpm: add libhoth to pkg
 grp
Date: Tue, 26 Jul 2022 16:40:11 -0700
Message-Id: <20220726234011.1792410-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Jul 2022 23:40:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57649

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb
index 7ba5004..a1d4d44 100644
--- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm.bb
@@ -14,6 +14,7 @@ RDEPENDS:packagegroup-security-tpm = " \
     pcr-extend \
     tpm-quote-tools \
     swtpm \
+    libhoth \
     openssl-tpm-engine \
     ${X86_TPM_MODULES} \
     "
-- 
2.25.1


