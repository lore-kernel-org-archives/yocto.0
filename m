Received: from mail-pg1-f170.google.com (mail-pg1-f170.google.com [209.85.215.170])
 by mx.groups.io with SMTP id smtpd.web11.1365.1616632840055202978
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 17:40:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=UpFPdxQD;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.170, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f170.google.com with SMTP id l1so98687pgb.5
        for <yocto@lists.yoctoproject.org>; Wed, 24 Mar 2021 17:40:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=d2dQJsqeOnGIcJBVrMKnIiOF/sLfim5jbX9hIyijhks=;
        b=UpFPdxQDC/h4TM3EdTu75XYdk8hF8RpLmeT3Hwob3b1ckNRCwg9xCjzQ8UzYd6c0TV
         qg7k/gaCJ61mEfgkP/+SKnxWaaOtqQFc/byo7RIi0k2qOtyCIccI1zXGJQf4pDAUA/7y
         Jq54qwdCd1ip5WwSqj+iW5YyYPN6DR1TOEe92gGZUhsoSwSyq+PfeOpuOb/fpzWjZYAz
         bq97FwDf3yAlrx9gjeytdHvlInAxyPX+jNtUPNotbqeDQeNOPuXejJnzsVqbacR5F3Q+
         jLeIDlT3Tuuj0n9uaG9K2kPLQ4kaOvUBfw9JFxe8sNoJPeUOIALg3l34qPnEYv/GEoLn
         +FWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=d2dQJsqeOnGIcJBVrMKnIiOF/sLfim5jbX9hIyijhks=;
        b=PzdXV8wpSvAhkz4OY5CEWknz3DxqroJdZr242/T9z222zL+F3GtfjWO7dk3B4UIQ2r
         7HI+guAaTgCvjrspYdvZ3/+gB1APGNm3GJF5sKUkmhkM5W8rX6MRHMyiLXkcuedmN/1V
         v0NRcNQBawOJMCDX/3qNhhv2gGDpA+XbCvUs3GPTecAXzb+umUcQ6la0M6zCEx/bI+Bw
         6hhruYuDqMPrPCqowLMoNqZek/LBfWajdblmN0QByUPKKGrFIkJMphB9MLze/nDgvBOb
         QmeyUeaMLdej76KO1r4h6PGtn84UgMauYxZDhWnDCFPIcSJxK3PMKI0yfaeWS8c9Ojge
         3M9w==
X-Gm-Message-State: AOAM5316qu1w3HHrW+d7nCWWgarK+yyiDrD3PX+sf8cOVbzo5tIB9bH4
	24PLacAOkDS8CnD8L65JxI8VBhZJENyNWdO0
X-Google-Smtp-Source: ABdhPJwmreJt5EaDA2WntSVXRB1R/rdNCK2mKsD26SmdskHnt7rg7t3c70UuKduUyfe8jtClUX4RlA==
X-Received: by 2002:a65:5c88:: with SMTP id a8mr5008072pgt.130.1616632839131;
        Wed, 24 Mar 2021 17:40:39 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id o13sm3706924pfp.26.2021.03.24.17.40.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Mar 2021 17:40:38 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 20/23] config.json: Use buildtools tarball on debian9
Date: Wed, 24 Mar 2021 14:39:29 -1000
Message-Id: <fbd459aa8fcd8fdbdae57f41e7f47ff0de78bbec.1616625264.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616625264.git.steve@sakoman.com>
References: <cover.1616625264.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

debian9 has python 3.5 which doesn't work with new qemu versions. Its
the only remaining 3.5 distro so lets move to a minimum of 3.6.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 62b3f5553e9c215cf94798ae4694ccb97f6e85dd)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 1 +
 1 file changed, 1 insertion(+)

diff --git a/config.json b/config.json
index cedcef7..8eb05e6 100644
--- a/config.json
+++ b/config.json
@@ -1006,6 +1006,7 @@
     },
     "buildtools" : {
         "debian8*" : "${BUILDTOOLS_URL}",
+        "debian9*" : "${BUILDTOOLS_URL}",
         "centos7*" : "${BUILDTOOLS_URL}",
         "perf-centos7*" : "${BUILDTOOLS_URL}"
     }
-- 
2.25.1

