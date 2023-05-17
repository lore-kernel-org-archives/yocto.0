Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2325FC77B7A
	for <webhook@archiver.kernel.org>; Wed, 17 May 2023 17:26:41 +0000 (UTC)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
 by mx.groups.io with SMTP id smtpd.web10.56539.1684344393261184571
 for <yocto@lists.yoctoproject.org>;
 Wed, 17 May 2023 10:26:33 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=rcFZXrdi;
 spf=pass (domain: gmail.com, ip: 209.85.128.169, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-561bb2be5f8so11520317b3.0
        for <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 10:26:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684344392; x=1686936392;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=b8I2uT5JLqwBSR6lGrI9QMN0+xO8ljG8YSbvAON6bRA=;
        b=rcFZXrdiGioj/noq084H7zVgmpEyIYozYqcKHDBpPkHytoiD3FGAH7C20D66kJ19eY
         NFwJrBjpcIUyvf6eixgZwShlE+O8cRb456hzhxPkDu5RgvUiXafVhFvaFkB5GFnfVymq
         JbWVUiJltuFtnMvVWaTxto5FdMzXB1Ead1Oap3S+c20OT6rsFdW40CPYeMjXYhALF7Kp
         Cs3QK+bDrr8eigr55Sg6a4ORr0a+JdR9mbZcQ7supAlHDiluKTaLMOaToVO/Q22Jm7Eq
         7F08MuoFATRqf2BjGN4nwD0NjEuY1LpmJxRmK4pzYm51eLWJ4CM0TxYCF8EDhWSyoIH9
         N0fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684344392; x=1686936392;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=b8I2uT5JLqwBSR6lGrI9QMN0+xO8ljG8YSbvAON6bRA=;
        b=K3iNusn11rrnWUARjLxWWHP10MHrn6SFEu0C/ysOhi9OY+4+dNtUS5A1P4EsIwgJyw
         JqoE58zuCTR7tQzPxz7JMtCjueL5T2ZzrTwRouu3k9xS580X1yAVYtnmG2puJl8W899H
         9sPvpF4XU/Jqy07+3fWf1tbRp0baJZBjl0WkKPFRWSUAWmzQw65h2HQQXyWXRlLW8LBm
         EmRp6lyTGHOWXmyMttQs/1eugBnx3DwR1kBvpO6bdLdHr2kUX/UJXdrTUq7KTrjzv4iE
         HqMw/NXXFXTXTMHPOMG9aDPsDdD9Wo5Fi/NyDONYPmROd39mIb+rwS/lGsJiS5fBDFlZ
         lFGw==
X-Gm-Message-State: AC+VfDx+am2ZGksR+u6KAW1oqmkg8D5n+LuAwAWylThZhjEpWNTp1C2W
	ZKOSZRzp2DEXpX42tUPjlUhFm6LJ63Y=
X-Google-Smtp-Source: ACHHUZ4/B/yUiHYTVeet/Yb8D3IJ19/FsgLxxxA9Y63MlDlZBUgWMzj+H5YBAdUSYfTwJWJg75JLkA==
X-Received: by 2002:a0d:ff81:0:b0:55d:de9e:d913 with SMTP id p123-20020a0dff81000000b0055dde9ed913mr37947307ywf.42.1684344392070;
        Wed, 17 May 2023 10:26:32 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:618a:deaa:d52c:9d63])
        by smtp.gmail.com with ESMTPSA id m6-20020a819e06000000b005611de826bdsm784769ywj.86.2023.05.17.10.26.31
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 10:26:31 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 1/2] samhain: Update to 4.4.10
Date: Wed, 17 May 2023 13:26:29 -0400
Message-Id: <20230517172630.3538600-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 May 2023 17:26:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60043

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-ids/samhain/samhain.inc | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-ids/samhain/samhain.inc b/recipes-ids/samhain/samhain.inc
index 8967d72..2788bc3 100644
--- a/recipes-ids/samhain/samhain.inc
+++ b/recipes-ids/samhain/samhain.inc
@@ -3,7 +3,7 @@ HOMEPAGE    = "http://www.la-samhna.de/samhain/"
 LICENSE     = "GPL-2.0-only"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=8ca43cbc842c2336e835926c2166c28b"
 
-PV = "4.4.9"
+PV = "4.4.10"
 
 SRC_URI = "https://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
            file://${INITSCRIPT_NAME}.init \
@@ -21,7 +21,7 @@ SRC_URI = "https://la-samhna.de/archive/samhain_signed-${PV}.tar.gz \
            file://samhain-fix-initializer-element-is-not-constant.patch \
            "
 
-SRC_URI[sha256sum] = "dd85bf2f90db3ce616a09608e650f3707a4d69aa1e1fe718f8b359ce0aafc198"
+SRC_URI[sha256sum] = "ae6ee8eff3cb111b7fc14a57bcc258443dd0bcf1bfacfdf229935ed053c1ce3d"
 
 UPSTREAM_CHECK_URI = "https://www.la-samhna.de/samhain/archive.html"
 UPSTREAM_CHECK_REGEX = "samhain_signed-(?P<pver>(\d+(\.\d+)+))\.tar"
-- 
2.25.1


