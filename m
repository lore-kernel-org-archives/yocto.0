Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1B82EB64DA
	for <webhook@archiver.kernel.org>; Fri, 30 Jun 2023 11:17:07 +0000 (UTC)
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
 by mx.groups.io with SMTP id smtpd.web11.9436.1688123824467666067
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Jun 2023 04:17:04 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=JggukIRM;
 spf=pass (domain: gmail.com, ip: 209.85.128.177, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-5768a7e3adbso25397307b3.0
        for <yocto@lists.yoctoproject.org>; Fri, 30 Jun 2023 04:17:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1688123823; x=1690715823;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WYFHzjCo07+p6thoBMK1F9anNxJNV0Bk+521VOeudIs=;
        b=JggukIRMDX/l6tBmhsMWX5MoDQ2rIb/C9USW2fmaxgswOwOtEExHnPF7Iv8UIBqHsx
         ru6sREVeRK0TgCSdoLhubkDuLH25dhDyMRff58Nd76SMOS+2Xp7WY0WtMMf1Py4bfzLD
         dsVjGC9VpHKD5BH86bBjdJEC6q4CT1k2GKULXVUa4lAP5J0hDrHLhxMMX24TR9M66FEJ
         CvklaE+r0BCTkJhmn0tcZXfpj1SxjzsC5ChuhDayYMVz3rgDU+ZOmxqDTqTx2ckZpHj3
         xw2V4pU2/8PiTouKNBEIQu1XHbDncw0vLZenBA9puOYrt3oafKS7XV69J2duMutgSrf2
         9Z+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688123823; x=1690715823;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WYFHzjCo07+p6thoBMK1F9anNxJNV0Bk+521VOeudIs=;
        b=iYVjG+0XqzmZD1YdEpC3/qkCXhDW6k3PaZgJf91qBh+ndLAHJGox+uqWpUVI92nL07
         BwwWXfYxBGb8FtZRW0nWA89qoDasGkzDcwkOwSaDINQFk6LtiteZxVxCAPCXhtVVqBoE
         WFyjEZ6ay1yGiF0EgMxwA6BGqpC7RKpPKTNRy7La7W1C3Dqqq9geDz42RgAyW1yi5naa
         73lLkJp1hJQ2sLot6tdq8LuQa/CtiyioRSUzAh42iwjtigtQyCzSDDH/6Twl2LFXWXtA
         Ne0S/vaHqkdrEW3oIGDaCB2GXUJAisk90xqHrd/wQ0eSBJN819PBazxWnhcX/XeSmU42
         Wnuw==
X-Gm-Message-State: ABy/qLZ1OYaW3wmt37wRi4soCvjEXUdPgtFK/jz5cvByYXP2syMAyhaz
	jvOaNpkBIO96d7GpHaCz62zn5e+eMQY=
X-Google-Smtp-Source: APBJJlEse6TnxbDiIFtWuHTrYuS3IzddyvG+rWxQPmI5LlFSX4RV7hyf2hvHwlwJUFmsygVai5RxUQ==
X-Received: by 2002:a0d:ea4e:0:b0:56d:a5a:3c00 with SMTP id t75-20020a0dea4e000000b0056d0a5a3c00mr2479276ywe.17.1688123823411;
        Fri, 30 Jun 2023 04:17:03 -0700 (PDT)
Received: from keaua.caveonetworks.com ([2600:1700:9190:ba10:44a4:faf8:9b66:580c])
        by smtp.gmail.com with ESMTPSA id a63-20020a818a42000000b0056cd44f9f23sm3333121ywg.63.2023.06.30.04.17.02
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jun 2023 04:17:03 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] firejail: only allow x86-64 and arm64 to build
Date: Fri, 30 Jun 2023 07:17:01 -0400
Message-Id: <20230630111701.3095931-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230630111701.3095931-1-akuster808@gmail.com>
References: <20230630111701.3095931-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 30 Jun 2023 11:17:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60485

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/Firejail/firejail_0.9.72.bb | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-security/Firejail/firejail_0.9.72.bb b/recipes-security/Firejail/firejail_0.9.72.bb
index 12a3105..5713f46 100644
--- a/recipes-security/Firejail/firejail_0.9.72.bb
+++ b/recipes-security/Firejail/firejail_0.9.72.bb
@@ -59,6 +59,7 @@ pkg_postinst_ontarget:${PN} () {
     ${libdir}/${BPN}/fseccomp memory-deny-write-execute ${libdir}/${BPN}/seccomp.mdwx
 }
 
-COMPATIBLE_MACHINE:mips64 = "(!.*mips64).*"
+COMPATIBLE_MACHINE:x86_64 = "x86_64"
+COMPATIBLE_MACHINE:arm64 = "arch64"
 
 RDEPENDS:${PN} = "bash"
-- 
2.34.1


