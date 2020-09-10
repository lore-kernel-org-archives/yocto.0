Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web11.22159.1599744640335676074
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:30:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=LJU64XLJ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f41.google.com with SMTP id z1so6728147wrt.3
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:30:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=uxwuwtw/wZrzZMxP/XuGv3jxdDyZLZl6j+gXz0/SxQ4=;
        b=LJU64XLJqp3yukJf6AdOItT0ibjIwZGaHC8LopqlvFUG2KUeCMz8VS1FC7IpLMGYoM
         kfNFi3maPlvYjGWns+E4sy7L4GfH7TgndNHH1OA95kAC1yHD/JgXvG+sSdPaa90Ky8qx
         LKzEmH/5c4o9jScFmb8z9jJv5fA858WApXd+4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uxwuwtw/wZrzZMxP/XuGv3jxdDyZLZl6j+gXz0/SxQ4=;
        b=R8mBbvcstfaU0uWrK4iW0HOclMn8psmD4ySnbeH4IYN8pkPV4LE0cSPauVxaiPhRlc
         xWi1FMPMqFssiWq4t2jM4XEfbDlDpJ8mM72ijUBzT0Fj7aPBWpUc3/jAIhGj5hEKdvaE
         bqh2cezVAt1dnYPh0yOAYjgSlIQgswihJX83gelLCh1oRYPVvvyATE0xTCDENT2TDbvW
         43sUM4D7VCeNVFEWUlGbpG69y8e7bTQcvl3d5YNovsiSajcypeWvgtHkMcLY6cnBPmqt
         ScEzE+jzJ5MbBYRF1wRhlmd6XEjoFaw2pIJdXjaLPPxLJpenVXmn3NP/mJTZRZbwi/qQ
         aZsQ==
X-Gm-Message-State: AOAM530HQQwhgMeJ2ebaUm18lj/JaOnclr2clYCRPTH2okyyEoXWLcH/
	fkUXyHv5gMcY9Ya8PzJ2lgXaoAMshHQdZg==
X-Google-Smtp-Source: ABdhPJzt0f/DQDf+t0Lm1gV3+IJZlYSQT9vkLcNw6zushhi86BBAvecrzJVeuHgnQFrgGzxG9ufXcg==
X-Received: by 2002:a5d:5281:: with SMTP id c1mr9078122wrv.184.1599744638590;
        Thu, 10 Sep 2020 06:30:38 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.30.37
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:30:38 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][thud 03/40] scripts/send-qa-email: Allow force pushing of basebranch based comparisions
Date: Thu, 10 Sep 2020 14:29:58 +0100
Message-Id: <20200910133035.2044355-3-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/send-qa-email | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/scripts/send-qa-email b/scripts/send-qa-email
index a769bbc..ec89845 100755
--- a/scripts/send-qa-email
+++ b/scripts/send-qa-email
@@ -61,8 +61,12 @@ if 'poky' in repos and os.path.exists(resulttool) and args.results_dir:
     try:
         subprocess.check_call(["git", "clone", "git@git.yoctoproject.org:yocto-testresults", tempdir])
         subprocess.check_call([resulttool, "store", args.results_dir, tempdir])
-        subprocess.check_call(["git", "push", "--all"], cwd=tempdir)
-        subprocess.check_call(["git", "push", "--tags"], cwd=tempdir)
+        if basebranch:
+            subprocess.check_call(["git", "push", "--all", "--force"], cwd=tempdir)
+            subprocess.check_call(["git", "push", "--tags", "--force"], cwd=tempdir)
+        else:
+            subprocess.check_call(["git", "push", "--all"], cwd=tempdir)
+            subprocess.check_call(["git", "push", "--tags"], cwd=tempdir)
 
         regreport = subprocess.check_output([resulttool, "regression-git", tempdir] + extraopts.split())
         with open(args.results_dir + "/testresult-regressions-report.txt", "wb") as f:
-- 
2.25.1

