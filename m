Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F6EC433FE
	for <webhook@archiver.kernel.org>; Fri, 30 Sep 2022 11:51:38 +0000 (UTC)
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com
 [209.85.218.50])
 by mx.groups.io with SMTP id smtpd.web08.4775.1664538692187520708
 for <yocto@lists.yoctoproject.org>;
 Fri, 30 Sep 2022 04:51:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=W6CWiF3r;
 spf=pass (domain: gmail.com, ip: 209.85.218.50,
 mailfrom: martin.jansa@gmail.com)
Received: by mail-ej1-f50.google.com with SMTP id lc7so8571063ejb.0
        for <yocto@lists.yoctoproject.org>;
 Fri, 30 Sep 2022 04:51:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=LP94e09v4PyVUr31sLjyDfF1BFW5MgMhyzYIr8J7Y50=;
        b=W6CWiF3r5+0UO5KEwzgkDaYrSBla3czxKj/NOwUb8KtEw7AINkorNSqOW2x9Y25Hck
         9OdtCfOzcN3+Lm9FTZPC9WgO1SnEC4XOoYStwnr+NxkbH2zr9cFP2wkCkahu/yxeOCu8
         h5HYKNpSz1pDMgiFFos35pRK7AHCFcSol/UU0qWK6u08IM7slzPNiMC7s4YBE24tW1KQ
         VREILfi0A1JLM/VNdLVSpfscCMhAB0npYfUKipt2zoX1a/0K7vE19eY8TSEUd5mwogvI
         mCpgi2BliKXn5eTdxuISLMXDxxsjFqgHG1kw/7vE/2PPg/EgF77FeE7k3Z07DcTY8+5+
         itOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=LP94e09v4PyVUr31sLjyDfF1BFW5MgMhyzYIr8J7Y50=;
        b=AxYTPqGf4FjtBus0psGKb33dkctgqL/tP2KTbyurfH08RRsXfFQKxgE66YcvlAB+N5
         /dbpP+H/6FTeyEWcxUME7XTsPr/8Ceix1mGOWSZiih6xXEuR3mPwof01sFI8qSpejIlT
         6z3LGbnWmp6VuQpqYdDCccfDyw+OYbAu4/hUjcvh8lO3bpEhca/bDF+Zt9fyb+WWURQt
         5vk0JEH4QutRAcs/be22y1oYKaTjhK7Y6TeEncxF0NV9BytKDmt13QnXI1l2nOQKnJ2l
         VdyQstPndchFhr1u91MpCtHwW6QUBZyZD59KVgtsEAcAXmCmNhqT6QI3MWts5PeyEjtV
         AlsQ==
X-Gm-Message-State: ACrzQf0UKf7i2IgDHmzgPR2MAggWpPoY01Cpqlx0hRy4UM7mE04rxxPv
	bgFHk6D9ps3KKR8QLv2uGLjkSK7+5qg=
X-Google-Smtp-Source: 
 AMsMyM7weuaumAxS6lTsuX+wcbx/xt+yAEEUMuO8hr9WE5RQWCjQI66q/zaYcDljnwSi1ZnVsIq65g==
X-Received: by 2002:a17:907:d08:b0:72f:b107:c07a with SMTP id
 gn8-20020a1709070d0800b0072fb107c07amr6157204ejc.340.1664538690509;
        Fri, 30 Sep 2022 04:51:30 -0700 (PDT)
Received: from localhost (ip-109-238-218-228.aim-net.cz. [109.238.218.228])
        by smtp.gmail.com with ESMTPSA id
 mx16-20020a1709065a1000b007341663d7ddsm1083981ejc.96.2022.09.30.04.51.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Sep 2022 04:51:29 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: twoerner@gmail.com,
	Martin Jansa <Martin.Jansa@gmail.com>
Subject: [meta-rockchip][PATCH] layer.conf: update LAYERSERIES_COMPAT for
 langdale
Date: Fri, 30 Sep 2022 13:51:25 +0200
Message-Id: <20220930115125.906161-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 30 Sep 2022 11:51:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58229

* the next release 4.2 will be named mickledore

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 conf/layer.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index a2661f9..9197c3b 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -14,7 +14,7 @@ BBFILE_PRIORITY_rockchip = "1"
 # This should only be incremented on significant changes that will
 # cause compatibility issues with other layers
 LAYERVERSION_rockchip = "1"
-LAYERSERIES_COMPAT_rockchip = "kirkstone"
+LAYERSERIES_COMPAT_rockchip = "langdale"
 LAYERDEPENDS_rockchip = "core meta-arm"
 
 BBFILES_DYNAMIC += " \
-- 
2.37.3


