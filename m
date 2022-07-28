Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A280FC48BE4
	for <webhook@archiver.kernel.org>; Thu, 28 Jul 2022 22:17:59 +0000 (UTC)
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com
 [209.85.210.181])
 by mx.groups.io with SMTP id smtpd.web11.1528.1659046675566212675
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 15:17:55 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=q5UVTZTI;
 spf=pass (domain: gmail.com, ip: 209.85.210.181,
 mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f181.google.com with SMTP id d10so3072297pfd.9
        for <yocto@lists.yoctoproject.org>;
 Thu, 28 Jul 2022 15:17:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=VpXK5Wsx05bxgAc6Y8xYkS5307EdOsd8Eq17qdGdtLk=;
        b=q5UVTZTIPwPywVHq1V6WhSYB26f9dWtADbMJ3Pf6JF4xNJjDo7bKFlWYw1zr5jBgnJ
         IWjKY8RNir6BaEwJE65Acefn9RGugxuX/HVq8s8e3wS+c4iYqe2RcCnOTtgJeqnkp4aO
         BAVJCteqgk11BDIVIMQsSCFJY68K7DpDJ+SKeEvmjLc/sNjGayZ9Lytn22BzpV0Gcmp4
         msZBRgli/0/qwNlGIh+pPggty21qc+XEcLriFMezsEcWFo2Ffie7ERkd7yJe4ry/4mup
         xTEt6pUi86KsMCy+wdhoHnF19FfhXEwA8pcqwEix7aOkWMZq8YpU1xyN2QOFIrjO4yrv
         eu1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VpXK5Wsx05bxgAc6Y8xYkS5307EdOsd8Eq17qdGdtLk=;
        b=FX6f2c0WMjllbyyfxoiOPo7hVZ4gAsSr72H0MQ8cnWL7uUhweR6oP37Y3yShezLT18
         qyKPnoVD9IogZ7+b6JoO75Do2cYeKdZrTTyVy5OXu++FKdxn5rhMsXeGoYLw8NynX5Ic
         bE3xNjq9FI3leLueHrsh3Eo/tOBkEcPOfWEHrgokJRsTULHnr4IC/qLrhFUOMD0EUE63
         HIps04SzGvfcLnAns5jagJ1i+f6a7ZMYps4ReNkahOqocucCNUJM7IMAfOkxwjazp3Ca
         52jz4m7H4ptswJInB5MCWCVQapeKf7lwG0+vL3RViMSGbNRN98Kl2qUcHE5y+DtFR7wA
         67Hw==
X-Gm-Message-State: AJIora948ONPYce+SIsnAGfFjIAhwCwaC9bgp7uXN939AEu5tghaMfdc
	VkkEyb1yV4ryjE7EJv7tJlSpu7aTQXs=
X-Google-Smtp-Source: 
 AGRyM1t0fiwxjDxnzxG/I22rekU07qFhQng9WkMvJ5goisAkWkbkTSCbYoz+bV8N5NhDiQEnqliOxQ==
X-Received: by 2002:a63:ce0f:0:b0:41a:f0ee:c28e with SMTP id
 y15-20020a63ce0f000000b0041af0eec28emr634437pgf.43.1659046674597;
        Thu, 28 Jul 2022 15:17:54 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 ([2601:202:4180:a5c0:8cdd:3284:a497:445d])
        by smtp.gmail.com with ESMTPSA id
 o4-20020a170902d4c400b0016d22e6ed57sm1829090plg.293.2022.07.28.15.17.53
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Jul 2022 15:17:54 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 2/9] ibmtpm2tss: fix SRC_URI
Date: Thu, 28 Jul 2022 15:17:44 -0700
Message-Id: <20220728221751.48428-2-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220728221751.48428-1-akuster808@gmail.com>
References: <20220728221751.48428-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 28 Jul 2022 22:17:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57670

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.6.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.6.0.bb b/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.6.0.bb
index df66779..e8a3710 100644
--- a/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.6.0.bb
+++ b/meta-tpm/recipes-tpm2/ibmtpm2tss/ibmtpm2tss_1.6.0.bb
@@ -18,7 +18,7 @@ DEPENDS = "openssl ibmswtpm2"
 inherit autotools pkgconfig
 
 SRCREV = "c4e131e34ec0ed09411aa3bc76f76129ef881573"
-SRC_URI = " git://git.code.sf.net/p/ibmtpm20tss/tss;nobranch=1 \
+SRC_URI = "git://git.code.sf.net/p/ibmtpm20tss/tss;protocol=https;branch=master \
            file://0001-utils-12-Makefile.am-expand-wildcards-in-prereqs.patch \
            "
 
-- 
2.25.1


