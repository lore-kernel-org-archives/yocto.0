Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web12.1354.1616632813334969224
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 17:40:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=LjjDof5x;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.172, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f172.google.com with SMTP id e33so67869pgm.13
        for <yocto@lists.yoctoproject.org>; Wed, 24 Mar 2021 17:40:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=8b+BgQJ14/KgrdtMCF/olDyCYmyEUrs+nCvN2Pg7DIo=;
        b=LjjDof5xe+4jyFvJOKl37FhCKikF1m5B4xRDgqUER4W4JH2XQ4UsvE1kbVOwZzDeED
         bYmyQl5NjAlfGbIFk72WikQeaNQko7POnA05jwdDBNT7A1luCenaE+8KBFR7Dkx2muLq
         W+eyZfAoFaF8BJwt0RZhsdToaJ+T8ZtfuuSBCe5c2vtIprCzi6TOy2lWhBnsqJQ/mJAK
         FxgOY1apS/eDpoow0d2QlthSb7Jc9FEsce65RUkboaQfd/4Wd5qTmHIFyeqHiILGY2Vb
         GxF3/pbqg8rhj9PwdvCtq+1paJEqUhxVjERhsW1wzX/EuOxqq7F18X3QDWUOIOtPpybb
         TdYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8b+BgQJ14/KgrdtMCF/olDyCYmyEUrs+nCvN2Pg7DIo=;
        b=WPnIok2ZC2etKvg0v9AZtVF3S8LPh4hGYjh+UVTeLBPyWw6I0xPObDLyMVZyaiQDN3
         hFjN5SRWMwmdWCCP/n8qJ4eWZEIsDMzxFJvh/9PWB2xnEDiJge62T44F0jHAEzLsohp1
         Dt2wXLmQzUq3AeYDczDuVZwnMOrIs3WCG1IdrKSsWFmdwg3nzxS28/JxDgOhQ3zHrK2v
         KUL6/8Kog1cAp+0BKlN5gjIdW2jjOk9sPogXKnXmZFGY/l5/ZrwSyw3HAiBsdhyF7SOV
         rG1DdPpw/YorMtaLlgS10iUgq2gMSVQQVW5spZKhfSqG9O1MFoZ9NCxFxpvlsFkbHgxO
         BAEQ==
X-Gm-Message-State: AOAM530hVkNeCn/O1IvuhbbCwW6tYgVuDh30S4fbAOJ+XdtxIhzLHPeg
	sYokPn8BwMBXOUtVQOJJcmwSbGtJUF110cxU
X-Google-Smtp-Source: ABdhPJyTrSiVnVIw/rGhBv74E9fh42D1MhsJnM34AXhS5ZTlZi8AR947soFm3Oz5oSvraNUxFxqMEQ==
X-Received: by 2002:a17:902:9886:b029:e6:2bc6:b74 with SMTP id s6-20020a1709029886b02900e62bc60b74mr6284129plp.13.1616632812409;
        Wed, 24 Mar 2021 17:40:12 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id o13sm3706924pfp.26.2021.03.24.17.40.11
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Mar 2021 17:40:12 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 08/23] scripts/run-config: Don't execute steps that don't exist!
Date: Wed, 24 Mar 2021 14:39:17 -1000
Message-Id: <cf6d0ad49d67d656c61e452a17c5d8753452b25e.1616625264.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616625264.git.steve@sakoman.com>
References: <cover.1616625264.git.steve@sakoman.com>
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

