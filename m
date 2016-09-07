Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE259E0108D; Wed,  7 Sep 2016 08:33:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82DE9E00A4B
	for <yocto@yoctoproject.org>; Wed,  7 Sep 2016 08:33:56 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga105.fm.intel.com with ESMTP; 07 Sep 2016 08:33:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,296,1470726000"; d="scan'208";a="1026367558"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.9.194])
	by orsmga001.jf.intel.com with ESMTP; 07 Sep 2016 08:33:55 -0700
From: Joshua Lock <joshua.g.lock@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  7 Sep 2016 16:33:40 +0100
Message-Id: <367c3dd65abe62fe9f63cdf55c751b55dcba09b5.1473261757.git.joshua.g.lock@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1473261757.git.joshua.g.lock@intel.com>
References: <cover.1473261757.git.joshua.g.lock@intel.com>
In-Reply-To: <cover.1473261757.git.joshua.g.lock@intel.com>
References: <cover.1473261757.git.joshua.g.lock@intel.com>
Subject: [yocto autobuilder][PATCH 2/3] buildlogger: don't hardcode YP AB in generated URL
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

When generating text for a BuildLog wiki entry we were hard-coding
the Yocto Project AB URL in the entry's title, rather than that
add a new variable to buildlogger.conf and use the value of this
variable to construct the URL in the link.

Signed-off-by: Joshua Lock <joshua.g.lock@intel.com>
---
 bin/buildlogger              | 7 +++++--
 etc/buildlogger.conf.example | 1 +
 2 files changed, 6 insertions(+), 2 deletions(-)

diff --git a/bin/buildlogger b/bin/buildlogger
index 7a529c0..1b31281 100755
--- a/bin/buildlogger
+++ b/bin/buildlogger
@@ -30,6 +30,7 @@ except ImportError:
     sys.exit(1)
 
 abapi = ''
+abwww = ''
 # Wiki editing params
 un = ''
 pw = ''
@@ -49,6 +50,7 @@ def load_config(configfile):
     global title
     global wikiapi
     global abapi
+    global abwww
     success = False
 
     if os.path.exists(configfile):
@@ -59,6 +61,7 @@ def load_config(configfile):
             pw = config.get('wiki', 'password')
             title = config.get('wiki', 'pagetitle')
             wikiapi = config.get('wiki', 'apiuri')
+            abwww = config.get('builder', 'wwwuri')
             abapi = config.get('builder', 'apiuri')
             success = True
         except configparser.Error as ex:
@@ -195,8 +198,8 @@ def ab_last_build_to_entry(build_json, build_id):
         if prop[0] == 'commit_poky':
             chash = prop[1]
 
-    urlfmt = 'https://autobuilder.yoctoproject.org/main/builders/%s/builds/%s/'
-    url = urlfmt % (builder, buildid)
+    urlfmt = '%s/builders/%s/builds/%s/'
+    url = urlfmt % (abwww, builder, buildid)
     sectionfmt = '==[%s %s %s - %s %s]=='
     section_title = sectionfmt % (url, builder, buildid, buildbranch, chash)
     summaryfmt = 'Adding new BuildLog entry for build %s (%s)'
diff --git a/etc/buildlogger.conf.example b/etc/buildlogger.conf.example
index 459961c..330af56 100644
--- a/etc/buildlogger.conf.example
+++ b/etc/buildlogger.conf.example
@@ -5,4 +5,5 @@ pagetitle = BuildLogPageTitle
 apiuri = https://wiki.yoctoproject.org/wiki/api.php
 
 [builder]
+wwwuri = https://autobuilder.yoctoproject.org/main
 apiuri = https://autobuilder.yoctoproject.org/main/json/builders/nightly/builds/_all
-- 
2.7.4


