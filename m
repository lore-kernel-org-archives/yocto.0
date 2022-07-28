Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B2B2C19F2A
	for <webhook@archiver.kernel.org>; Thu, 28 Jul 2022 22:18:09 +0000 (UTC)
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com
 [209.85.214.174])
 by mx.groups.io with SMTP id smtpd.web12.1498.1659046679814903617
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 15:17:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nElEZQ7j;
 spf=pass (domain: gmail.com, ip: 209.85.214.174,
 mailfrom: akuster808@gmail.com)
Received: by mail-pl1-f174.google.com with SMTP id y15so2960485plp.10
        for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 15:17:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=F83rLVRh13xq8kFhxiW1cSGNJqleGvcn6gKJS1tnfhg=;
        b=nElEZQ7jgtwjwDixS9tVpDdIO5n9l7XPhMKaeOwwWTxUe+5fVs3YO6q3o6HA6RAc4+
         PS3/r/2E0tZuhx3KnF+pydyTU0YSrLiLFsZDqx/iiZFuNN7jIcrj51Z4UyIy6lYI5N2r
         5sFIGezJo3j9IzR7LyrcU5cGWItL+qaZr4AHwRf6ELJ0p7k2DcDoFZhc79ORXnuB82gq
         Q4sNH4yoNVs7A/wzZNDx9S7SW4sHedar9zF8F3/yuZg+i0OvwvNnq6SSXOlzr/u8ziDX
         DCgLMT5HvHxO1AusQClzR8xcNKhXLlAMDtaPrPtMOva9KTIVSTCdQ9O/IED6HlM+qAzA
         siDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=F83rLVRh13xq8kFhxiW1cSGNJqleGvcn6gKJS1tnfhg=;
        b=6URVQ/Qm0L5E9XRGrPn2/b4BM+yIors6njLKVR9O1+rT+GnEOrbE7rYsPF9gpGKhDH
         Vn4WOU7j1mdGxDiVTsnrquv6Md/6+54XMwgqDISHlXL1BMoLIdZio1c4geph+q1VOI7y
         RajPfBY+j/iK57U5bmERMza50UqKbUay8Rk/9uzKfPmR9D7/T44MHtnDBwJJRKIwppbQ
         KTGI1/MMafi5emtFJacje5xdbRdjk6axujDM/5giQjODep3yZnZnHWmeKejThV6grJGQ
         HVNEFXsjbbqRTJ4LTR9z7DIYCutpRYLnaqrZNPkfgr4lL1ZzLJYiQPkLC8YhC+76zFn6
         TgQw==
X-Gm-Message-State: ACgBeo2l7/Kt0uI/ahizZOHhMgeiTbK3LQnSM9TzpvwbQasspqlwT1Jt
	gxWw/TnkbgentQLKnX0KZ6AcYgOcuXU=
X-Google-Smtp-Source: 
 AA6agR4IV2KQqArTxJrn9GOW8CJCh4WebIR3hpXtpPHb+UIX2/02Q6tkRNcK7/11Qin43XPfGVYQGw==
X-Received: by 2002:a17:90a:9418:b0:1f1:e251:cabf with SMTP id
 r24-20020a17090a941800b001f1e251cabfmr800372pjo.79.1659046678752;
        Thu, 28 Jul 2022 15:17:58 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:8cdd:3284:a497:445d])
        by smtp.gmail.com with ESMTPSA id
 o4-20020a170902d4c400b0016d22e6ed57sm1829090plg.293.2022.07.28.15.17.57
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jul 2022 15:17:58 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 5/9] tpm2-tools: Add UPSTREAM_CHECK_URI
Date: Thu, 28 Jul 2022 15:17:47 -0700
Message-Id: <20220728221751.48428-5-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728221751.48428-1-akuster808@gmail.com>
References: <20220728221751.48428-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Jul 2022 22:18:09 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57673

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb
index c20af7e..b82fb65 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tools/tpm2-tools_5.2.bb
@@ -10,6 +10,8 @@ SRC_URI = "https://github.com/tpm2-software/${BPN}/releases/download/${PV}/${BPN
 
 SRC_URI[sha256sum] = "c0b402f6a7b3456e8eb2445211e2d41c46c7e769e05fe4d8909ff64119f7a630"
 
+UPSTREAM_CHECK_URI = "https://github.com/tpm2-software/${BPN}/releases"
+
 inherit autotools pkgconfig bash-completion
 
 do_configure:prepend() {
-- 
2.25.1


