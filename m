Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
 by mx.groups.io with SMTP id smtpd.web12.20518.1599740788804777145
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=HDXmzpRo;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.42, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f42.google.com with SMTP id g4so6493850wrs.5
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=fH8lct7uDlJnn9ZXEy2FNhTGxYBwO/EKVilaz27JFxg=;
        b=HDXmzpRo7cZBmIyu9+VXffFxkgg6dCdTzitYN3RE+BuOEVl68VjFIpfEX2iXmTLekZ
         FpLJp/lxjtnquABFzTtR4ftu3KmKq0hzYPaxUMSx6limxlCQVmPYnjXlEYsw6Pdofxik
         uzTpIwdmOkiHR5G8aS2OhdBwbcijoubyRBkkY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fH8lct7uDlJnn9ZXEy2FNhTGxYBwO/EKVilaz27JFxg=;
        b=rzzOvGOUxZW8v4TMFe0cjaziYdI13jKNYSWgMTNmG4eyJXvOSi+bPwvZREZVKWmvCr
         x84zlH3yj50A5S2Gn6Z3xukeNkmG2OMfOnYtgE8Afrxcu2qR7HyiWk1NlpQMG+dosK81
         Yu/EX/KZGozBs8A5uF15zhsLJ4He5SSnXfxNSY+FQ7oe98r72F3VYYf71wJ94rBpBjul
         Ep0vnn1+6EVlEaDlGdM6MIhZMAT/3VpZmEctZAW02ianO+ZVsBzoZmL4TaRrBYUXsr+H
         SPQzYK6wgF7N1hcPOzPhf9ClcMsdQ5DSfm6g5cl5JczMLVkVfNSmAiUAMxCdtrEa2k+1
         ZVuQ==
X-Gm-Message-State: AOAM531OmIZQqEW4ydIveuRAbrjiKGqV4St8zvt96dT7X3oMHV9hCzdr
	a8+SOEn0GJidP+9PO37D8Aolh8JC3OvL3A==
X-Google-Smtp-Source: ABdhPJzFvrGOY30k3AscBVUn8jY0mbyNTXSu/rppmrWcNqGou2nfXi5gWQrOLTafQK1B8cJSim6rXQ==
X-Received: by 2002:adf:bb44:: with SMTP id x4mr8717035wrg.76.1599740786805;
        Thu, 10 Sep 2020 05:26:26 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.25
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:26 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][warrior 35/41] send-qa-email: Fix stable branch test result history issues
Date: Thu, 10 Sep 2020 13:25:47 +0100
Message-Id: <20200910122553.2040430-35-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
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

