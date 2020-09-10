Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web12.20524.1599740794568094567
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=f6Q/itdQ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id b79so5592072wmb.4
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XO2Fv9iC0iGroEDz+lrvhpA8/R8gAeGfg8tAT4qKg4k=;
        b=f6Q/itdQMk0txBFYnJW9KWx83vuvbQwmjKn4tn1H01VQEKlp7QohgNYr6M82Xz0Ucg
         eyD640t3DCpCTFYNR4MEIWABafvRQmv0ZqBpH0N09d0f7Wpm4UQfkQ/ZoW/e7sjPw/ix
         rDbVkZemrbinIWv7L5g++STdThSExdszCDaSU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XO2Fv9iC0iGroEDz+lrvhpA8/R8gAeGfg8tAT4qKg4k=;
        b=l3gsgu7IvGoV3E0hjSTD0L8WTPxKrBGqnIBtPXQxoTB2Lnva3yqZtIKT8QszeYAU23
         174/b1CW9kJelPUwSRSkaIZkOxperUQK7xSXn2OPLuP86sv7ZwEZ/0gX8Lj/vOB7wo4H
         4OiAAppUUPaGdLzYOQmJxWnncfXRy4O8xgeadTvfoiv8ptc0xflVx/VU+w+rIGfUcUCj
         7jSXTbFZz8ljIlbP74KyDmY02fbvUzr18ACr7XdQ8RzQ+HT1r7WLDthVaXEpQxQqtA3D
         kTR6mw3dv24OQ9T29yvlorV84O/5MghwTeZIW63itTF8d/2XzvhIQOYfCQis3rU704tR
         d18Q==
X-Gm-Message-State: AOAM530Ix/EnYHunruU2hjLRHP1UAkgo89cQ/nqGo4v8PYd+M6i1dVyQ
	9IaJ+xPcKzlpna+JOV0ZsnDy0QLQ6x1O3Q==
X-Google-Smtp-Source: ABdhPJxxDUiIh/B/mnv0+E0ycN36z5jquLZu917mdDly8ePZs16q4CaiZHhRzTLqOqUkCqUj7Nddhg==
X-Received: by 2002:a1c:bad5:: with SMTP id k204mr8631105wmf.111.1599740792792;
        Thu, 10 Sep 2020 05:26:32 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:32 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Michael Halstead <mhalstead@linuxfoundation.org>
Subject: [PATCH][autobuilder-helper][warrior 40/41] scripts/send-qa-email: Update to dedicated push capable domain
Date: Thu, 10 Sep 2020 13:25:52 +0100
Message-Id: <20200910122553.2040430-40-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
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

