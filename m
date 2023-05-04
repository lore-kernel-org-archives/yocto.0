Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DFB4EC77B73
	for <webhook@archiver.kernel.org>; Thu,  4 May 2023 21:11:49 +0000 (UTC)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com [209.85.219.181])
 by mx.groups.io with SMTP id smtpd.web11.6646.1683234704556763893
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 May 2023 14:11:44 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=jOz0OVfT;
 spf=pass (domain: gmail.com, ip: 209.85.219.181, mailfrom: akuster808@gmail.com)
Received: by mail-yb1-f181.google.com with SMTP id 3f1490d57ef6-b9d881ad689so1306949276.2
        for <yocto@lists.yoctoproject.org>; Thu, 04 May 2023 14:11:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683234703; x=1685826703;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=A36XhqtohLfvqNss/iNr7E3huqqTr1BKu8x6q3I01fU=;
        b=jOz0OVfTpVPnY4oJ/uMryXrln1rV99Xs1sqVoanyvRX3BpLkKZ+1dCSJTNavfolp/k
         /s8OV5W4lHCLIdHpcvwbrtAWWn5ImL5+VPHjcmTcUAGuL3mlWiyPZcWua+ylO5x4i2wL
         dwnmgSKqn7TqDg3qh7vAaUswf0E55NjBYGq7B+tiMNzB+/x/wlFIiUqfQ5Yb92BhoYEA
         o40O8on/U2igtBiWzXBcuDCoQJzkvkNM9GiXWT2YZKoS2YtBCyOOweysM+Du6vw5GTsY
         2rKQs/MaIXPxBsvtwEdARAaXgKuFDrOieMNLMVNqWy2a+tej7ZhPOPvjCDC8TnbCVGiX
         TEUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683234703; x=1685826703;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A36XhqtohLfvqNss/iNr7E3huqqTr1BKu8x6q3I01fU=;
        b=YJMKuRJcD6rZxH+EiItK0O5oVX/irdYPfniywtOLEhChsQRM3p7m59lBz9/USLKxUY
         +OEE3r8tSp3qfjD8LE5/iqAhafcSDD25nPT5Se/Fz8zH3MpZrXPWtpkJbKhsTiJBR07A
         JOn2BUd8bdQPT2EizZLfehJAj75keRDwB61Z9pUi2Swlf5TSfAP7ECupQ7vsjSX5/qJd
         y3xhYmB/YX5r9mNBEFwkyaOv4Mn2BmwmBGxFtNEiqOskOVnQslei5g4tOOaro1txEZ0Q
         VINnIsfda1QP0P9HEmGDOrsTFaffnYeGsPN9A2+firw9n2l8n3KcRLTAVx9leesryUes
         apYw==
X-Gm-Message-State: AC+VfDwjs8Kw9wtu8bQhaVXzL2inQgV9jws8KtK7T3P1XIZxVi9YPfer
	FpvLCG66n1HMvKLXYCYWnPgvyFVd4GI=
X-Google-Smtp-Source: ACHHUZ6kNr+dq5DB+kbsvuNd4U/QCTtG2gFLBewfye/UyXAxhtTUK7c+Dvuv1ssVoXk62Nikki1PKA==
X-Received: by 2002:a25:d83:0:b0:b9a:7df5:4f26 with SMTP id 125-20020a250d83000000b00b9a7df54f26mr1474758ybn.30.1683234703431;
        Thu, 04 May 2023 14:11:43 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:69fd:2a51:b06e:e5d5])
        by smtp.gmail.com with ESMTPSA id a81-20020a251a54000000b00b7767ca749esm41781yba.59.2023.05.04.14.11.42
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 May 2023 14:11:43 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] packagegroup-security-tpm2: restore pkgs removed earlier
Date: Thu,  4 May 2023 17:11:42 -0400
Message-Id: <20230504211142.3215242-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 May 2023 21:11:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59883

commit: 0594aee packagegroup-security-tpm2.bb: remove dynamic pkgs

is causing an issue with some users. Restore the packages and opted
to fix via PACKAGE_ARCH = "${TUNE_PKGARCH}"

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-core/packagegroup/packagegroup-security-tpm2.bb  | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
index fb36fab..fb0105e 100644
--- a/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
+++ b/meta-tpm/recipes-core/packagegroup/packagegroup-security-tpm2.bb
@@ -3,6 +3,8 @@ LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302 \
                     file://${COREBASE}/meta/COPYING.MIT;md5=3da9cfbcb788c80a0384361b4de20420"
 
+PACKAGE_ARCH = "${TUNE_PKGARCH}"
+
 inherit packagegroup
 
 PACKAGES = "${PN}"
@@ -12,6 +14,9 @@ RDEPENDS:packagegroup-security-tpm2 = " \
     tpm2-tools \
     trousers \
     tpm2-tss \
+    libtss2-mu \
+    libtss2-tcti-device \
+    libtss2-tcti-mssim \
     libtss2 \
     tpm2-abrmd \
     tpm2-pkcs11 \
-- 
2.25.1


