Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
 by mx.groups.io with SMTP id smtpd.web10.6480.1599511864016325151
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:51:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Z+QPwu2r;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f43.google.com with SMTP id c19so13008197wmd.1
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=fH8lct7uDlJnn9ZXEy2FNhTGxYBwO/EKVilaz27JFxg=;
        b=Z+QPwu2rKLXb8xZo/82gFKvVT2BuUR4lG6anpu+Vo1Aq+BsavVcw4LV2VVXBuCshp7
         Uj1t9uD9jeXmo6XNTgPa9MocMA3BConGSIWS+xX+WYWgcuKC4o6ePEXbnvfLyWgGPjE5
         bBuWTSo487mC9tyzR8QuX9ekvMmbJPmCJkupU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fH8lct7uDlJnn9ZXEy2FNhTGxYBwO/EKVilaz27JFxg=;
        b=nqmyzFkreGTQE/IjV3uwDcrXk2DvIh4AGKIK0BUElhLCfXlsEV6P1fbpbviMDZ4TCo
         91tLXYAcv77CuxefNNBDf8AiaF8k+LoG/LAm3s/glmNsGHwcwvCgU8vJVw4SAKH/Xa4C
         RoTkGPyoVi06vHwnW068EzRZtYm1OjshW1L6zaSfpOd3yfluDUWYFECl7oaqOeXOdqpt
         AQbwX1yMoXUz5xILJQmm9NJo1Ocsmn2VxH+QeUrCbuxRHOxzbSP7cz42366W2Y7JMox1
         NUqjYpyWHuA5O77apelPJXKm+OIptw+gibjCpSmuG+0YSlp/4TROJiA636yEUVzVKg5J
         M9hQ==
X-Gm-Message-State: AOAM531U5t8rIcbnTrJnYhmAmTOSABxFJwuPTaIcqCpoyOwVOn9bCxHG
	uFn1yX8H1QBZ8ZqAiGwH5zz8b3pdPiAHSA==
X-Google-Smtp-Source: ABdhPJxsjAEfc3t+xSCccZURQYcjd7f1wkZQizcav87HXkPW4HW3zFDOnqsevsi72LbNMb0phqJXyQ==
X-Received: by 2002:a1c:3886:: with SMTP id f128mr1009217wma.121.1599511862221;
        Mon, 07 Sep 2020 13:51:02 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.51.01
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:51:01 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][zeus 26/32] send-qa-email: Fix stable branch test result history issues
Date: Mon,  7 Sep 2020 21:50:28 +0100
Message-Id: <20200907205034.1941516-27-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
References: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

On stable release branch builds, it will clone "master" since comparebranch
is None. It will then fail to push since there is already a dunfell
branch upstream with changes on which it needs to rebase on top of.
The change to use shallow clones significantly increases this problem.

To fix this, fall back to cloning basebranch by name, then master
if it doesn't exist.

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/send-qa-email | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/scripts/send-qa-email b/scripts/send-qa-email
index b4d4cec..abc17e2 100755
--- a/scripts/send-qa-email
+++ b/scripts/send-qa-email
@@ -55,8 +55,8 @@ if 'poky' in repos and os.path.exists(resulttool) and args.results_dir:
     if comparebranch:
         extraopts = extraopts + " --branch2 %s" % (comparebranch)
     elif basebranch:
-        print("No comparision branch found, comparing to master")
-        extraopts = extraopts + " --branch2 master"
+        print("No comparision branch found, comparing to %s" % basebranch)
+        extraopts = extraopts + " --branch2 %s" % basebranch
 
     report = subprocess.check_output([resulttool, "report", args.results_dir])
     with open(args.results_dir + "/testresult-report.txt", "wb") as f:
@@ -64,7 +64,16 @@ if 'poky' in repos and os.path.exists(resulttool) and args.results_dir:
 
     tempdir = tempfile.mkdtemp(prefix='sendqaemail.')
     try:
-        subprocess.check_call(["git", "clone", "git@git.yoctoproject.org:yocto-testresults", tempdir, "--depth", "5"])
+        cloneopts = []
+        if comparebranch:
+            cloneopts = ["--branch", comparebranch]
+        elif basebranch:
+            cloneopts = ["--branch", basebranch]
+        try:
+            subprocess.check_call(["git", "clone", "git@git.yoctoproject.org:yocto-testresults", tempdir, "--depth", "5"] + cloneopts)
+        except subprocess.CalledProcessError:
+            print("No comparision branch found, falling back to master")
+            subprocess.check_call(["git", "clone", "git@git.yoctoproject.org:yocto-testresults", tempdir, "--depth", "5"])
 
         # If the base comparision branch isn't present regression comparision won't work
         # at least until we can tell the tool to ignore internal branch information
-- 
2.25.1

