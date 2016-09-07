Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DAAACE00EAE; Wed,  7 Sep 2016 08:33:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 636CAE00B95
	for <yocto@yoctoproject.org>; Wed,  7 Sep 2016 08:33:55 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga105.fm.intel.com with ESMTP; 07 Sep 2016 08:33:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.30,296,1470726000"; d="scan'208";a="1026367542"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.9.194])
	by orsmga001.jf.intel.com with ESMTP; 07 Sep 2016 08:33:53 -0700
From: Joshua Lock <joshua.g.lock@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  7 Sep 2016 16:33:39 +0100
Message-Id: <d7210e69b8258478930c09798f7fc5e90c8ffb51.1473261757.git.joshua.g.lock@intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1473261757.git.joshua.g.lock@intel.com>
References: <cover.1473261757.git.joshua.g.lock@intel.com>
In-Reply-To: <cover.1473261757.git.joshua.g.lock@intel.com>
References: <cover.1473261757.git.joshua.g.lock@intel.com>
Subject: [yocto autobuilder][PATCH 1/3] buildlogger: remove old, incomplete, comment
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
X-List-Received-Date: Wed, 07 Sep 2016 15:33:55 -0000

The comment isn't complete and doesn't make much sense.

Signed-off-by: Joshua Lock <joshua.g.lock@intel.com>
---
 bin/buildlogger | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/bin/buildlogger b/bin/buildlogger
index 97f67ec..7a529c0 100755
--- a/bin/buildlogger
+++ b/bin/buildlogger
@@ -11,12 +11,6 @@ __maintainer__ = "Joshua Lock"
 __email__ = "joshua.g.lock@intel.com"
 '''
 
-# We'd probably benefit from using some caching, but first we'd need the AB API
-# to include
-#
-# We can set repo url, branch & commit for a bunch of repositorys.
-# Do they all get built for nightly?
-
 import codecs
 try:
     import configparser
-- 
2.7.4


