Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8A58FC77B78
	for <webhook@archiver.kernel.org>; Wed,  3 May 2023 21:16:12 +0000 (UTC)
Received: from mail-yw1-f180.google.com (mail-yw1-f180.google.com [209.85.128.180])
 by mx.groups.io with SMTP id smtpd.web10.34182.1683148567571907163
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 May 2023 14:16:07 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=Z6T0gBdm;
 spf=pass (domain: gmail.com, ip: 209.85.128.180, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f180.google.com with SMTP id 00721157ae682-55a10577911so64281627b3.0
        for <yocto@lists.yoctoproject.org>; Wed, 03 May 2023 14:16:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683148566; x=1685740566;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=letcrPYPaNbJvydktkhvduqrNLALqD5w8vW1QMbwkJ8=;
        b=Z6T0gBdmpL4HxO6Uuv0dfk9v43Us1fpxtTM2go2JCODZx/HscgxpXc/2l3hzU+K24h
         lhSdU+hMmAXcMj2oPv24kqHDj0wFlSa+2e9rCXXTCcJu5L795V0XFuJ1rjzDT9O3d2/G
         oVa/nUjnIMaDCG1N51gg5Yx8S1TEsrTSELGtMz2eNT02yb6AqrI67rvLG64W/FWSdSL6
         sdseTfgLBS5z7dY2JaWjwjg5azh13OEBauVhtsPYFT+Vzs4Z/ddDcEb20xAWUYgUR8nw
         AewlngAxckqDJzv3czV6Pd9UFjIfprcQg7jlcvpYC+S4dzw745SB51VVx+5dxbIzl0Gf
         dIrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683148566; x=1685740566;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=letcrPYPaNbJvydktkhvduqrNLALqD5w8vW1QMbwkJ8=;
        b=clgN6wYXsymfcylsDy/ZWqNRp50l8W/hBdAcvXBmQs+VYPi8KBaF7v7dBL+v+F4LQM
         2eEMqp5zRmm+HUiVMwWQzytgFbS3GR2AUHE99zeSccAKr2DDE/LEuNEVM6FqIorKvQwQ
         EwKK4hsBY7K2G2Jo+apwJKr5r80vMPfClyzImVBDXpmsCVb1BiIdJ+EQYBYOqlEpTofr
         rEaS0DjnFA2s6Lg0TG2WbPias0Eo/aEiyV7uaC+urtWABlrT5X8K45uHo83HigU7QvmZ
         EVk1A0X8AgSfASgA4HX8xvIGb0DW2DGJ4yDfGDLYjSovEs6r78YJ4gPJLDhfT4dDA43M
         wFOQ==
X-Gm-Message-State: AC+VfDy6JEOS74MiKdEyNvvHWe9AKdB08LqT/FcEzPl7snb2ia+tzvsR
	MBdMHg11eOW2jNvAsMw/eeMJI0kxuz8=
X-Google-Smtp-Source: ACHHUZ6eJWwwkhMYXslS5iMA0kTBfbKkU4PjKiElzOzG4T/E1ub+EnveRpIJMTFU67V7GWdkJGhY/w==
X-Received: by 2002:a81:7d09:0:b0:55a:37bf:6a2e with SMTP id y9-20020a817d09000000b0055a37bf6a2emr14402486ywc.26.1683148566018;
        Wed, 03 May 2023 14:16:06 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:bd6d:128a:1e7c:110b])
        by smtp.gmail.com with ESMTPSA id n64-20020a817243000000b005569567aac1sm6936214ywc.106.2023.05.03.14.16.05
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 May 2023 14:16:05 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/3] tpm2-tss: drop vendor from PACKAGECONFIG
Date: Wed,  3 May 2023 17:16:03 -0400
Message-Id: <20230503211603.2209701-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230503211603.2209701-1-akuster808@gmail.com>
References: <20230503211603.2209701-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 May 2023 21:16:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59860

fixes:
WARNING: tpm2-tss-4.0.1-r0 do_configure: QA Issue: tpm2-tss: invalid PACKAGECONFIG: vendor [invalid-packageconfig]

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.1.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.1.bb b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.1.bb
index cc7e6ae..6386105 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.1.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_4.0.1.bb
@@ -18,7 +18,7 @@ CVE_PRODUCT = "tpm2_software_stack"
 
 inherit autotools pkgconfig systemd useradd
 
-PACKAGECONFIG ??= "vendor"
+PACKAGECONFIG ??= ""
 PACKAGECONFIG[oxygen] = ",--disable-doxygen-doc, "
 PACKAGECONFIG[fapi] = "--enable-fapi,--disable-fapi,curl json-c util-linux-libuuid "
 PACKAGECONFIG[policy] = "--enable-policy,--disable-policy,json-c util-linux-libuuid "
-- 
2.25.1


