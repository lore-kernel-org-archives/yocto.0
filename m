Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
 by mx.groups.io with SMTP id smtpd.web11.1367.1616632841889685868
 for <yocto@lists.yoctoproject.org>;
 Wed, 24 Mar 2021 17:40:41 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=finhuoUy;
 spf=softfail (domain: sakoman.com, ip: 209.85.210.181, mailfrom: steve@sakoman.com)
Received: by mail-pf1-f181.google.com with SMTP id q5so218344pfh.10
        for <yocto@lists.yoctoproject.org>; Wed, 24 Mar 2021 17:40:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=AQ/IOuSNJ2icXnAz/9np8qbd41/XAPNnBAS1LvofxKk=;
        b=finhuoUyctteDxGK0EwRXJ4PdrXnB1pLY+yIYli4DeqJ8U1ZlZzcvXouNcIjdEn5lJ
         t2Z+3toriJLzMGwEvjIWRaW2MJNGUPPIYP/nB3ga42WFoOjsykXDKaYhs8wKVta1ClSc
         RWlY6IZdZ6zvhAExq+Mu8eAQ54aE92maM4VPVJjjNwUjtSX0uzChEMX5hQ61Mbivmxvt
         vc3PADUx6Cc/YQlNODEkNVM9BFpQMfbYuaEH8xK8za5BiO8wFnJi/fZh8r+XC3d1pWy0
         FjIfHhWTqka9D0xYVC2zDtw7pJuqx7zTq5z2ljXKeJpB/51JhaVbn/jLHAB66V6SYq+6
         vAfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AQ/IOuSNJ2icXnAz/9np8qbd41/XAPNnBAS1LvofxKk=;
        b=s/eEhZAGhl1uVp1Tpi4YpO4gyxAmzNA7XwNiai7BOfW3py3KyikIghaQQFn+ChlTj9
         1OLuz8osIGWDa4iSspfmccT6QuPfzIExsLVSPmuB4fCQ1HIEB8jt0nWiBFSHyPDHNZTo
         R4RCpGZtwJzUNguLNtOKofF28Yf23CCkL8dZSnvTFzJ2tC2udIeMGuv8Z3Op2fGIyWLe
         tsxxUQNhIJhB3pdsPKLap0DY+iOCaNM1i701ayarsffF3d4eHfEPj25FUF0SneOvZf3w
         KxnL76ECZHugT8bVyI9tkGBBQUJxJwUEV70OXq5byp11uBeTIrO7OdxJgudnl853DD+C
         Zysw==
X-Gm-Message-State: AOAM532cWT7hfzOBTrPlV6HDoJhRY3++f1V73j8FMZeCrBSTE33yoTjn
	wkWWbaeTytNqQ6fWg8YqYg2EEQPuqL0ngmFT
X-Google-Smtp-Source: ABdhPJx/PYQmWkXbNp+idepvcoVHKd8K5BZyUNynr3Jq6KzsK2bJpkoGadFYIS4n9/bziDj4CtfJTA==
X-Received: by 2002:a62:7517:0:b029:21d:2eb4:ee5d with SMTP id q23-20020a6275170000b029021d2eb4ee5dmr5144191pfc.64.1616632840990;
        Wed, 24 Mar 2021 17:40:40 -0700 (PDT)
Return-Path: <steve@sakoman.com>
Received: from localhost.localdomain (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id o13sm3706924pfp.26.2021.03.24.17.40.39
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Mar 2021 17:40:40 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder-helper][dunfell 21/23] scripts/run-config: Disable output buffering
Date: Wed, 24 Mar 2021 14:39:30 -1000
Message-Id: <b152dd1dea8b720bcf0848e515de5d1d79a1ba90.1616625264.git.steve@sakoman.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <cover.1616625264.git.steve@sakoman.com>
References: <cover.1616625264.git.steve@sakoman.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Richard Purdie <richard.purdie@linuxfoundation.org>

Line buffering (bufsize=1) is unavailable with binary mode so use unbuffered
mode instead. This fixes python runtime warnings.

[YOCTO #14093]

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
(cherry picked from commit c21732937c89f7b13a4f8a9a02d7fcb15a4bad2d)
Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/run-config | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/run-config b/scripts/run-config
index aab52c1..8ed88cf 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -193,7 +193,7 @@ def bitbakecmd(builddir, cmd, report, stepnum, stepname, oeenv=True):
 
     flush()
 
-    with subprocess.Popen(cmd, shell=True, cwd=builddir + "/..", stdout=subprocess.PIPE, stderr=subprocess.STDOUT, bufsize=1) as p, open(log, 'ab') as f:
+    with subprocess.Popen(cmd, shell=True, cwd=builddir + "/..", stdout=subprocess.PIPE, stderr=subprocess.STDOUT, bufsize=0) as p, open(log, 'ab') as f:
         for line in p.stdout:
             writelog(line, f, sys.stdout.buffer)
             sys.stdout.flush()
-- 
2.25.1

