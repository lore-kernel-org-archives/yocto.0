Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web12.3585.1593716087379849631
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Jul 2020 11:54:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=aJFgSOAl;
 spf=softfail (domain: sakoman.com, ip: 209.85.216.54, mailfrom: steve@sakoman.com)
Received: by mail-pj1-f54.google.com with SMTP id b92so12904203pjc.4
        for <yocto@lists.yoctoproject.org>; Thu, 02 Jul 2020 11:54:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=8dgmZLQYUitcVMSJF32fANkOXxi6l6p/yTLY5Y/smOA=;
        b=aJFgSOAlrsIaYUDq+i9oxpTfrHcbH6LU01M2whmE3bNQilxj/XbEQgN9YMcGpZQb/i
         0emub20uzuQdHKwVsjlftmG4ZXzMXHydXIy44pCH/GdNmUMEtjN/MJwbiiA7DhTs21Or
         MNNW9pMXoxZ54WZ7xrkmH8zS4dIAPxe0H/74y4+mtfMGE7b/BIf9B2pskjmxKQY8LjGi
         Rd3BHARRg4+WQPVSJO3dzLzGZp+zxQ4t1C0KMgid43VA/xBHEYNtlEts9W8lcJNEEF4M
         wru+XUPqpuE8uiZMBU4igRUAXjJEb0X6LynxdBOWbCXx6YfEiXVpyn/3d0IvpWDUHEOc
         o6Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=8dgmZLQYUitcVMSJF32fANkOXxi6l6p/yTLY5Y/smOA=;
        b=FiX/WxBusRY1QD1gHeasqNcSCGjmEEd+Jd9vI7xGPcYauzP19m7dvTkFYx4IW3aXVi
         rN/AGAbJ392qj7bvcKQ652l+DCqYsK5i8r/6rnCHuInBG2f2nj+WkciFi+XYQkQQgK4l
         mdR1/GYM5qC6gTXSopf6x/qQGHwjf46JnBfeuZvwZPXQCEuEHVyg9SqKRwQrL8uZ/BJf
         M8QCMmbNjDvznrm9Rp8NOUolYh1Fp2FF1TTJeSk4lYaylYSFSJC/C8g39nYKLC9jxrqu
         sOn2nePp0Hfe4r20AljEnnrvB/MRGyUhOeknSOgWjBGzAOqhUFEDS4GYCnAM/Fz2xYAd
         7rJg==
X-Gm-Message-State: AOAM530ACaDVXl2kJVK9EMAoL2Uqd+UCAQC0HSP2AZ28YenOMHsoq7CA
	VLhC2kEcJU5i6ceSECtVJNnjsgVPtRrjxA==
X-Google-Smtp-Source: ABdhPJwnrDtqSjDcdKY3n6yawRqNjPXUL5DM8IxHlrV4sx1MH9YwJ+fvAVsdrAu79YhZxTM3QUfpAA==
X-Received: by 2002:a17:90a:a393:: with SMTP id x19mr7640940pjp.228.1593716086451;
        Thu, 02 Jul 2020 11:54:46 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from octo.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id j16sm9411204pgb.33.2020.07.02.11.54.45
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2020 11:54:45 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 3/6] config.json: Use buildtools from 3.2 M1 to fix bugs in openssl reporting
Date: Thu,  2 Jul 2020 08:53:59 -1000
Message-Id: <895ac749b0598bf8a40d9a10ed9e46340635c44d.1593715874.git.steve@sakoman.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1593715874.git.steve@sakoman.com>
References: <cover.1593715874.git.steve@sakoman.com>

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 385fdf2295d514d0b0883957a110825235f9647f)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 9303086..9d5a0cf 100644
--- a/config.json
+++ b/config.json
@@ -10,7 +10,7 @@
 
     "BUILDTOOLS_URL_TEMPLOCAL" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20200309-15/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200309.sh",
     "BUILDTOOLS_URL_TEMPLOCAL2" : "http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.1_M3/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.0+snapshot-20200315.sh",
-    "BUILDTOOLS_URL" : "/srv/autobuilder/autobuilder.yoctoproject.org/pub/non-release/20200430-14/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.1.sh",
+    "BUILDTOOLS_URL" : "http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-3.2_M1/buildtools/x86_64-buildtools-extended-nativesdk-standalone-3.1+snapshot-20200617.sh",
 
     "REPO_STASH_DIR" : "${BASE_HOMEDIR}/git/mirror",
     "TRASH_DIR" : "${BASE_HOMEDIR}/git/trash",
-- 
2.17.1

