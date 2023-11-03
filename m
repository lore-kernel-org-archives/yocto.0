Return-Path: <twoerner@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2A5FC4167B
	for <webhook@archiver.kernel.org>; Fri,  3 Nov 2023 15:21:46 +0000 (UTC)
Received: from mail-qk1-f180.google.com (mail-qk1-f180.google.com [209.85.222.180])
 by mx.groups.io with SMTP id smtpd.web11.55344.1699024900678275161
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Nov 2023 08:21:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=R77AcM7q;
 spf=pass (domain: gmail.com, ip: 209.85.222.180, mailfrom: twoerner@gmail.com)
Received: by mail-qk1-f180.google.com with SMTP id af79cd13be357-778a108ae49so264895685a.0
        for <yocto@lists.yoctoproject.org>; Fri, 03 Nov 2023 08:21:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1699024898; x=1699629698; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=ARiUiKrOdwCNub2XNc16UreFbepZt0NshK0ZVNRZSwQ=;
        b=R77AcM7qhGlAslRP3ndCPtB655hhiSL4Qsd8IAB4N7V7qLTRtCuahr5z8o1gRhU6TW
         vtmMu7mwN7Ld0H4HViY2kKxg3eVxYsXTb/IZ8eO5p5WZlTBxNGm2T2Dh9U8RkOe7v74+
         jZrPkiLaV+rxVvWRBjLdPGul/9s4ClhRO6am6YnQZIhgU7xGy3RuFNYASVpHvkkMn8h4
         dpBsksC9+Mz3v/Mgeb4siNe7Ij2T/ORP7N5chcdjqzDXFzx3DZxUbj06/tc/sdBV7gam
         XRpVWCXmyY5bwpnQM8NBO33bEMinqZuASAgVzrLiMFlCcibzsLC29JQunAsppwAorhpO
         ky8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699024898; x=1699629698;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ARiUiKrOdwCNub2XNc16UreFbepZt0NshK0ZVNRZSwQ=;
        b=tYW+tgTSdq6/E/dHif1EpigpAKb9hl7XR4oUnzi9NEF1pmmgKJ24EFQjBYZxEsghUW
         wPPwtKIqmIthF4aouVkRBWXLNtxp0w4K6ZKXyl94P7DYG1FrFGSIGeTM98FIyAnAki2Q
         jlxQbbqRXMcXZEyPttZm7mbh4S/j+axv/fOFJZs6tr4J6RKnWafupujc9lsQPr+D/EpJ
         /1QJNtymGXj6YHSiAbULtESBfwiMMz7653hB85EClTt4dHVEpfB/aExdytpsnTY26xwy
         X9g79clibNMi2zsMAKTSSg+Sp8zJ6BU+SG0JAEnYqa0fUtaTSzh8qTQdSmRhxx++c3/i
         NwnQ==
X-Gm-Message-State: AOJu0YwCpBC4cNXSyWSiRfWjHADoAz3zZbRn99x/t1xoz+VdF1KBqMtZ
	XFiB93X9Xbcqybqaq9uaFh5DHf5v88o=
X-Google-Smtp-Source: AGHT+IGAJLGt1uIztpccpywlE9mnslc8Lx79uUILdiu8v/8k3B69/FB2uZngGHAlkIFTSzznIAYkDg==
X-Received: by 2002:a05:620a:1723:b0:76e:e66c:92f8 with SMTP id az35-20020a05620a172300b0076ee66c92f8mr5389000qkb.8.1699024898491;
        Fri, 03 Nov 2023 08:21:38 -0700 (PDT)
Received: from localhost.localdomain (pppoe-209-91-167-254.vianet.ca. [209.91.167.254])
        by smtp.gmail.com with ESMTPSA id b8-20020a05620a126800b00775ab978009sm812544qkl.36.2023.11.03.08.21.37
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Nov 2023 08:21:37 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-rockchip][PATCH] rkbin:rk3308: pre-cleanup
Date: Fri,  3 Nov 2023 11:21:30 -0400
Message-ID: <20231103152130.9912-1-twoerner@gmail.com>
X-Mailer: git-send-email 2.41.0.327.gaa9166bcc0ba
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 03 Nov 2023 15:21:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61600

Since 2 recipes can provide the same rk3308-specific blobs, switching
between them can potentially cause: "... is trying to install files into a
shared area when those files already exist" errors. Perform a pre-cleanup
in both recipes so they don't step on each others' toes.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 recipes-bsp/rkbin/rk3308-rkbin_git.bb   | 5 +++++
 recipes-bsp/rkbin/rockchip-rkbin_git.bb | 5 +++++
 2 files changed, 10 insertions(+)

diff --git a/recipes-bsp/rkbin/rk3308-rkbin_git.bb b/recipes-bsp/rkbin/rk3308-rkbin_git.bb
index c6b05b242738..65ee136eff7c 100644
--- a/recipes-bsp/rkbin/rk3308-rkbin_git.bb
+++ b/recipes-bsp/rkbin/rk3308-rkbin_git.bb
@@ -26,6 +26,11 @@ PACKAGES = "${PN}"
 ALLOW_EMPTY:${PN} = "1"
 
 do_deploy:rk3308() {
+	# cleanup first
+	rm -f ${DEPLOY_DIR_IMAGE}/bl31-rk3308.elf
+	rm -f ${DEPLOY_DIR_IMAGE}/tee-rk3308.bin
+	rm -f ${DEPLOY_DIR_IMAGE}/ddr-rk3308.bin
+
 	# Prebuilt TF-A
 	install -m 644 ${S}/bin/rk33/rk3308_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3308.elf
 	# Prebuilt OPTEE-OS
diff --git a/recipes-bsp/rkbin/rockchip-rkbin_git.bb b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
index f1609c7a4957..3f842d669c76 100644
--- a/recipes-bsp/rkbin/rockchip-rkbin_git.bb
+++ b/recipes-bsp/rkbin/rockchip-rkbin_git.bb
@@ -27,6 +27,11 @@ PACKAGES = "${PN}"
 ALLOW_EMPTY:${PN} = "1"
 
 do_deploy:rk3308() {
+	# cleanup first
+	rm -f ${DEPLOY_DIR_IMAGE}/bl31-rk3308.elf
+	rm -f ${DEPLOY_DIR_IMAGE}/tee-rk3308.bin
+	rm -f ${DEPLOY_DIR_IMAGE}/ddr-rk3308.bin
+
 	# Prebuilt TF-A
 	install -m 644 ${S}/bin/rk33/rk3308_bl31_v*.elf ${DEPLOYDIR}/bl31-rk3308.elf
 	# Prebuilt OPTEE-OS
-- 
2.41.0.327.gaa9166bcc0ba


