Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web11.6489.1599511864703244101
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:51:05 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=HI8+x3kJ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id e11so13014025wme.0
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:51:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XO2Fv9iC0iGroEDz+lrvhpA8/R8gAeGfg8tAT4qKg4k=;
        b=HI8+x3kJAwSHZ8711nEyuHzp3KGYIamTVgFIBOuDtZnw0iOWbrE8EmiKowsgU+TK2D
         j8RsChon5s6Qk9paq6dldpaebUS2O2A68myWRhHkGMJHoEaP78LVC8ZYNiY3QYOQfM8m
         MmpIQyQEpqvyPvl65+nDNFD9WJjjkrOPazVR0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XO2Fv9iC0iGroEDz+lrvhpA8/R8gAeGfg8tAT4qKg4k=;
        b=dGxfO+BZ/LWBuzZE19CEGUWxwoydfelqSE1D0f/1jOMajhi7hIUC+9sG5OUWPJDeD4
         okocCtzTbUr21pkasFroMcvMPnmuZDXUJmFDdPCTwb908qyPDN7wfdIjypzFAWJzi8zw
         x5PCANbQKCEf3Hvmcbmwj+QASGPpGzDZSmB7NBzwuepKGISo/FE9oYQlmcWPlT1YDlUi
         jGEyvf65wmQHbNS/qFatVVattoHAP53DF9s2HmQIms/7tIwxdn5WYcyzYrJL0un1NM5e
         OdAAWHY5qHLozbk72lFfGO4X8qNPzHD5DzxjZ6gyISpGaKGiPbIlV+zqF9yqfdLpsMq8
         pCkQ==
X-Gm-Message-State: AOAM5336uN5ncAwmGQfLe5bIzcfh7cQA+RzEhGizFrxOW+CjEhXCZdfl
	IFAEwwTzE0vNbc+tos+ZoRb0loK39xQGvw==
X-Google-Smtp-Source: ABdhPJxt9Xie7y6PvfL1N910zL/G7PfsHxbzH7FTZRDlwbYIxiYK7qMe3mQsraSQNxnKEH8NYloAlA==
X-Received: by 2002:a7b:cc13:: with SMTP id f19mr1029969wmh.168.1599511862957;
        Mon, 07 Sep 2020 13:51:02 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.51.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:51:02 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Cc: Michael Halstead <mhalstead@linuxfoundation.org>
Subject: [PATCH][autobuilder-helper][zeus 27/32] scripts/send-qa-email: Update to dedicated push capable domain
Date: Mon,  7 Sep 2020 21:50:29 +0100
Message-Id: <20200907205034.1941516-28-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
References: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
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

