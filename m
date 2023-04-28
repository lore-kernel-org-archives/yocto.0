Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CF3CCC77B61
	for <webhook@archiver.kernel.org>; Fri, 28 Apr 2023 10:34:17 +0000 (UTC)
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
 by mx.groups.io with SMTP id smtpd.web10.16132.1682678051496104091
 for <yocto@lists.yoctoproject.org>;
 Fri, 28 Apr 2023 03:34:11 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=rR3fSQad;
 spf=pass (domain: gmail.com, ip: 209.85.128.178, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-54fb8a8a597so116657977b3.0
        for <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 03:34:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1682678050; x=1685270050;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hyLRXG2dPd/Lx2WykQDUhg7q/iJ4DISe6D3v0/mdpT0=;
        b=rR3fSQadKgPcgMnWzOk60IVjVZhypQVf8tY4iDnNmwLaIsLUA4AlW2B+A8+4ZuNK4b
         OWi95I3JQxldq0/HGikVBOMOPQpD1O6Ji71mirc3Ai1MFHl+c8lNYC1xtuc6iNbPYzte
         VLpEz08rL9GOTk5iNPF49pxQumktDRCCAKie/PfHQIsn8qJWhE79FNvMkcZyhb4q3FaP
         5mVDMqUpkKIvRlM8Bqd8xeFM5xwdCZuV3TZkODmVhB/GAWnWqMhZUPP9DWqwtTNqovXk
         EQDPQ3oZHngAx2L9YuCLZuyX+0RMNMbaDoqCTS5eUZ3VwLHhbROXpiSVqYR1XAw9ww5R
         lSLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682678050; x=1685270050;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hyLRXG2dPd/Lx2WykQDUhg7q/iJ4DISe6D3v0/mdpT0=;
        b=KI5279nL4x3ruz0Bl6867IDHhr1+ibaIQOkMRMP9D1US726cHZf0YgaAe5V2oqhdVA
         Q5N2nP+qIqI7VxC+9IC510B9l2aVyxDmIQqYo9ErTyjSLzBSlkS42d2XlGP2BS38k1AI
         7HVmIy5/pv+hv5BMB2sTL8R0pKLSdlJWZ511ve1YUhYvVGSPNfEE9uJs5ukWXZPd7z9J
         3gG9zxR1Z6shqhFJOeBIVSXJ9A3Cnva2PRBEGzBR5YXQWTDYHwXkMj1VfSZV25tfdTjh
         BlPKjU+CRu8xBEGOBXZGWiLPL3ViL4s0/8UCyTTfPc9AaqtQW84c0D998NlMPGgexg/8
         4ILA==
X-Gm-Message-State: AC+VfDwlla6gqz/W+qdYA3V6/Sf4rVnLKArr4eDIeRgUsb0pJa6v/avu
	ewyOXff4DJdXojvrgW4ktYkxL8+TGR8=
X-Google-Smtp-Source: ACHHUZ4aBC7KY+C4rIoIutv562IAG7gAlbXDYWqXlTyldfWBOrPTjaadK02OdvDmf/dbt12bee2nyQ==
X-Received: by 2002:a81:6c44:0:b0:54f:bb39:792b with SMTP id h65-20020a816c44000000b0054fbb39792bmr3665702ywc.26.1682678048913;
        Fri, 28 Apr 2023 03:34:08 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:8746:fc43:c0f0:c757])
        by smtp.gmail.com with ESMTPSA id b124-20020a0dd982000000b0054f6f2d291dsm5414129ywe.34.2023.04.28.03.34.07
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Apr 2023 03:34:07 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 4/4] fscryptctl: update to 1.0.1
Date: Fri, 28 Apr 2023 06:34:02 -0400
Message-Id: <20230428103402.1022697-4-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230428103402.1022697-1-akuster808@gmail.com>
References: <20230428103402.1022697-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 28 Apr 2023 10:34:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59794

Don't build man as it needs pandoc

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../{fscryptctl_1.0.0.bb => fscryptctl_1.1.0.bb}           | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)
 rename recipes-security/fscryptctl/{fscryptctl_1.0.0.bb => fscryptctl_1.1.0.bb} (84%)

diff --git a/recipes-security/fscryptctl/fscryptctl_1.0.0.bb b/recipes-security/fscryptctl/fscryptctl_1.1.0.bb
similarity index 84%
rename from recipes-security/fscryptctl/fscryptctl_1.0.0.bb
rename to recipes-security/fscryptctl/fscryptctl_1.1.0.bb
index d319e48..3de2bfa 100644
--- a/recipes-security/fscryptctl/fscryptctl_1.0.0.bb
+++ b/recipes-security/fscryptctl/fscryptctl_1.1.0.bb
@@ -9,11 +9,16 @@ SECTION = "base"
 LICENSE = "Apache-2.0"
 LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
 
-SRCREV = "56b898c896240328adef7407090215abbe9ee03d"
+SRCREV = "7c80c73c084ce9ea49a03b814dac7a82fd7b4c23"
 SRC_URI = "git://github.com/google/fscryptctl.git;branch=master;protocol=https"
 
 S = "${WORKDIR}/git"
 
+do_compile:prepend() {
+    sed -i 's/fscryptctl\.1//g' ${S}/Makefile
+    sed -i 's/install-man//g' ${S}/Makefile
+}
+
 do_install() {
     oe_runmake DESTDIR=${D} PREFIX=/usr install
 }
-- 
2.25.1


