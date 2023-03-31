Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D94ACC76196
	for <webhook@archiver.kernel.org>; Fri, 31 Mar 2023 16:21:29 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web11.59635.1680279683061715009
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Mar 2023 09:21:23 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=XTc1tcgM;
 spf=pass (domain: gmail.com, ip: 209.85.128.52, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wm1-f52.google.com with SMTP id m6-20020a05600c3b0600b003ee6e324b19so14265121wms.1
        for <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 09:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680279681; x=1682871681;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PjhvOdRAfarfz5RimbM2lI53ClPfmK1MdDspDovwt4M=;
        b=XTc1tcgMpkJz14MFfXaFaMJXhs1tM0bmoUf1qRu7zKQWZWOpB2o5ibwm+Vn43W/+/C
         TQByj5DvLTx9Fp42JXw038BpcBWaPahIRx7+ozbKEf/z451+UFdd4Prst0/vtqDs2ciQ
         H9jiec/76wErmPgK1beLmnmsLOfk90+zFjN+ioqO8GnxOybKOV83o6mLiEZ0iKJ+TmI6
         UmWxcJExdZufE5koOdOD/ggauelFSNjjgRhnD3lFGTf8hp+cWZ6XF54y6mStycP9aMEn
         Dn4AUNkTcU5mEkTGx1/ZAohlsHJqZJXTaNWsPNZBGpSI5WU6Cw5/4ODQb2AEVyrfl/LJ
         ADiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680279681; x=1682871681;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=PjhvOdRAfarfz5RimbM2lI53ClPfmK1MdDspDovwt4M=;
        b=sB5OhPsP72L9uA4Vc20Fe2s37EFd7wPbs18QvJ4mJwGIwNP+fdsmkYCZf0RN+tJkZ7
         XLRZFs1UkwvjRvunGzil6DC75B07t0f5huZodtYFskXODOWi+xILmgevoS1XD0oLgTz5
         a/kgOOd4vD4Xf8eWLwXHAp8g7my5wnoExzx4vhduuNIQF3FJfDtytHrishjdG9bneQLj
         GVzL13i/U0BvG0//pj7xggFW5oeEvuBMNm7sCmpfNl8x2W66BkzcWKreeOGmAC7lH/4Y
         PdrDzjpHXM5aIPC5hBqO8lpuXR05sr/RMygdxRxHypoFCI7yEdbvDQ6M74aF3MFpS1yP
         VhDA==
X-Gm-Message-State: AO0yUKX40vqkQVWY4h7FdVysAr4LzR9wZyAmcIXAfi2oHEn/LPAgYLCs
	evltKPGKdAkglaGgO3VPFCitR1HtgHbyDiEa
X-Google-Smtp-Source: AK7set9qcQ+yd/NCKvEoKQZd7O4NN0pZgrKyA88tJlqHD2UZeHTgdQK/6FZNwYiWcNT+CllYkJb+Sw==
X-Received: by 2002:a7b:c39a:0:b0:3ed:9ce3:4a39 with SMTP id s26-20020a7bc39a000000b003ed9ce34a39mr21300230wmj.26.1680279681398;
        Fri, 31 Mar 2023 09:21:21 -0700 (PDT)
Received: from og-worker-dev-01.infra.foundries.io.net (51-159-19-113.rev.poneytelecom.eu. [51.159.19.113])
        by smtp.gmail.com with ESMTPSA id m1-20020a05600c4f4100b003ef5b285f65sm10362423wmq.46.2023.03.31.09.21.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 09:21:20 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org
Cc: ricardo@foundries.io,
	jose.quaresma@foundries.io,
	Alexander Kanavin <alex.kanavin@gmail.com>,
	Alexander Kanavin <alex@linutronix.de>,
	Richard Purdie <richard.purdie@linuxfoundation.org>
Subject: [[yocto][meta-lts-mixins][kirkstone/go] 06/16] go-helloworld: update to latest revision
Date: Fri, 31 Mar 2023 16:20:32 +0000
Message-Id: <20230331162042.1801766-6-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230331162042.1801766-1-jose.quaresma@foundries.io>
References: <20230331162042.1801766-1-jose.quaresma@foundries.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 16:21:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59575

From: Alexander Kanavin <alex.kanavin@gmail.com>

Signed-off-by: Alexander Kanavin <alex@linutronix.de>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 recipes-extended/go-examples/go-helloworld_0.1.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/recipes-extended/go-examples/go-helloworld_0.1.bb b/recipes-extended/go-examples/go-helloworld_0.1.bb
index 1e2434f..0faab39 100644
--- a/recipes-extended/go-examples/go-helloworld_0.1.bb
+++ b/recipes-extended/go-examples/go-helloworld_0.1.bb
@@ -6,7 +6,7 @@ LICENSE = "MIT"
 LIC_FILES_CHKSUM = "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
 
 SRC_URI = "git://go.googlesource.com/example;branch=master;protocol=https"
-SRCREV = "ad95e7f791d8e1e7e7ec7f7cedfc2f6b29f6c9e2"
+SRCREV = "2e68773dfca072cb81f219fc3b97ad34fe9d9f94"
 UPSTREAM_CHECK_COMMITS = "1"
 
 GO_IMPORT = "golang.org/x/example"
-- 
2.34.1


