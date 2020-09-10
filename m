Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web10.22170.1599744679714743367
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:31:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=ZTZQIAhP;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.43, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f43.google.com with SMTP id m6so6760005wrn.0
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:31:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=fH6SUmWRWhWa4uPyxmp0eVVQ8QaqhDjKY56tRdKaLqo=;
        b=ZTZQIAhPxJ3sxF4VICmTGJDWHb1Iny+eDxOLD6wMbJtO0XGhcblNw+tOCfHVdYOQST
         EiMZ9voSQOYZcu5Rc6V18CKmIwpGDhOJQzljXlBZSbKz/U3hndtA+HiYQLYnel0Pi2uC
         2aVWKdt7MnL0lsLT+w3nkE5JOGqDadHloqYIs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fH6SUmWRWhWa4uPyxmp0eVVQ8QaqhDjKY56tRdKaLqo=;
        b=BE7zRYx7tQXF61wfGXH5AdKaTzbnIlFB3Yp7akQVVolqADgReDNgAPsj+ZxTh39vyt
         Y+Yq/j9xG6PHsz2e6XnPfs8MbK7OubkC2sFrsWO5pFTthrKnvpL3FXb3Zyy4PRz7LgnU
         9b6Kmf5R4NrRvTtmyWr/JGUJ9mYfXkfafQG75/ZBq4suD8aZf5ldQqcJ9xRIFIbwLJm5
         lYF8vB7nkPtV3KoIUg0ufMP1Q9Dy+MfcDky8IRjlUQna/n9oCM/M0xyDixpaFyrcJiX+
         knpF58RVsJ7GpSliyh9xWx3JzGJBzL+sR8TMsx6eYWfy1myuQTSZiuZ/x+4OxblciDPa
         hEyA==
X-Gm-Message-State: AOAM5304VJTxn31tJg4n5HAmZjQBHJdaMtH9jPi7KhxsXMLVd1buBLEx
	mYbBfmHNLmfVaNMy5ljW1sU3vSN/gYCYiA==
X-Google-Smtp-Source: ABdhPJxVuL4q1JwRqaR3QNW5AE//gTrSqXINceZKPgKmN/jPpF/QGdDET5sXsTFOZ+BW4zgwRWlU2A==
X-Received: by 2002:adf:e4cc:: with SMTP id v12mr8948214wrm.216.1599744677994;
        Thu, 10 Sep 2020 06:31:17 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.31.17
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:31:17 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][thud 39/40] scripts/utils: Add more logging for fetchgitrepo
Date: Thu, 10 Sep 2020 14:30:34 +0100
Message-Id: <20200910133035.2044355-39-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/utils.py | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/scripts/utils.py b/scripts/utils.py
index 084f575..500138d 100644
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

