Received: from mail-pl1-f180.google.com (mail-pl1-f180.google.com [209.85.214.180])
 by mx.groups.io with SMTP id smtpd.web11.3573.1593716084978958422
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Jul 2020 11:54:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=lVq2y8qf;
 spf=softfail (domain: sakoman.com, ip: 209.85.214.180, mailfrom: steve@sakoman.com)
Received: by mail-pl1-f180.google.com with SMTP id o1so5081483plk.1
        for <yocto@lists.yoctoproject.org>; Thu, 02 Jul 2020 11:54:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=hK5NuDcN5C+JGfC1kyqCsQqTya8g6t8dJAf0aN8ieEo=;
        b=lVq2y8qfznt5ImNDtsfA8azba49g5HEjKaN8n+l/xlvC5udjGmy9uOuAcYU0GVHDlm
         x3rqWC1Hji8T7vqPhwx4LCmU0ZboC7gBF3etcOKFDmK1XKnOxsycjEGH01JIaOFFB3mo
         MSsPFP2uve122liV4Td3IOXQ+glgXGHZjA443y2T5z3mwGIJkcIKfh+qCKSDPBGyukD5
         WT+fzbVEk9armHXcdIGdM5oByMBteGOtSCwNYNzfeuQVLARH1USjF4xUca6fY+l/LHdx
         tuu9rtKijlvnkqdKTJfQLIY61h5y6HyXsJwcxJSFJhzKDdpLgfTc32cdsXBF7TSTWsLF
         OaXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=hK5NuDcN5C+JGfC1kyqCsQqTya8g6t8dJAf0aN8ieEo=;
        b=qNN2E52IwFDtR8Mlm/YpzxaWV8xf0mZ1NE5SeQl1l2OUe5gSs9kGcU3cKmcP09mRLi
         gMfYSe25jrJg267fZSFZLFDoC2O3gTfN/UP/8z28cZNg7sUQIgFY+bETKXmju2g18VPw
         ueOywDe84uJ+3wYvhSvwPtdDr6N2A0q6v7TLui+EDeB24j0FW1PHeAzOviNA+M4+kgkc
         UIntDdujl4gtvEQCohs+6O4okMFAF0nSNRKaLv0OyGmDHxaGN3LZdMeVMtTYDT67ZkhA
         rqAF7Th58waoquhVKF1BCqtoGclU458A3N8OfBz3jgfhviSiwpw6YMp0dPYF6Zt/wous
         PNpQ==
X-Gm-Message-State: AOAM530W50Ld9XtK5Mm2aIdLN7zuadkZb+YsW1sG0ET8awZrwLfdzvgH
	5AS61ydTjusldhYBscXvoDWUxAa6QlpQQw==
X-Google-Smtp-Source: ABdhPJwo2jUOC272RPGG3QXBIWOz5jAki5uhiYTV8BLLQ0r6smAq9ySLrmSZ7w4xj6ZypxvpUJYnNA==
X-Received: by 2002:a17:90b:8d0:: with SMTP id ds16mr3791928pjb.2.1593716084065;
        Thu, 02 Jul 2020 11:54:44 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from octo.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id j16sm9411204pgb.33.2020.07.02.11.54.42
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2020 11:54:43 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 2/6] config.json: generate the buildtools tarballs for aarch64
Date: Thu,  2 Jul 2020 08:53:58 -1000
Message-Id: <51669c9fe2b4316ee1269ad4b55590e2cf426d13.1593715874.git.steve@sakoman.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1593715874.git.steve@sakoman.com>
References: <cover.1593715874.git.steve@sakoman.com>

From: Ross Burton <ross.burton@arm.com>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 6876a5536c297741cccccc22a5c2daafb8f95156)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index f1032f8..9303086 100644
--- a/config.json
+++ b/config.json
@@ -609,7 +609,7 @@
             },
             "step3" : {
                 "SDKMACHINE" : "aarch64",
-                "BBTARGETS" : "uninative-tarball"
+                "BBTARGETS" : "buildtools-tarball buildtools-extended-tarball uninative-tarball"
             }
         },
         "build-appliance" : {
-- 
2.17.1

