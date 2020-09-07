Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
 by mx.groups.io with SMTP id smtpd.web10.6462.1599511842818357633
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Sep 2020 13:50:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=M80NCRY+;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.54, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f54.google.com with SMTP id e17so15380219wme.0
        for <yocto@lists.yoctoproject.org>; Mon, 07 Sep 2020 13:50:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=7RaiiAw3OgiudnpdNmaC1zznUJGU262NA+2Psp+R4CI=;
        b=M80NCRY+zb90QG1CdpnFHqPC48XdGQ3WzN4IHfam176UNCnDTxUogt7rgl9gL8AqRW
         2qfLGoIFUdx0LFrX1H0QYrrC0532nnIt8g+bcWGZvFAew+OPQbXInWonuWoRTSkktYpr
         tJdq5m36OA/ZFquUJCh9D5HuQR7X0fqstD5BU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=7RaiiAw3OgiudnpdNmaC1zznUJGU262NA+2Psp+R4CI=;
        b=b/GnpwpbXmkZmBC7uDV6K+ahnoB/1lwSZ2A49DTSWdTxeR2Q84fIkRJhkAHLQ0oONI
         GXaYh83dyjmQ5VV6Ji/pJP18IVot7G9xYL2OWjHk/GhMS+z5fivGtmwjK0iY5HT4Nnz0
         6dw9h1vnwC6Vk8vaYQCDs9hDYFaynnYOPDsicoT2nPtOQcrjEOHrgH3S/82ScM/gIQaA
         uQhOZVFTkJ+gwFyN40y9enJZM14oDGjSQRys5C8oG0ntpYsKCZlbd4KDKAWYev5i4iUI
         kcscVCJv8xA7IgtDTWO5ox2skYodcfvIP1pJQ/66v140tPvaRbv0Rf9Ueo2qAckgIeEK
         xkJw==
X-Gm-Message-State: AOAM530vawckmdMTfKlKfaNcRzCQyQVFxSGVIOKYWRao4Ic2j2m8ufZl
	UgKTMJvPOefwuLCRNIr5aCeIGuFhLHL8Ow==
X-Google-Smtp-Source: ABdhPJxiXe9Zr0vNZXC4ipWi6Dzt/ETzCM36nZ3MWHOGKVfpdhxKj148vinn/J3W8p6GDj9F1jv5dg==
X-Received: by 2002:a1c:4c06:: with SMTP id z6mr1028278wmf.40.1599511841064;
        Mon, 07 Sep 2020 13:50:41 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (e.4.4.b.0.8.f.4.f.c.f.0.9.0.5.8.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:8509:fcf:4f80:b44e])
        by smtp.gmail.com with ESMTPSA id l16sm6821284wrb.70.2020.09.07.13.50.40
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 13:50:40 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][zeus 07/32] scripts/run-config: Handle multiple builds racing with lockfile for buildtools
Date: Mon,  7 Sep 2020 21:50:09 +0100
Message-Id: <20200907205034.1941516-8-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
References: <20200907205034.1941516-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/run-config | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/scripts/run-config b/scripts/run-config
index 8e175d0..5c6a9ca 100755
--- a/scripts/run-config
+++ b/scripts/run-config
@@ -10,6 +10,7 @@ import subprocess
 import errno
 import fnmatch
 import glob
+import fcntl
 
 import utils
 
@@ -107,10 +108,15 @@ if bttarball:
     btdir = args.builddir + "/../buildtools"
     if not os.path.exists(btdir):
         btdlpath = utils.getconfig("BASE_SHAREDDIR", ourconfig) + "/buildtools/" + os.path.basename(bttarball)
-        if not os.path.exists(btdlpath):
+        btlock = btdlpath + ".lock"
+        if not os.path.exists(os.path.dirname(btdlpath)):
             os.makedirs(os.path.dirname(btdlpath), exist_ok=True)
-            subprocess.check_call(["wget", "-O", btdlpath, bttarball])
-            os.chmod(btdlpath, 0o775)
+        with open(btlock, 'a+') as lf:
+            fileno = lf.fileno()
+            fcntl.flock(fileno, fcntl.LOCK_EX)
+            if not os.path.exists(btdlpath):
+                subprocess.check_call(["wget", "-O", btdlpath, bttarball])
+                os.chmod(btdlpath, 0o775)
         subprocess.check_call(["bash", btdlpath, "-d", btdir, "-y"])
     btenv = glob.glob(btdir + "/environment-setup*")
     # We either parse or wrap all our execution calls, rock and a hard place :(
-- 
2.25.1

