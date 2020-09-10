Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web12.20516.1599740787398842458
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=RU7pNzgf;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f44.google.com with SMTP id z1so6495851wrt.3
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=ulIAdqhilTPTMHv79MJPle9ggzA7gGPn+jRx18LrApk=;
        b=RU7pNzgfzPmb2t5RCzRieWaK/BhZgLjGdFLxICP//AZPy3qhi8rLTqCEKw1XOtXAL0
         YOOP0Ah/Z+fwbFSS15A2erqLpq4sEWDKOB3rrbo1mt+BWEpPKTCCyZ8K2nYR9rPDwH75
         SOkQsG4g5UajRUVGtDqAp2D+QhiJUMB22xiI0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ulIAdqhilTPTMHv79MJPle9ggzA7gGPn+jRx18LrApk=;
        b=t9yM5l9112vT9/9a+UOwq1BWj6NTbvinJNve17c1pzd40nM2/R8AHkG7++LHNoTB6O
         LTK3EUZma3MYOO1yKHfr+IUoyQLMBTMapmXsXigqtYkPI9w6frLUqPBNFUUF4m3naezK
         ZE+XT081xFpprgHq/lOHCq1NxHEe9Um0HtLEsERkVQFH8OKRHgVo5G1fxYy1xbMvRfaY
         xzdkrDAuPratNB91mG3d8TUQWaLdvFztDl6rAo2miE3xdP7i6t8TJfMFHXyT0OC1cVvN
         3PvxASB6z0VX1mmsspRI30eOYf4yLzbAVMYO/TbcHM7c33Hbtyt2Ij2YQ9zUiPyKvu5t
         Bc+g==
X-Gm-Message-State: AOAM533sopnNo9zDQSnYZgCoSrfoFBkCOUzsxMFYYttO56AJh0hswIhP
	PODEtXQg4GoNYxraicqtqyXD5ftxNXkopA==
X-Google-Smtp-Source: ABdhPJx676U8u+mim3KMxcIAHIcPB8RJCKP36MsKNaHR0M1/q9Qi7sdovAZEuMOTMC4hND6Jx1gL+w==
X-Received: by 2002:adf:84c3:: with SMTP id 61mr8526984wrg.131.1599740785709;
        Thu, 10 Sep 2020 05:26:25 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.25
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:25 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][warrior 34/41] build-perf/send-qa-email: Fallback to master as a comparision branch
Date: Thu, 10 Sep 2020 13:25:46 +0100
Message-Id: <20200910122553.2040430-34-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
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

