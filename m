Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E0189C7EE2A
	for <webhook@archiver.kernel.org>; Tue,  2 May 2023 11:07:09 +0000 (UTC)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
 by mx.groups.io with SMTP id smtpd.web11.125419.1683025622339036282
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 May 2023 04:07:02 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=luzPdvAJ;
 spf=pass (domain: gmail.com, ip: 209.85.128.169, mailfrom: akuster808@gmail.com)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-55a64f0053fso24479417b3.3
        for <yocto@lists.yoctoproject.org>; Tue, 02 May 2023 04:07:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683025621; x=1685617621;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=CfRKJSiYaZ/MaYCIHuTJFGC2q4tMiUyEYdlcP9BzWcE=;
        b=luzPdvAJAAUffOAbyUW0xOl7kQ/oSEDPtaElf6fA/YdEE8+25iSCjl+67OVHG++I1d
         wLoZ649VYDRacNB44vLPhU1Yg/PTpKNBmYHuzAqHNO0xQleriXPNw9KKyMAePcCY4gx2
         3WDhKvOD8BLw+2K3GHUxHVpl/ONQlQra8/XQmuuGIGlzBrP5+7bn4txIJ3K5s53QpKRG
         LorvoJj391TXdHOxikQ9jycTNoZ2pPNjmFUT+Dv9qhVM0lgCbB6wwaa9wEK9X1zRzLPv
         4Snk904m7bSwRVXhXfZN/V1eZGhBd8M3av+9HgYKWyn2uqC5kOQXFgf5tJMYGaZ/LFQ+
         qOGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683025621; x=1685617621;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CfRKJSiYaZ/MaYCIHuTJFGC2q4tMiUyEYdlcP9BzWcE=;
        b=YGZLZ7UuRrRl16shPcc/17DftZ8I5+LmdL3o0RcGLgdWwFKU+HIdO7168g4/n0dvf5
         a7F8dg3Is9gazJtHK/Ly1cAqk6T1WdIpMJTQsdTgtNs2HnPRvL+f8q/R35I0eW8r0Vqc
         c9/uEthPvm1hYjigoIrahRHfxTIePI00nk+WxvLuAb130oRyPR52rFl6VG5lKT5KENpw
         Ee1UWFQa+LACDZPl9zeG/VFPBqkSiw9Z0VYPtwuMAVON6c2ybFgbNaYHmeuvtts+v0zB
         EUIc1fN0nd7Ier6VM0wo6X1jJigFCDTAM3EQhwjEbs0B/HcXVj13davhIQ9N+7w0+2T8
         AWYQ==
X-Gm-Message-State: AC+VfDyy4QG/KIu0sTYdce0MjH2upzh72dH2kFrCXEKPKxECtjb+mlyL
	SS94Xet3tCWUhmF0fjuqJKAQAF5+z6k=
X-Google-Smtp-Source: ACHHUZ5WIwO/o1H1HAgS+V4dSBC23O4lsPtpJvOZF7+p9eS8w55gsoNuTDFhAVd+62j37snUcYTcnA==
X-Received: by 2002:a81:8351:0:b0:55a:7c7:c756 with SMTP id t78-20020a818351000000b0055a07c7c756mr8747976ywf.31.1683025621241;
        Tue, 02 May 2023 04:07:01 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:aa99:c4d5:88d7:f86c])
        by smtp.gmail.com with ESMTPSA id i20-20020a0ddf14000000b0055aad7d3f34sm14247ywe.142.2023.05.02.04.07.00
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 May 2023 04:07:00 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/2] integrity-image-minimal: adapt QEMU cmdline to new changes
Date: Tue,  2 May 2023 07:06:57 -0400
Message-Id: <20230502110657.2496963-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230502110657.2496963-1-akuster808@gmail.com>
References: <20230502110657.2496963-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 02 May 2023 11:07:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59836

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-integrity/recipes-core/images/integrity-image-minimal.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-integrity/recipes-core/images/integrity-image-minimal.bb b/meta-integrity/recipes-core/images/integrity-image-minimal.bb
index f40e867..5022170 100644
--- a/meta-integrity/recipes-core/images/integrity-image-minimal.bb
+++ b/meta-integrity/recipes-core/images/integrity-image-minimal.bb
@@ -18,4 +18,4 @@ export IMAGE_BASENAME = "integrity-image-minimal"
 
 INHERIT += "ima-evm-rootfs"
 
-QB_KERNEL_CMDLINE_APPEND:append = " ima_appraise=fix ima_policy=tcb ima_policy=appraise_tcb"
+QB_KERNEL_CMDLINE_APPEND:append = " ima_policy=tcb ima_appraise=fix"
-- 
2.25.1


