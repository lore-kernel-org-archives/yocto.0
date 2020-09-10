Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.web11.22189.1599744672965201139
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:31:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=NVge/CO+;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.45, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f45.google.com with SMTP id k15so6695473wrn.10
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:31:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=ulIAdqhilTPTMHv79MJPle9ggzA7gGPn+jRx18LrApk=;
        b=NVge/CO+xg85A3OvtfM1sZJpBHosiiLTcLQwjksv67zOjHwMQjRuqTF8OjSVo3E9F9
         IyQAY/Op9BExgppSWM8sb/bFybe35V4BauTWoFWiXgMTUOfb6/XvGiZrhPZ1T0zjR3I1
         FNICYPaJ/tlP9ocnSyOZ9Bpps/oH0YBgnqPL8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ulIAdqhilTPTMHv79MJPle9ggzA7gGPn+jRx18LrApk=;
        b=VdkvOaIBUy7yQniPR1qh8kXhm2YlT50AKRecoUQvdj44dH2zndH6eZluYx79ij1rbu
         lXY+EhgPyb1vmNc1kAWvDVmlnpV4p1B5mZXOP3687UmiBNf0bOgVmgiLxqJ4yUy8NZyX
         qwKhrHojjFc7Zmo9PKQhdm4K7GAWx5+/WIf0seTGuEnCSoKdN9GeCJIz2lv1c28e0bVo
         QEJTsLLkpabisqGmPfiS0LgvRvGWTybueXzzR4E9sFmSEKQSNRnoi3hGULhQp5UzaCuv
         2q0fqJ+zI/SwNnvkbFovk45qY9X2wmOe1AIuQrzCzZF0ME/YJgIkjbV6nI02i40WS56/
         6K+g==
X-Gm-Message-State: AOAM533+dx5UjPorlUS2AN0rv+t9Zikf6Y3roCluNblnFMUrxfbkKFOs
	U5/SkokVO6f/KZlPZLS09OudkySYSy//uA==
X-Google-Smtp-Source: ABdhPJzN8DV+EO2W2WFMsDX3WtXv3Ym1oRAXBM4cURPiDAHvL5TteoCyB8ZVHN3YnPdC7Vq4N87Mlw==
X-Received: by 2002:adf:ec87:: with SMTP id z7mr9741195wrn.57.1599744671260;
        Thu, 10 Sep 2020 06:31:11 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.31.10
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:31:10 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][thud 33/40] build-perf/send-qa-email: Fallback to master as a comparision branch
Date: Thu, 10 Sep 2020 14:30:28 +0100
Message-Id: <20200910133035.2044355-33-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/build-perf-test-wrapper | 3 +++
 scripts/send-qa-email           | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/scripts/build-perf-test-wrapper b/scripts/build-perf-test-wrapper
index e7b24ad..660ef82 100755
--- a/scripts/build-perf-test-wrapper
+++ b/scripts/build-perf-test-wrapper
@@ -185,6 +185,9 @@ if git_repo:
         basebranch, comparebranch = utils.getcomparisonbranch(ourconfig, args.repo, args.branch)
         if comparebranch:
             extraopts = extraopts + " --branch2 %s" % (comparebranch)
+        else:
+            print("No comparision branch found, comparing to master")
+            extraopts = extraopts + " --branch2 master"
 
     print("\nGenerating test report")
     open(report_txt, "w").close()
diff --git a/scripts/send-qa-email b/scripts/send-qa-email
index a265a7c..b4d4cec 100755
--- a/scripts/send-qa-email
+++ b/scripts/send-qa-email
@@ -54,6 +54,9 @@ if 'poky' in repos and os.path.exists(resulttool) and args.results_dir:
         extraopts = " --branch %s --commit %s" % (branch, revision)
     if comparebranch:
         extraopts = extraopts + " --branch2 %s" % (comparebranch)
+    elif basebranch:
+        print("No comparision branch found, comparing to master")
+        extraopts = extraopts + " --branch2 master"
 
     report = subprocess.check_output([resulttool, "report", args.results_dir])
     with open(args.results_dir + "/testresult-report.txt", "wb") as f:
-- 
2.25.1

