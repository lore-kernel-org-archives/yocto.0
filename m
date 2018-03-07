Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3B48E00E49; Tue,  6 Mar 2018 20:00:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2908BE00E0A
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 20:00:53 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Mar 2018 20:00:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.47,434,1515484800"; d="scan'208";a="23544938"
Received: from guptatax-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.165.117])
	by orsmga006.jf.intel.com with ESMTP; 06 Mar 2018 20:00:49 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed,  7 Mar 2018 17:00:11 +1300
Message-Id: <20180307040011.2907-3-paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 2.14.3
In-Reply-To: <20180307040011.2907-1-paul.eggleton@linux.intel.com>
References: <20180307040011.2907-1-paul.eggleton@linux.intel.com>
Subject: [yocto-autobuilder2][PATCH 2/2] builders: set build revision to poky revision
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 07 Mar 2018 04:00:53 -0000

By default, since the yocto-autobuilder-helper repository is the only
one that buildbot actually checks out in a step, the revision of that is
the one that gets associated with the build; however, it's much more
useful to have the revision set to the poky revision, so add a step that
does that.

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 TODO        | 1 -
 builders.py | 5 +++++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/TODO b/TODO
index 429c4f9..fe88e03 100644
--- a/TODO
+++ b/TODO
@@ -4,7 +4,6 @@
  * get_publish_dest (builders.py) [Joshua]
  * figure out htpasswd & auth for scheduling builds [Michael]
  * ensure need auth to trigger builds  [Michael]
- * Display poky revision in web UI, not the yocto-autobuilder-helper revision [Paul]
 
 # Future
 
diff --git a/builders.py b/builders.py
index 2a9bc41..ae8a3d7 100644
--- a/builders.py
+++ b/builders.py
@@ -131,6 +131,11 @@ factory.addStep(steps.ShellCommand(
     haltOnFailure=True,
     name="Unpack shared repositories"))
 
+factory.addStep(steps.SetPropertyFromCommand(command=util.Interpolate("cd %(prop:sharedrepolocation)s/poky; git rev-parse HEAD"),
+                                             property="got_revision",
+                                             haltOnFailure=True,
+                                             name='Set build revision'))
+
 # run-config
 factory.addStep(steps.ShellCommand(
     command=[
-- 
2.14.3


