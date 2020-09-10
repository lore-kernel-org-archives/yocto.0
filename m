Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
 by mx.groups.io with SMTP id smtpd.web10.20775.1599740760868014186
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 05:26:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=bSlabGbe;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.44, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f44.google.com with SMTP id k15so6457943wrn.10
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 05:26:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=22RUU7x+sYLH000/zQ93imq1MO3WIGt5rRi4C23pdOc=;
        b=bSlabGbeKM9FtYRI34exCQY1gI89ug0Ty8l/phvM6WQtptR+BzS1ZxjPtuctiZcqA3
         rUDytok08bc24rnt0FkaytmoU7FGQ+1N0COuVF3Lqxmps4Sf6HuuxH4DuTkzvT0CNCBv
         k5fgo4p1bP67qBuyefz9oKTaklis1gYJNKPKw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=22RUU7x+sYLH000/zQ93imq1MO3WIGt5rRi4C23pdOc=;
        b=mDmDG2MExSueY2vxXiAndI73EubgjqVu5PpSNiOR2fDHoWvqXoeTtDAwwf48REsz4H
         qm1vZ0dzw8r6a3tJxdvGwYJLE78olH0gR+Gfe8e+bAXIvTOmqi2gprbvi7WpkFaISo5e
         Pm9ZiD6LEAQYHeVXUioWTdHA+Z5Fof0SEHwwD7bT/6kWLLRaQqGZFiwsfl2WOQPGuxmc
         ypVuvw7FN1NE5nj0oTw8dlSSpcHHDzvbVYiPlWdz7oQb7V0D1LLsvmhibOoUPSaN8+5I
         mP/Nrv6LieN0ux098EB2cb7YgRuikbE38JwQWn8Hi5j3AsHhYwNH9cvrelaet1C7qdC8
         jIag==
X-Gm-Message-State: AOAM532isEylGjP1Ft1Xe6gUA5zENltDwTvGGhKWlvmrL4erq3F0We55
	BJWBHn9YleF+Ya0MgHTcgQbcKKe5ude5gg==
X-Google-Smtp-Source: ABdhPJyOiHUdqvO5rOlGFg0bjEl+S5ZvrMwNEx6xXyx717UfUcY/hPfu+GNUO8ycFKECGyZIDnXtog==
X-Received: by 2002:a5d:4e0f:: with SMTP id p15mr8763248wrt.155.1599740759202;
        Thu, 10 Sep 2020 05:25:59 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id x2sm7963465wrl.13.2020.09.10.05.25.58
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 05:25:58 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][warrior 06/41] prepare-shared-repos: Use temporary non-NFS directory for layer clones for speed
Date: Thu, 10 Sep 2020 13:25:18 +0100
Message-Id: <20200910122553.2040430-6-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
References: <20200910122553.2040430-1-richard.purdie@linuxfoundation.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
---
 scripts/prepare-shared-repos | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/scripts/prepare-shared-repos b/scripts/prepare-shared-repos
index eb89f5b..9ed0772 100755
--- a/scripts/prepare-shared-repos
+++ b/scripts/prepare-shared-repos
@@ -8,6 +8,7 @@ import os
 import sys
 import subprocess
 import errno
+import tempfile
 
 import utils
 
@@ -31,8 +32,11 @@ with open(args.repojson) as f:
 
 stashdir = utils.getconfig("REPO_STASH_DIR", ourconfig)
 
-for repo in sorted(repos.keys()):
-    utils.printheader("Intially fetching repo %s" % repo)
-    utils.fetchgitrepo(args.sharedsrcdir, repo, repos[repo], stashdir)
-    if args.publish_dir:
-        utils.publishrepo(args.sharedsrcdir, repo, args.publish_dir)
+with tempfile.TemporaryDirectory(prefix="shared-repo-temp-", dir="/tmp") as tempdir:
+    for repo in sorted(repos.keys()):
+        utils.printheader("Intially fetching repo %s" % repo)
+        utils.fetchgitrepo(tempdir, repo, repos[repo], stashdir)
+        if args.publish_dir:
+            utils.publishrepo(tempdir, repo, args.publish_dir)
+
+    subprocess.check_call(["rsync", "-a", tempdir + "/*", args.sharedsrcdir])
-- 
2.25.1

