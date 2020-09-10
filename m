Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web10.22169.1599744678656241451
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:31:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=eCzNYiYO;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id e16so6753559wrm.2
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:31:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XO2Fv9iC0iGroEDz+lrvhpA8/R8gAeGfg8tAT4qKg4k=;
        b=eCzNYiYOetG5Lbvhj5HGSy/4jxqHOUas8cZQGaW16Sex5+5dEurUQGUdn4FTqrYGRh
         StUrWT+g4O3u+1ehX7Dbrq8Gt4EgPos92Lp0IOqp4GMKs3Tet1C4H90jhLZidqvnYhf/
         7UFkU1CEss0YvNoJEszA6MeDz6CPbxZsgIVnU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XO2Fv9iC0iGroEDz+lrvhpA8/R8gAeGfg8tAT4qKg4k=;
        b=JaKNYmyl4OCHWKYUjxkwJdlweYl7WeiLiftOZ85+AdsFJXIakVfO4PcuJSfWMaZSlJ
         sjuod6JpnUF5IBAbBgTiAGAypZkXvM/T3YqQjYhK1pUdrKOYxakvN9dJ8kV5GYB1ZRtb
         7XHwrLt7G0Wwl3ApwjQha2obUNpy1C/6T6BJP7sd+eYPTblXuxkdIksp7E7Zmh/P3uWg
         0PpctpC2x3cahcjx6GUeu832fklJ7CPprV6zlNmrfOU0ksXuc+22R1Rh7MFOVWrLkpRT
         P1rxSFltOKZ+F8gheqv9xFWdRDdh+5TbZUWS84tWQYvaOmvIlMxiCL7Y3Z6oQF0vX05v
         82ew==
X-Gm-Message-State: AOAM531+vTAoIFsM0lqAFiJFI2DQFRxdjiO44vYXgB2fBK6BEYGofZdz
	3ZffODk15liqH2lfoebpuq/+LmKGQ3dDlQ==
X-Google-Smtp-Source: ABdhPJxdBTkScfuY4tkFV2wMWsCu/6StyliyDXqIduWvbUp7tJ85YS7cPYok3fEt01b66Gw47u7rtw==
X-Received: by 2002:adf:f082:: with SMTP id n2mr8892945wro.35.1599744676897;
        Thu, 10 Sep 2020 06:31:16 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.31.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:31:16 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Michael Halstead <mhalstead@linuxfoundation.org>
Subject: [PATCH][autobuilder-helper][thud 38/40] scripts/send-qa-email: Update to dedicated push capable domain
Date: Thu, 10 Sep 2020 14:30:33 +0100
Message-Id: <20200910133035.2044355-38-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Michael Halstead <mhalstead@linuxfoundation.org>

Signed-off-by: Michael Halstead <mhalstead@linuxfoundation.org>
Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/send-qa-email | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/send-qa-email b/scripts/send-qa-email
index abc17e2..f38c876 100755
--- a/scripts/send-qa-email
+++ b/scripts/send-qa-email
@@ -70,10 +70,10 @@ if 'poky' in repos and os.path.exists(resulttool) and args.results_dir:
         elif basebranch:
             cloneopts = ["--branch", basebranch]
         try:
-            subprocess.check_call(["git", "clone", "git@git.yoctoproject.org:yocto-testresults", tempdir, "--depth", "5"] + cloneopts)
+            subprocess.check_call(["git", "clone", "git@push.yoctoproject.org:yocto-testresults", tempdir, "--depth", "5"] + cloneopts)
         except subprocess.CalledProcessError:
             print("No comparision branch found, falling back to master")
-            subprocess.check_call(["git", "clone", "git@git.yoctoproject.org:yocto-testresults", tempdir, "--depth", "5"])
+            subprocess.check_call(["git", "clone", "git@push.yoctoproject.org:yocto-testresults", tempdir, "--depth", "5"])
 
         # If the base comparision branch isn't present regression comparision won't work
         # at least until we can tell the tool to ignore internal branch information
-- 
2.25.1

