Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web10.22136.1599744648845154219
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 06:30:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=MNunm505;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.53, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f53.google.com with SMTP id z4so6738219wrr.4
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 06:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=22RUU7x+sYLH000/zQ93imq1MO3WIGt5rRi4C23pdOc=;
        b=MNunm505GmUnCjnDGa4fFg8wQwK3MfRR0jhTi1fgq7jmPgZh4pTyl++DxLCojpT2WV
         qOZ+11zPW6ZgpsufGWlcU/PjNz/MD28CT+e6Eip0dBbF74nfFWjOHp1AYSPJc7valkI6
         xkw8XwmvYr9qhk/LTfhj9zs4bu7Rk+htRZVT8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=22RUU7x+sYLH000/zQ93imq1MO3WIGt5rRi4C23pdOc=;
        b=T24OzlwD0ytGK6hY9yHqfS6IgqpKFbHGr6AiWCl+kD2S9apzdm6wblcGjJW0zbfeoU
         G52UKTRZlfskW3wrppnTf14nHyMZvjFsJiA2TDWb9ZEjQVucRnUYkE3ky1EmxM9s1z8f
         rIPrH8M3ilb0+q1fbGhUi9AvMEvD8F11h6j6EUPnOpZNfxuh72n4426e76tubq7Uhh7v
         T4Bw4U+5GmRXDqWUHVQ1R84p48psfmKrML33FyZmlkYOcezs867TNZl4Cmr6O6WlWJKU
         weqs1p5N1RuK4ZoCPo30uyPw7zJjhLG7MmlqYIKuU7JjXKpbFbdzanJYq0625uj1H3H2
         4xXw==
X-Gm-Message-State: AOAM530P5lZ4pgTv5IycYFN+eA9m7faZrVnxm7+tAFX5RUz52Ge/5gWY
	ytNErsCSpEy0T8+dMHGGbeDCl9kNTn3LBQ==
X-Google-Smtp-Source: ABdhPJxJT7NDzI+kMk4cOqqdJAF4KOQH9JmPpoMZ2rcCHKiZksp23HhYTP5KQtW9PoUG0PTCukuMPQ==
X-Received: by 2002:adf:eece:: with SMTP id a14mr8693312wrp.330.1599744646937;
        Thu, 10 Sep 2020 06:30:46 -0700 (PDT)
Return-Path: <richard.purdie@linuxfoundation.org>
Received: from hex.int.rpsys.net (2.f.a.6.5.4.b.4.5.7.2.f.a.5.0.6.c.3.f.5.a.b.a.0.0.b.8.0.1.0.0.2.ip6.arpa. [2001:8b0:aba:5f3c:605a:f275:4b45:6af2])
        by smtp.gmail.com with ESMTPSA id t1sm3522330wmi.16.2020.09.10.06.30.45
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 06:30:46 -0700 (PDT)
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: yocto@lists.yoctoproject.org
Subject: [PATCH][autobuilder-helper][thud 12/40] prepare-shared-repos: Use temporary non-NFS directory for layer clones for speed
Date: Thu, 10 Sep 2020 14:30:07 +0100
Message-Id: <20200910133035.2044355-12-richard.purdie@linuxfoundation.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
References: <20200910133035.2044355-1-richard.purdie@linuxfoundation.org>
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

