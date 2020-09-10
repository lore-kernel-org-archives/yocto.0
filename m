Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web11.20831.1599740790077653948
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:30 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=YLRGTgdM;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f53.google.com with SMTP id z4so6506421wrr.4
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=kyhwZ+pWaEVMKG4VgvIcgvuT6HXdBwoFIi85c9bvamk=;
        b=YLRGTgdMe9rb/4NQTGX51vC1uk8c1AhPGoRycDyTjJxUih2IUGof4mKmtwFstnN5FB
         qTdQvGFMv9UP/IsqW0/hdbpwW4mrWVNk1G8sDf/QaPwV6LRCAJnXc68heDV2RAz3V9uk
         rftcKelZu7qP0xCqKHvMIppiMiTk9CCpiusdY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kyhwZ+pWaEVMKG4VgvIcgvuT6HXdBwoFIi85c9bvamk=;
        b=H1rxInrKfxxuEjDclenlZiHi81PmKAr4/ntyHAFcACEU4uREWDzxXl8AgVwfGyEchc
         5xE57wWoMcGQfjuVomQJe20jUcKw5Epbh/Xph0iBNKN32YLNs4EayPqSiyd1khOF/Xik
         NKDv0WMOl8uqwSi9DTtfgrQbGlgzF/pZ5twBGmlGkgD3QApTGFoeqXfZOr8m4AzY30dQ
         DsRbbm8F3vFVWOCC5+TwocgGUdNNUTPX+VDArRoNM867v2wOa7SezI2EatnV6rmwMBbP
         T/BhZHA9h2ZjKKQIXR9ykoRtajRLj/8ZQYyMGG6udbHtiPp+Z+JraTYRHLOSgLc0i1Ea
         8G7w==
X-Gm-Message-State: AOAM532RUxoh4xeS8sklMUkRSsY8BsWaVlu3t0q0lS396Fyfhj8Zam2+
	7ZmosNruxtYgdbirRfBrtt3dB9PFBs3APA==
X-Google-Smtp-Source: ABdhPJwR2udv2T4PUWKDE6dylNjYMlC73dunB0QTuJbC9MLVPsKHZmCPIAMbmmD275igqOEUAC59BA==
X-Received: by 2002:adf:f6cd:: with SMTP id y13mr8558117wrp.161.1599740788337;
        Thu, 10 Sep 2020 05:26:28 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.26.26
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:26:27 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][warrior 36/41] scripts/utils: Add more logging for fetchgitrepo
Date: Thu, 10 Sep 2020 13:25:48 +0100
Message-Id: <20200910122553.2040430-36-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/utils.py | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/scripts/utils.py b/scripts/utils.py
index ec43832..1dfc9a2 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -232,13 +232,17 @@ def fetchgitrepo(clonedir, repo, params, stashdir):
     sharedrepo = "%s/%s" % (clonedir, repo)
     branch = params["branch"]
     revision = params["revision"]
+    print("Checking for stash at: " + stashdir + "/" + repo)
     if os.path.exists(stashdir + "/" + repo):
+        print("Cloning from stash to %s..." % sharedrepo)
         subprocess.check_call(["git", "clone", "file://%s/%s" % (stashdir, repo), "%s/%s" % (clonedir, repo)])
         subprocess.check_call(["git", "remote", "rm", "origin"], cwd=sharedrepo)
         subprocess.check_call(["git", "remote", "add", "origin", params["url"]], cwd=sharedrepo)
+        print("Updating from origin...")
         subprocess.check_call(["git", "fetch", "origin"], cwd=sharedrepo)
         subprocess.check_call(["git", "fetch", "origin", "-t"], cwd=sharedrepo)
     else:
+        print("Cloning from origin to %s..." % sharedrepo)
         subprocess.check_call(["git", "clone", params["url"], sharedrepo])
 
     subprocess.check_call(["git", "checkout", branch], cwd=sharedrepo)
-- 
2.25.1

