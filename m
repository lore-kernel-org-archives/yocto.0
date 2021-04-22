Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by mx.groups.io with SMTP id smtpd.web10.8822.1619074392292297076
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Apr 2021 23:53:13 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: intel.com, ip: 134.134.136.100, mailfrom: anuj.mittal@intel.com)
IronPort-SDR: SPVzTfmsa1cmUyfxVXFAPsZpAH7YGpDDqNwr5ZRy02wvUlecFMBdh9Wlp1e7ZS8Ef12TjCLoSw
 DzxSf3ZnOHPg==
X-IronPort-AV: E=McAfee;i="6200,9189,9961"; a="259791134"
X-IronPort-AV: E=Sophos;i="5.82,242,1613462400"; 
   d="scan'208";a="259791134"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Apr 2021 23:53:06 -0700
IronPort-SDR: G9WPtnJG0/uQfJja/5Z1xnza4ATBqIwJ4KHAptR+KCjz38TucPjFwjnVfZNUUS+E7ScLNJ0doF
 9JhB63PM1NPw==
X-IronPort-AV: E=Sophos;i="5.82,242,1613462400"; 
   d="scan'208";a="535111323"
Received: from fkong1-mobl2.gar.corp.intel.com (HELO anmitta2-mobl1.gar.corp.intel.com) ([10.249.69.141])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Apr 2021 23:53:05 -0700
From: "Anuj Mittal" <anuj.mittal@intel.com>
To: richard.purdie@linuxfoundation.org,
	yocto@lists.yoctoproject.org
Subject: [yocto-autobuilder2][PATCH] schedulers.py: build docs for hardknott/1.50 as well
Date: Thu, 22 Apr 2021 14:52:54 +0800
Message-Id: <20210422065254.14077-1-anuj.mittal@intel.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Signed-off-by: Anuj Mittal <anuj.mittal@intel.com>
---
 schedulers.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/schedulers.py b/schedulers.py
index 920daab..9d81806 100644
--- a/schedulers.py
+++ b/schedulers.py
@@ -364,7 +364,7 @@ schedulers.append(sched.Nightly(name='nightly-auh', branch='master', properties=
 
 # If any of our sphinx docs branches change, trigger a build
 schedulers.append(sched.AnyBranchScheduler(name="yocto-docs-changed",
-            change_filter=util.ChangeFilter(project=["yocto-docs"], branch=["master", "master-next", "gatesgarth", "dunfell", "transition"]),
+            change_filter=util.ChangeFilter(project=["yocto-docs"], branch=["master", "master-next", "hardknott", "gatesgarth", "dunfell", "transition"]),
             codebases = ['', 'yocto-docs', 'bitbake'],
             treeStableTimer=60,
             builderNames=["docs"]))
@@ -376,7 +376,7 @@ def isbitbakeDocFile(change):
             return True
     return False
 schedulers.append(sched.AnyBranchScheduler(name="bitbake-docs-changed",
-            change_filter=util.ChangeFilter(project=["bitbake"], branch=["master", "1.48", "1.46"]),
+            change_filter=util.ChangeFilter(project=["bitbake"], branch=["master", "1.50", "1.48", "1.46"]),
             codebases = ['', 'yocto-docs', 'bitbake'],
             fileIsImportant=isbitbakeDocFile,
             onlyImportant=True,
-- 
2.30.2

