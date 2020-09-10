Received: from mail-wr1-f41.google.com (mail-wr1-f41.google.com [209.85.221.41])
 by mx.groups.io with SMTP id smtpd.web12.21911.1599744680781968236
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:31:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=EEIC/IOQ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.41, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f41.google.com with SMTP id g4so6729899wrs.5
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:31:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=IwXXNaNe+yfEwwQIqAzACSikuXsZ7boHIYw7dttbCIQ=;
        b=EEIC/IOQ7kStX4hnLa7xxWzg5I0gzQQDKc9jYHwis/2x841pGNNJ4iXiM6yWvPT8F1
         7InQanZZHSGnN3IsmEl6gzZAufgh+jyHiD4w6rXMJjOaYaTZHQuejeZsRC1hEBo5ZQc+
         tnEUDMlb3h8AHhsuR1F7jfCtpNI/AH+w/OhHA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IwXXNaNe+yfEwwQIqAzACSikuXsZ7boHIYw7dttbCIQ=;
        b=U9/sTm7u6Rdc/w4yXbablDrUPcj4dZYgQ22p0McNsplTBkrjP9CQpYX3+JCjIo1fPm
         HTxRoKrdwY4/sH5icsysHGwNoLFuOLjKoZ4Uey/bB9U2ywrtPQpR7/3HQP4MlqBClqxn
         bo4rmStawocY2NJwJwONNqhJYvpoWp8KzQqGlPNcVO6KA3JX3OCPuu/4KQs2jvsxtj5T
         VGe5uPTWEPU4YMYnNpx/WucJMrX2qG0/QGHUXa6E56nIOw9ld9U5FigF9rtftnbyf1HE
         quyIyd3oPd7sgNyX8z4YIWaaKtGgCHCoefni20fwLxpx49OqZNK1t5vASBfaJnyWNplF
         nS/A==
X-Gm-Message-State: AOAM531Fpue/8G/h8ECPBwJLnsPn/cjdwmeQCFTVEn27zy5E1ek92K2d
	mjyxEqlSe3Y1SxlRVq+PdOgZ7haOtjsZzw==
X-Google-Smtp-Source: ABdhPJwb+rZ+vKmUHy9mEjoalm0293OGwPlxcsV6JmVkcLDFoo/xus34m5t3WSg3GvqS6yJh/dthPA==
X-Received: by 2002:adf:c64e:: with SMTP id u14mr8719219wrg.373.1599744679039;
        Thu, 10 Sep 2020 06:31:19 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.31.18
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:31:18 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][thud 40/40] scripts/utils: Ensuring new logging is flushed from buffers
Date: Thu, 10 Sep 2020 14:30:35 +0100
Message-Id: <20200910133035.2044355-40-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/utils.py | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/scripts/utils.py b/scripts/utils.py
index 500138d..46346fb 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -233,18 +233,24 @@ def fetchgitrepo(clonedir, repo, params, stashdir):
     branch = params["branch"]
     revision = params["revision"]
     print("Checking for stash at: " + stashdir + "/" + repo)
+    flush()
     if os.path.exists(stashdir + "/" + repo):
         print("Cloning from stash to %s..." % sharedrepo)
+        flush()
         subprocess.check_call(["git", "clone", "file://%s/%s" % (stashdir, repo), "%s/%s" % (clonedir, repo)])
         subprocess.check_call(["git", "remote", "rm", "origin"], cwd=sharedrepo)
         subprocess.check_call(["git", "remote", "add", "origin", params["url"]], cwd=sharedrepo)
         print("Updating from origin...")
+        flush()
         subprocess.check_call(["git", "fetch", "origin"], cwd=sharedrepo)
         subprocess.check_call(["git", "fetch", "origin", "-t"], cwd=sharedrepo)
     else:
         print("Cloning from origin to %s..." % sharedrepo)
+        flush()
         subprocess.check_call(["git", "clone", params["url"], sharedrepo])
 
+    print("Updating checkout...")
+    flush()
     subprocess.check_call(["git", "checkout", branch], cwd=sharedrepo)
     # git reset revision==HEAD won't help, we need to reset onto the potentially fetched origin branch
     subprocess.check_call(["git", "reset", "origin/" + branch, "--hard"], cwd=sharedrepo)
-- 
2.25.1

