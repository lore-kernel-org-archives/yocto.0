Received: from mail-pg1-f172.google.com (mail-pg1-f172.google.com [209.85.215.172])
 by mx.groups.io with SMTP id smtpd.web11.3571.1593716082419788514
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 Jul 2020 11:54:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=PdRtQyXt;
 spf=softfail (domain: sakoman.com, ip: 209.85.215.172, mailfrom: steve@sakoman.com)
Received: by mail-pg1-f172.google.com with SMTP id z5so13890281pgb.6
        for <yocto@lists.yoctoproject.org>; Thu, 02 Jul 2020 11:54:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=k/oZcMmzk/SQS8RezxSGT0YxcjrwWv1+rfHuj57f1po=;
        b=PdRtQyXtF/83rxFHNMYt1POAqGfsaDzpwHWjVWpghveU98hp/Dk4YpJTKXlf0ypkAs
         FL/dxsmZstzs/O3KP3ia6aekL+jiCKQxFC2hmppM0MUgDpeAuVHaMLGhTq73e/PfthFV
         ziNqewpLIJhPNDBArf6jELy8IQlzOD7qfvpQ/f4xKf5FhPSsezMk0F2wx9YtSW3k7tx7
         jT8WOKoJGT3HmJwwCsO4dt4zRkWm/2KMCFpojN9NofZOKjPr70YOJNgODusbQYKxLa5P
         GnyjQ1JBQlqSE+caPEe/pxDlnWPaaJnFCaatZlaF7YKD/awNoSqH7WGAsjVtxwvlCxHS
         KXaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=k/oZcMmzk/SQS8RezxSGT0YxcjrwWv1+rfHuj57f1po=;
        b=hcwXwHk32wvuHjoYwU76GRexP6j11h5WumjPa9sqRSgJg//GnlDcvfooew1IdahsDw
         d/mORw0NCX686Tk1S6icN+eFrsBWr/zzECh9ixnWVs8gKAbpSVUUTLHqRiyDpLuJbGTh
         li9Qb9hEvaZiSVrwyWTSoPQ+m8D3hcg9wcnx1KC9f00lOkeVIB6ukRRlF5AtNLPRdOg4
         l3xi5woQRZl/8yhhWpZ+U0dNYDx2RJ2vZbvrx9sKiNqKgFH7H4FUAnWobzGv0ZBrh4tg
         gZKlnBtfs70k0JKxsYvyj+5qijr0NBchy49H4prcXHgkjyTgpOE9UK48pAAbXl4x+YrQ
         02NA==
X-Gm-Message-State: AOAM530yTR5drY0NLvA37Sl3w4YvJfRaP9GGZudaCKjt0rQbZuWcp24G
	DNV9nIZbdsePF7mP9r0ljpynmHtGB2LZQg==
X-Google-Smtp-Source: ABdhPJxHZe98V9MFnbrKQDSYpFmSOt2y7+2rR3RzLbJLFh+6ZHkNfCPhpid8B0KZ3VbilGgmM3yfkg==
X-Received: by 2002:a63:7802:: with SMTP id t2mr26112803pgc.421.1593716081397;
        Thu, 02 Jul 2020 11:54:41 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from octo.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id j16sm9411204pgb.33.2020.07.02.11.54.40
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jul 2020 11:54:40 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 1/6] config.json: Ensure trigger-build and trigger-build-posttrigger match layer setup
Date: Thu,  2 Jul 2020 08:53:57 -1000
Message-Id: <9727b983d989a37fe4e72792badd9dc23b7c0b7e.1593715874.git.steve@sakoman.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1593715874.git.steve@sakoman.com>
References: <cover.1593715874.git.steve@sakoman.com>

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit d1d56776fa19f7ffb1e6be33631ccf10f2c4989f)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 config.json | 1 +
 1 file changed, 1 insertion(+)

diff --git a/config.json b/config.json
index 9636ea1..f1032f8 100644
--- a/config.json
+++ b/config.json
@@ -179,6 +179,7 @@
             "MACHINE" : "qemux86",
             "step1" : {
                 "BBTARGETS" : "universe -c fetch -k",
+                "ADDLAYER" : ["${BUILDDIR}/../meta-selftest"],
                 "extravars" : [
                     "SOURCE_MIRROR_FETCH = '1'"
                 ]
-- 
2.17.1

