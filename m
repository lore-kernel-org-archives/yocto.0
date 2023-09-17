Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F15A0CD37B3
	for <webhook@archiver.kernel.org>; Sun, 17 Sep 2023 14:26:01 +0000 (UTC)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
 by mx.groups.io with SMTP id smtpd.web10.30519.1694960752843124966
 for <yocto@lists.yoctoproject.org>;
 Sun, 17 Sep 2023 07:25:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=j0DcUKfG;
 spf=pass (domain: gmail.com, ip: 209.85.219.172, mailfrom: akuster808@gmail.com)
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-d7ecdb99b7aso3516168276.3
        for <yocto@lists.yoctoproject.org>; Sun, 17 Sep 2023 07:25:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1694960752; x=1695565552; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=ls2OmJu3ib31vw0ifrMLGkCZuVFb3jcitNL4isUknNQ=;
        b=j0DcUKfGToEgN0Q0JQS+9oimZf7qw5gDfh1e23RPN2vyoT2wGRP0910H94Pluv0yot
         TuiBaK4Od+uXTFxtJx4dYyahwMCh2vWe9fAc3zwSOrzgLUUvobpk5E/gUBunXGlLyxCZ
         VNinih7ub1dUnUFFsNd4HzjsRazY8MsZZEgjrGhfJmQ2wUFVfatyDvej4WHYWYkBG7H9
         D0lXQD7i33betpJNv5DDZnLYhXlbD2sxwau3ZCwlwTAQ2fA+ywmUp1B/wkVScNkuCyqj
         ywxpNzXzGJYo1kDQ9KYi1QHrLin7FKrbdkxatSvrNhBOvcDHcdkCtAaiyKezhn05oM92
         nGvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694960752; x=1695565552;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ls2OmJu3ib31vw0ifrMLGkCZuVFb3jcitNL4isUknNQ=;
        b=VVljZgp9bpbJmhq51yUPayijjkPzIABCLp+d0gyVZfoxJ4p2bY4p0fwg/IDZB467ff
         W0WXIWymkkEE+qFmaTQRBFWImD0lqROsAGm/2ThRB2OFFSDojWr1c7U67Q0MV5YdT5IA
         VGFJo8hpZvzkMGej/RjEo0Vm/Eap6lE/z4jqoJXCP/YdD0z5DtaUJS3TQdtfkhJodzw+
         O+bLWCDnP4gfUBUmhxAebqPwAHRtNjPy3id6mVRlOGZEz0Ebin4GxrFkI/LlOe+PkaSo
         P+5jThoV0bCmSx44h7PHGT6D2EmSEqcBWb+gLP3rQVRR7am1lIeO98NwmtU1PIlSyZcQ
         ySAw==
X-Gm-Message-State: AOJu0YyHLh6KdRgHpXnsP6yXhIZNmxuBXCSSwWfHU2LIdJ8qcv6PRP0P
	wagDo9hpu3I0h3Gu0Wx11CkcBMJA3lQ=
X-Google-Smtp-Source: AGHT+IEBjI380bwCF2XtyLaaXVm4FgqZHtiR3CeCx+N5eErW2j2J1Opu9okjjwr15Zy/NJgqI2MvmQ==
X-Received: by 2002:a25:a2c2:0:b0:d7b:97e0:14ab with SMTP id c2-20020a25a2c2000000b00d7b97e014abmr6093920ybn.57.1694960751793;
        Sun, 17 Sep 2023 07:25:51 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:4e35:d93b:c59b:af5c])
        by smtp.gmail.com with ESMTPSA id l26-20020a25b31a000000b00d7745e2bb19sm1759614ybj.29.2023.09.17.07.25.51
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 17 Sep 2023 07:25:51 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] sssd: Update to 2.9.2
Date: Sun, 17 Sep 2023 10:25:50 -0400
Message-Id: <20230917142550.2848509-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 17 Sep 2023 14:26:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61023

fixes musl build regarding time structs.

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../recipes-security/sssd/{sssd_2.9.1.bb => sssd_2.9.2.bb}    | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)
 rename dynamic-layers/networking-layer/recipes-security/sssd/{sssd_2.9.1.bb => sssd_2.9.2.bb} (97%)

diff --git a/dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.9.1.bb b/dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.9.2.bb
similarity index 97%
rename from dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.9.1.bb
rename to dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.9.2.bb
index 9fa9d3b..d61471c 100644
--- a/dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.9.1.bb
+++ b/dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.9.2.bb
@@ -26,8 +26,7 @@ SRC_URI = "https://github.com/SSSD/sssd/releases/download/${PV}/${BP}.tar.gz \
            file://musl_fixup.patch \
            file://0001-sssctl-add-error-analyzer.patch \
            "
-
-SRC_URI[sha256sum] = "97703d38159994a869aad1c852de4582c76f189cf044f51e15ba26e1e4b75298"
+SRC_URI[sha256sum] = "827bc65d64132410e6dd3df003f04829d60387ec30e72b2d4e22d93bb6f762ba"
 
 UPSTREAM_CHECK_URI = "https://github.com/SSSD/${BPN}/releases"
 
@@ -81,6 +80,7 @@ do_configure:prepend() {
 }
 
 do_compile:prepend () {
+     sed -i -e "s/__useconds_t/useconds_t/g" ${S}/src/tools/tools_mc_util.c
      echo '#define NSUPDATE_PATH "${bindir}"' >> ${B}/config.h
 }
 do_install () {
-- 
2.34.1


