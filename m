Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
 by mx.groups.io with SMTP id smtpd.web12.21907.1599744673914597285
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:31:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ExgszWzH;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.52, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f52.google.com with SMTP id m6so6759651wrn.0
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:31:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=fH8lct7uDlJnn9ZXEy2FNhTGxYBwO/EKVilaz27JFxg=;
        b=ExgszWzHPLIunCpVJQUk+6V1f9Cz194GPiOT8RGn++q1919ku4aA9ZgENKvOzqppOp
         9V82hgGUBA3YwYWz/TGCiHPKG7H8ZZ0BNkzb2EAfmcDxP63aL3MGYc+hS+h50+gFKBrZ
         h/CbGMBfu/77Kw/fLc7BZwVb1he3FKiU/L9zs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fH8lct7uDlJnn9ZXEy2FNhTGxYBwO/EKVilaz27JFxg=;
        b=Qt5AwlkBPVJMqMPmuRQLJAjqM701ISC9QZVw95CbCozSIv1Ld/h8BFham4yUb9FWO6
         BkyGfmsGQ1OIVMijCDVI8Ep1veh6E8NuCOi4YJtwQn7UGG+r3SVRevXHrW7NlIuseNLf
         W3Rp7wHb5qTDNIvUaVexl5FRDTCyTkQ0DAbYhJGqDDQSw88TR8jW1O1o0hFOBGRGQP/Z
         6iCNjN0gV5iHqbjU4dhEg+xHp3M9FYTlC/brb4krSvoyoLcUaYslxPpaP06mfc/S3Omq
         7YMDMLykWwExU2n2rVzKQoIJjGa2yBB0jORUnwHqpon0Cr98OT0oVr32XJobjQVgmz5Y
         F5ag==
X-Gm-Message-State: AOAM530xhws6u52X1oecTELUoWAH/GKbaWn5zJ11a93JnkeEUlmEmKVw
	7VaJHJ629l9C+zAgwgEPGGquTt+O/fnnTw==
X-Google-Smtp-Source: ABdhPJwzWBj36nwU3d10GabzEwAVqHnLyQSokErKNfnY8dPcm3uoj2ImHW5GoqKCMfcNIE1aeHjBsQ==
X-Received: by 2002:adf:df0f:: with SMTP id y15mr8866557wrl.127.1599744672008;
        Thu, 10 Sep 2020 06:31:12 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.31.11
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:31:11 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][thud 34/40] send-qa-email: Fix stable branch test result history issues
Date: Thu, 10 Sep 2020 14:30:29 +0100
Message-Id: <20200910133035.2044355-34-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
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

