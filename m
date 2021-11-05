Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7F295C433F5
	for <webhook@archiver.kernel.org>; Fri,  5 Nov 2021 13:25:47 +0000 (UTC)
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com
 [209.85.216.53])
 by mx.groups.io with SMTP id smtpd.web11.5470.1636118746344779912
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Nov 2021 06:25:46 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=qSKERHEE;
 spf=pass (domain: gmail.com, ip: 209.85.216.53,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f53.google.com with SMTP id
 n11-20020a17090a2bcb00b001a1e7a0a6a6so3361047pje.0
        for <yocto@lists.yoctoproject.org>;
 Fri, 05 Nov 2021 06:25:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=u8Pxl+k4NxK7H8OFhfc3sMB3oYek295MxFJeZHT56gg=;
        b=qSKERHEENF/IRu8pCokdvrx5S9mLFxHzEaZt51+0quAa6WQM3Dw5ulq6INuHzlQW3/
         wTt0/tiVqKzHcGG6fLnbbwRngO9VmR+h0ZEvblY9pmzo9+zu1bw/kx8cACxuyVcCPg5u
         zmx40pr8DXgs1Ea+7w1dC9NdCUpoV5o3o4fSO9PmqBBMxjvicSwFtedhZA6ZrK2bSF87
         dD3uH7LYFf4+yYLGzIP2k3UV4S8IVS3M8FrDrc3Xw2AZ3WybCxwS214H7iyfZnx3Pddm
         UDiNv0Nh2Uzmizdv9HYBcavuG1/WcWHzwgJWu9D4vmBmRx+TMG+iLPcn5eLPDo3427jv
         5nPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=u8Pxl+k4NxK7H8OFhfc3sMB3oYek295MxFJeZHT56gg=;
        b=7YOo+xJtE46praKjwWDLiGk1Q0zI8KmzMWI4/ovsLL315qyyesat7zbycjWQwv0D2t
         ndsNcz5SX+ycIRblndI9m/Mr5PIBIPuAjcYCre1Xb3cD/RQzZkir/1m5VDX9DrFLq81I
         KgmnCJWQyKjoWprqJ41pg6TFeTyNN6rMqMocjHdPlpHFcF0cKJx8JpK0ClJMEPbm6U29
         nBfJEZSMOBZCPDx0ebGnJOVXfbVh9/W4ZPzJitDXG/8fX1pLZsnbXJLoenZQwLM8zt2b
         D+YNnomHzvZeUN35+imEhtVR/xKGwvEx5wARGZYVGAzN9LijDCOIRPdy06k8J0WWJEZu
         nqkw==
X-Gm-Message-State: AOAM5307ORPHVhV3dpk6uxZQvV1ggzOUut4uNwBEkJhpFzoFJPx2Egth
	jhm5B+/ynyAdV1yj8u+DgVS6S1nNcwE=
X-Google-Smtp-Source: 
 ABdhPJynOl1Hvtvkzcjixz/1jGhFt6nM/SKT0HKoiPE42/aPAm71bKGag5vgNsFlcDmMo+QAJOTQ6A==
X-Received: by 2002:a17:90b:fd5:: with SMTP id
 gd21mr28697070pjb.37.1636118745629;
        Fri, 05 Nov 2021 06:25:45 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:1036:3e93:cc4e:1fe7])
        by smtp.gmail.com with ESMTPSA id
 s30sm8133126pfg.17.2021.11.05.06.25.45
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Nov 2021 06:25:45 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/3] python3-fail2ban: remove /run
Date: Fri,  5 Nov 2021 06:25:42 -0700
Message-Id: <20211105132542.723232-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211105132542.723232-1-akuster808@gmail.com>
References: <20211105132542.723232-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 05 Nov 2021 13:25:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55249

Fixes:

ERROR: python3-fail2ban-0.11.2-r0 do_package_qa: QA Issue: python3-fail2ban installs files in /run, but it is expected to be empty [empty-dirs]

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/fail2ban/python3-fail2ban_0.11.2.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb b/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
index fcf044a..4e344c8 100644
--- a/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
+++ b/recipes-security/fail2ban/python3-fail2ban_0.11.2.bb
@@ -30,6 +30,7 @@ do_install:append () {
     install -d ${D}/${sysconfdir}/init.d
     install -m 0755 ${WORKDIR}/initd ${D}${sysconfdir}/init.d/fail2ban-server
     chown -R root:root ${D}/${bindir}
+    rm -rf ${D}/run
 }
 
 do_install_ptest:append () {
@@ -40,7 +41,6 @@ do_install_ptest:append () {
     rm -f ${D}${PTEST_PATH}/bin/fail2ban-python
 }
 
-FILES:${PN} += "/run"
 
 INITSCRIPT_PACKAGES = "${PN}"
 INITSCRIPT_NAME = "fail2ban-server"
-- 
2.25.1


