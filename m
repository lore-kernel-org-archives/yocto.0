Received: from mail-pf1-f175.google.com (mail-pf1-f175.google.com [209.85.210.175])
 by mx.groups.io with SMTP id smtpd.web12.1439.1616688181335430145
 for <yocto@lists.yoctoproject.org>;
 Thu, 25 Mar 2021 09:03:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=jJYumVT7;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.175, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f175.google.com with SMTP id y200so2519928pfb.5
        for <yocto@lists.yoctoproject.org>; Thu, 25 Mar 2021 09:03:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=8b+BgQJ14/KgrdtMCF/olDyCYmyEUrs+nCvN2Pg7DIo=;
        b=jJYumVT7PZyFgR8ZGaR22dFCur7aFqY3GOr6LJ53xUn2l30JAMi/I9PJFO6m3jIkzN
         MlGu0V1iEYR+68Ox3hxR13YGHd+gzxZsGJKdwCyUWOpcT9TNhUJ+uxgc5yhKJ/g+oH2o
         mw7LfXDX2WgBvuL9P3DOnfbz2fSPbEql/Zb41w2TZtvIbqTOj5mE2/94vMuGJZkHq74i
         HaqZvq4Lb9LqG/YjIqKUnE94zUzUe+Bo03siPoMP+CENRGg36sGC9l6L/yqTLwm0vOZ/
         2VlIJxmzJXMAlR4o37vgj71aXdfgfHuq8JHHMCX5vx2AbLbZIDpHXYvFduktyouLr45w
         ZGWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8b+BgQJ14/KgrdtMCF/olDyCYmyEUrs+nCvN2Pg7DIo=;
        b=mTAGWsO2JG9T9DXVFpL5rNH3fB6RJEajYtgpVout4iATDgS8ITywzNiAxSsVQPbRDi
         vIk+Low2YG6rNvLqdKLlAIUhKsqvwuXA2KezO/OVM1vNtM5p2NwKuNi3OE0EhoXLJJE1
         JzuAqSwrNQalgTPkRlVg8fcHusMN48ka1hrsIu6nNuDYOdRA+SYNmkKBiCqM08nne8qQ
         sPxaIgc8m3bIzaKgTQA/YFYPOusMQ7sN45Wwiwc4/YQ6F5x9lx+O/Qw76R6ByWsigldO
         SaBYhD5+6e46wmmQi4aTXeXdI5h6nNMgIlFf9GotgjX2mSr8RbsDf+HqpnwTyOlnAZYZ
         VzWA==
X-Gm-Message-State: AOAM533f3lGMOqsRQ8mHepv1pyo5uYuz8uPweTqaKOsxnp8QXNdALojy
	Al88hNqKiLwCTrlRIdmMLnFohzfuSgGVcyPy
X-Google-Smtp-Source: ABdhPJyOUPL8kLyFfHwrfI98RVG5BFAelnJL6tmbb1dpY2X8w2W23c8iYpowvaAZEUva6I94mrvtoA==
X-Received: by 2002:a17:903:2303:b029:e6:faf5:875e with SMTP id d3-20020a1709032303b02900e6faf5875emr10073853plh.41.1616688179962;
        Thu, 25 Mar 2021 09:02:59 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain ([72.173.249.164])
        by smtp.gmail.com with ESMTPSA id t18sm6290054pfh.57.2021.03.25.09.02.56
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 09:02:59 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell V2 01/15] scripts/run-config: Don't execute steps that don't exist!
Date: Thu, 25 Mar 2021 06:02:07 -1000
Message-Id: <af1c690ed190cb90a245ca00cfaf1c14b321ba9b.1616687842.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616687842.git.steve@sakoman.com>
References: <cover.1616687842.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit 290e1bc2ee18d5fa88aca84125fb6691db3db5f9)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/run-config | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/run-config b/scripts/run-config
index ce6072c..ff56fbe 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -81,7 +81,7 @@ elif args.build_type == "full":
         ourconfig["HELPERSTMACHTARGS"] = "-a -t machine -t toolchain-user"
 
 # Find out the number of steps this target has
-maxsteps = 1
+maxsteps = 0
 if args.target in ourconfig['overrides']:
     for v in ourconfig['overrides'][args.target]:
         if v.startswith("step"):
-- 
2.25.1

