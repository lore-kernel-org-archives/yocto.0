Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9186C77B72
	for <webhook@archiver.kernel.org>; Fri, 31 Mar 2023 16:21:29 +0000 (UTC)
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
 by mx.groups.io with SMTP id smtpd.web10.59669.1680279680814838509
 for <yocto@lists.yoctoproject.org>;
 Fri, 31 Mar 2023 09:21:21 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20210112 header.b=GZeTFfpw;
 spf=pass (domain: gmail.com, ip: 209.85.128.52, mailfrom: quaresma.jose@gmail.com)
Received: by mail-wm1-f52.google.com with SMTP id i5-20020a05600c354500b003edd24054e0so15729222wmq.4
        for <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 09:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680279679; x=1682871679;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Q+l1v1eXktoNMBc2shAUAljGAdMPb3GCDHCfetcwKoE=;
        b=GZeTFfpwyzIkEoy54gL9ub/1/oH0Gj2h/b9lCsBGVyFMFGimuIxnydSIOHSMuEqUrT
         iB2C/vrGYCnZrFoJr2KneANROzUw2hd2hTY0xwImP/HGU00ADmb3F0o8QA9zyrnVmHrc
         gW2rrKJNZhukGRpDfXCW0bzXe1ZxMZTCyK7A+AosgRXFoPAk77ODAI/1IkLvbqob+V7F
         HowmU+1paqSpWxvcpCb+rc3Yb+F8Ti30v5/tx/j41SEDwEZzZi3skJ8vjbJofN3BNx0W
         QyOeX9/PkdWaRVUnCNqGxsmRuaW3/Z877W9Z93454en0VsLjnhr+V2rtMylcfduSOpy3
         Hjzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680279679; x=1682871679;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Q+l1v1eXktoNMBc2shAUAljGAdMPb3GCDHCfetcwKoE=;
        b=TkguIHlvQeulo5pDWxBAw8j/V2Ni+Ve8mfsONRbgv/qBIcP3AR+GPXHDWdA44KFqsC
         sZlLOLggK7+kVDu5ChssUYLF4wD35TJ41cl9mt0gvSnkSb4G3uyK7FlSK1lBm7RETG5R
         78EFjtUuhroFy6JI6ZQcDabeTQTaKpDoP53SYVKvm4RhyhRRsCYm5QfTAaSYeV3wsr41
         KTMGTENXQsE4JASnCTVvIGwC0BJAVXtEjKC+kAH3wbP0jtNsLf9ya2pISIWJRPIfDK0J
         jK5KcJZEEL//GQ8T0cs4+oDcWVLDftCSb/ghWq47fmY5a5gA1LC1D3+LYirf2eQ6L4zB
         db/w==
X-Gm-Message-State: AO0yUKWh9+tPDdxIXYzGMYnSmqCmqMhofM16SQPoTZ+BM1EvlKs1V6jt
	JM1kkNS7uKz9PsQ1meoiSMxVw7OtucqCmfTO
X-Google-Smtp-Source: AK7set8j175qMC+26U3yF+odaT1n62JIqtLwry0voOYDCxAfNe80tvPxWDOpWoHZCZ9faGBOijBH2w==
X-Received: by 2002:a1c:7406:0:b0:3ed:320a:3721 with SMTP id p6-20020a1c7406000000b003ed320a3721mr21927744wmc.22.1680279679116;
        Fri, 31 Mar 2023 09:21:19 -0700 (PDT)
Received: from og-worker-dev-01.infra.foundries.io.net (51-159-19-113.rev.poneytelecom.eu. [51.159.19.113])
        by smtp.gmail.com with ESMTPSA id m1-20020a05600c4f4100b003ef5b285f65sm10362423wmq.46.2023.03.31.09.21.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 09:21:18 -0700 (PDT)
From: Jose Quaresma <quaresma.jose@gmail.com>
X-Google-Original-From: Jose Quaresma <jose.quaresma@foundries.io>
To: yocto@lists.yoctoproject.org
Cc: ricardo@foundries.io,
	jose.quaresma@foundries.io
Subject: [[yocto][meta-lts-mixins][kirkstone/go] 04/16] go-helloworld: recipes-devtools -> recipes-extended
Date: Fri, 31 Mar 2023 16:20:30 +0000
Message-Id: <20230331162042.1801766-4-jose.quaresma@foundries.io>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230331162042.1801766-1-jose.quaresma@foundries.io>
References: <20230331162042.1801766-1-jose.quaresma@foundries.io>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 31 Mar 2023 16:21:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59573

Signed-off-by: Jose Quaresma <jose.quaresma@foundries.io>
---
 .../go-examples/go-helloworld_0.1.bb                              | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename {recipes-devtools => recipes-extended}/go-examples/go-helloworld_0.1.bb (100%)

diff --git a/recipes-devtools/go-examples/go-helloworld_0.1.bb b/recipes-extended/go-examples/go-helloworld_0.1.bb
similarity index 100%
rename from recipes-devtools/go-examples/go-helloworld_0.1.bb
rename to recipes-extended/go-examples/go-helloworld_0.1.bb
-- 
2.34.1


