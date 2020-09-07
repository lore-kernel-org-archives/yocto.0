Received: from mail-wm1-f44.google.com (mail-wm1-f44.google.com [209.85.128.44])
 by mx.groups.io with SMTP id smtpd.web11.6487.1599511862925145232
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:51:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=XNOOlb38;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f44.google.com with SMTP id k18so83546wmj.5
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:51:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=ulIAdqhilTPTMHv79MJPle9ggzA7gGPn+jRx18LrApk=;
        b=XNOOlb38R2R4WQPo6y+gURswTdWlz7pi06T/Zu47DHRoJ6QWYrc0JYPoSV3d2TXkBT
         /s2xd/qRLD3FXPx3iGFtC2MeLQD6c0ss8624WYZYlEXkou80q2POwXIs1TR7JVf5jQVm
         yQNoZWD5SQicX8rv7wSxaOYtKRH8tCEJfZhD4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ulIAdqhilTPTMHv79MJPle9ggzA7gGPn+jRx18LrApk=;
        b=FzDDJd6NXLUIePUfhg5Ucq5IDor/+ujKinyU4tbJyzzjRM8VJNYEa6VKiN/3JYe68A
         CUoODbF4+Bd0j7lhhdr4y/kvUelHkhdmqzVTrnH7kA5UC9DPYaoNC6kyijRQ2I7Kmnl5
         rtNG62FO6o5MtnJegOr0m9MRnNd3B0sITn5s+gY6Ez6cU33gLAGdwaDSfdGNU2eFfihh
         f2/l5OrWpanz7sqUE9DOQnb0W7OsXsd/MA8kbQbi3Qd19aeAi+6aUyR9qJvKVgFwuoWj
         VqDJlnLxhGs4Tb7MUJUFTWUZP0UOthTgnSaJZqkdSMHpcAPod1UbdY+XkN/nLehejxud
         2CaA==
X-Gm-Message-State: AOAM532dos0qgynOlVwtty/NY1rEuZX4sjSo4tfiBnanSP94xYmlBWSr
	kan/7yMvXGdIxr8ztOJjGE4hwy8IoEz1iQ==
X-Google-Smtp-Source: ABdhPJzXoLpSDgQXOnTa//upPs45v9nLZ8rxpA2Lg6qlUrvgykWzfvbHUBQiOkfF1eovoxkFj1FouA==
X-Received: by 2002:a1c:5f46:: with SMTP id t67mr1001558wmb.71.1599511861144;
        Mon, 07 Sep 2020 13:51:01 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.50.59
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:51:00 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][zeus 25/32] build-perf/send-qa-email: Fallback to master as a comparision branch
Date: Mon,  7 Sep 2020 21:50:27 +0100
Message-Id: <20200907205034.1941516-26-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
References: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
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

