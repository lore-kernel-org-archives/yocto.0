Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.6766.1587602640957603174
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Apr 2020 17:44:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20150623.gappssmtp.com header.s=20150623 header.b=HnS5R0cu;
 spf=softfail (domain: sakoman.com, ip: 140.211.169.56, mailfrom: steve@sakoman.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9323AE01A4B; Wed, 22 Apr 2020 17:44:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.216.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pj1-f68.google.com (mail-pj1-f68.google.com [209.85.216.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DC18E01A0B
	for <yocto@yoctoproject.org>; Wed, 22 Apr 2020 17:43:59 -0700 (PDT)
Received: by mail-pj1-f68.google.com with SMTP id np7so1737632pjb.1
        for <yocto@yoctoproject.org>; Wed, 22 Apr 2020 17:43:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id;
        bh=HTZAE2fFNz5Dm1Uf4mBqbx+VUrNidDfq2mXE/nWIkiY=;
        b=HnS5R0cuYF1C9xvzPNsAOSN2LcGcl1x4jDPLfjXG+DUAbWHFF0Zugf222V/rxiL3wT
         ltTfVXGGnB/7fHe8wYQvGmgWZ+G/fiyqqya70G7V0VFNmJnODdhrAtocLz+N/z93agcx
         h3ctOG/dMU5gMh4OWKgnzRCJa7PMQmmV3z1qWZteS18RVJoub6AS2tQQvwTaziKB1X0A
         FwLu/jwkyCSFmEzN3SwKTP5gtrZC7xm02qrBMLwoSQv62ebb9TXswYMO5yFDxn0JXdk0
         OPdgxpBFP77+Suau8SjKk2N1By6V3E0H/YnbusgyEcp+DkIwfM0SxM/BbbSYLJX86T3C
         xDXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=HTZAE2fFNz5Dm1Uf4mBqbx+VUrNidDfq2mXE/nWIkiY=;
        b=mkwc/suR9oxeNuIxZMlc640gWpBVcvXpeWc/uTWv7qITxj7Svzz9DvHNfIyIOXvqBL
         5xz26LAmGqj36/Xk45oZ1xjjtjpyvsCjT/SjTWt+2xlEZdwqk1VhpvQPzJoJeJHyAv6N
         oJuOg+cwJfdPfJcWpWBygRFLpM52tUmu4hwVEYGrBK4AZlRE79vkwTmrLaabsDtwzAfy
         1vx8eYPyu2yCe174J00VsnKd2WHmjlcnDnTIpuTDFWf2mLyiRU7lwTBe3wBhYt/1U2Kj
         Y2pjmY9k9goFtJcWkw+9WXyxmPCywwLnNlkBLcqwHF/pdFgQfd1uOiU0UAGYXDf1bitF
         waQA==
X-Gm-Message-State: AGi0PuZz4eB7D3PzSibF/9W+Ox/r/QnTTCM1r5GxC2Q+EqiVF27QBFbX
	RCSi4e7T0OKBI3h/QFrQf4VAEMqiHLnEuQ==
X-Google-Smtp-Source: APiQypJAVvmzBwwMhzfLY6JgJ8I294QZrVtQuLN46zWgn14EdQB5CFcexX+KcA/KgWCGfqBESxj1BQ==
X-Received: by 2002:a17:90a:bf86:: with SMTP id d6mr1394610pjs.180.1587602638835;
        Wed, 22 Apr 2020 17:43:58 -0700 (PDT)
Received: from octo.router0800d9.com (rrcs-66-91-142-162.west.biz.rr.com. [66.91.142.162])
        by smtp.gmail.com with ESMTPSA id v64sm736901pfb.20.2020.04.22.17.43.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Apr 2020 17:43:58 -0700 (PDT)
From: "Steve Sakoman" <steve@sakoman.com>
To: yocto@yoctoproject.org
Cc: Steve Sakoman <steve@sakoman.com>
Subject: [PATCH yocto-autobuilder-helper 1/2] scripts/utils.py: Fix confusing naming of getcomparisonbranch() return value
Date: Wed, 22 Apr 2020 14:43:43 -1000
Message-Id: <20200423004344.29216-1-steve@sakoman.com>
X-Mailer: git-send-email 2.17.1

Signed-off-by: Steve Sakoman <steve@sakoman.com>
---
 scripts/utils.py | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/scripts/utils.py b/scripts/utils.py
index 68652d9..25eba31 100644
--- a/scripts/utils.py
+++ b/scripts/utils.py
@@ -358,9 +358,9 @@ def getcomparisonbranch(ourconfig, reponame, branchname):
     if (reponame + ":" + branchname) in getconfig("BUILD_HISTORY_FORKPUSH", ourconfig):
         base = getconfig("BUILD_HISTORY_FORKPUSH", ourconfig)[reponame + ":" + branchname]
         if base:
-            baserepo, basebranch = base.split(":")
-            print("Comparing to %s\n" % (basebranch))
-            return branchname, basebranch
+            baserepo, comparebranch = base.split(":")
+            print("Comparing to %s\n" % (comparebranch))
+            return branchname, comparebranch
     if (reponame + ":" + branchname) in getconfig("BUILD_HISTORY_DIRECTPUSH", ourconfig):
         return branchname, None
     return None, None
-- 
2.17.1

