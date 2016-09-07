Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94603E00EAE; Wed,  7 Sep 2016 08:33:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A69DCE00F40
	for <yocto@yoctoproject.org>; Wed,  7 Sep 2016 08:33:57 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga105.fm.intel.com with ESMTP; 07 Sep 2016 08:33:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,296,1470726000"; d="scan'208";a="1026367566"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.9.194])
	by orsmga001.jf.intel.com with ESMTP; 07 Sep 2016 08:33:56 -0700
From: Joshua Lock <joshua.g.lock@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  7 Sep 2016 16:33:41 +0100
Message-Id: <dec467aee1593538c56ad87643bf4a27aec73493.1473261757.git.joshua.g.lock@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1473261757.git.joshua.g.lock@intel.com>
References: <cover.1473261757.git.joshua.g.lock@intel.com>
In-Reply-To: <cover.1473261757.git.joshua.g.lock@intel.com>
References: <cover.1473261757.git.joshua.g.lock@intel.com>
Subject: [yocto autobuilder][PATCH 3/3] buildlogger: fix sorting of recent builds
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
X-List-Received-Date: Wed, 07 Sep 2016 15:33:58 -0000

Recent builds, >999, on the YP AutoBuilder were not being logged.
This is because we sort the builds based on a string representation
of their build number, yet string 1001 < string 999.

Resolve this by converting the build id's to an int, sorting them
and then determining which is the highest/most recent build id.

Signed-off-by: Joshua Lock <joshua.g.lock@intel.com>
---
 bin/buildlogger | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/bin/buildlogger b/bin/buildlogger
index 1b31281..912f419 100755
--- a/bin/buildlogger
+++ b/bin/buildlogger
@@ -219,7 +219,7 @@ def write_last_build(buildid):
 
 # Read last logged buildid from a file
 def read_last_build():
-    last_build = ''
+    last_build = '0'
     try:
         with open(cachefile, 'r') as fi:
             last_build = fi.readline()
@@ -254,7 +254,13 @@ def watch_for_builds(configfile):
             print("Failed to decode JSON: %s" % str(e))
             continue
 
-        last_build = sorted(build_json.keys())[-1]
+        # The keys of the JSON dict are unicode strings, which makes
+        # sorting to find the most recent difficult (i.e. for a string type
+        # 999 > 1001). Convert them to ints for a simpler sort.
+        buildids = map(int, build_json.keys())
+        buildids.sort()
+        last_build = str(buildids[-1])
+
         # If a new build is detected, post a new entry to the BuildLog
         if last_build != last_logged:
             new_entry, summary = ab_last_build_to_entry(build_json, last_build)
-- 
2.7.4


