Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web12.21890.1599744639712322718
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:30:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=WjBF0Bs6;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f50.google.com with SMTP id g4so6727175wrs.5
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:30:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=At8nBOuWX1k08+oBL+V1u5zbF/drcuHVF3PnYrSufNU=;
        b=WjBF0Bs68kfiC8V+4yngYciols+TaMy8V5hQ5nlHIl7owSfrPbfB4HB6u6n1brzekH
         /jkoGqYkcUlw0PBuYGgEeSXE4vhjxy30vHjHA12OxZPIqXhJxPFkvhPyi5Hav7zNfm5x
         PhAheNcLD5+T6/brhvgs7erQm2FXzJIW9QGAk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=At8nBOuWX1k08+oBL+V1u5zbF/drcuHVF3PnYrSufNU=;
        b=PnZWPcS0r/AIzd8jLbcnBvSuPhFLy/AFrzc5AI4rU6KXgKOkZvA5Uu0UUwO+Awve/D
         nq3iNXUI2etC+bkM1/dXxYACB6My1e88sJaztDAi1oPR6p3q4KNlrX9CFB9DyWPL8GBQ
         pmRtiAiJjE7kMBSgy4F6U9FQ/YbON2iBI1vr6s6sK4kDKO75gUuJoNn8fHj3LvKtxB+v
         Nwgq3LEgek46A4uy0Z7Ql6f6SSrS+pJgxQCPFlEZvndBs8L5uu1F0vIqjSBdQ6YHA4fm
         3JRpuOjs2nDouqSd7ghv45dK9iZl8aYhIQU5WrG8wJzMmyf4G2F9Dd8LmTaPxPeyw4o5
         9QJA==
X-Gm-Message-State: AOAM532e84Yib7Fgn9fw8dAizZ8yXGiE6Ejf1lM+4EWZSX3MG04j8H74
	Wl2GsYsjoJ9h5Kt5XOrF/4Q6hIP9UUYnvg==
X-Google-Smtp-Source: ABdhPJyPdjKUJTRXBfGSnt4xol2KF66WtaRhG2muc4kZcLiykSBu3SPl5enOsx0B8r32LmW+rUOowQ==
X-Received: by 2002:adf:e481:: with SMTP id i1mr8907294wrm.391.1599744637880;
        Thu, 10 Sep 2020 06:30:37 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.30.37
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:30:37 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][thud 02/40] run-config: Fix uninitalized variable problem
Date: Thu, 10 Sep 2020 14:29:57 +0100
Message-Id: <20200910133035.2044355-2-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/run-config | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/run-config b/scripts/run-config
index e56050f..0097f97 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -151,7 +151,7 @@ def runcmd(cmd, *args, **kwargs):
     except subprocess.CalledProcessError:
         print("ERROR: Command %s failed" % cmd)
 
-bh_path, remoterepo, remotebranch, baseremotebranch = utils.getbuildhistoryconfig(ourconfig, args.builddir, args.target, args.reponame, args.branchname, stepnum)
+bh_path, remoterepo, remotebranch, baseremotebranch = utils.getbuildhistoryconfig(ourconfig, args.builddir, args.target, args.reponame, args.branchname, 1)
 if bh_path:
     runcmd([os.path.join(scriptsdir, "buildhistory-init"), bh_path, remoterepo, remotebranch, baseremotebranch])
 
-- 
2.25.1

