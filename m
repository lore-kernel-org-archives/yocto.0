Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80659E00D2E; Mon,  6 Nov 2017 14:45:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EA45E00D1F
	for <yocto@yoctoproject.org>; Mon,  6 Nov 2017 14:45:01 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Nov 2017 14:45:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,354,1505804400"; 
   d="scan'208";a="4184714"
Received: from scetola-mac01.jf.intel.com ([10.54.74.141])
	by orsmga002.jf.intel.com with ESMTP; 06 Nov 2017 14:44:59 -0800
From: Stephano Cetola <stephano.cetola@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  6 Nov 2017 14:44:55 -0800
Message-Id: <20171106224457.8855-3-stephano.cetola@linux.intel.com>
X-Mailer: git-send-email 2.14.2
In-Reply-To: <20171106224457.8855-1-stephano.cetola@linux.intel.com>
References: <20171106224457.8855-1-stephano.cetola@linux.intel.com>
Cc: joshua.g.lock@intel.com
Subject: [yocto-autobuilder][PATCH 2/4] intel-quark.conf: change the defaults for srcrev_meta and srcrev_machine
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
X-List-Received-Date: Mon, 06 Nov 2017 22:45:01 -0000

The default values for srcrev_machine and srcrev_meta should be set
to blank rather than AUTOREV. AUTOREV will force them to the tip of
the current branch, which is no longer needed.

Signed-off-by: Stephano Cetola <stephano.cetola@linux.intel.com>
---
 buildset-config.meta-intel/intel-quark.conf | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/buildset-config.meta-intel/intel-quark.conf b/buildset-config.meta-intel/intel-quark.conf
index 931ead0e2..136c2257d 100644
--- a/buildset-config.meta-intel/intel-quark.conf
+++ b/buildset-config.meta-intel/intel-quark.conf
@@ -16,8 +16,8 @@ props: [{'kmeta':{'prop_type':'StringParameter',
         {'srcrev_meta':{'prop_type':'StringParameter',
                        'size': 15,
                        'name': 'srcrev_meta',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is ${AUTOREV}):<br></h3>'}},
+                       'default': '',
+                       'label':'<hr><h3> SRCREV for KMETA_${MACHINE} (default is blank):<br></h3>'}},
         {'srcuri_meta':{'prop_type':'StringParameter',
                        'size': 50,
                        'name': 'srcuri_meta',
@@ -31,8 +31,8 @@ props: [{'kmeta':{'prop_type':'StringParameter',
         {'srcrev_machine':{'prop_type':'StringParameter',
                        'size': 15,
                        'name': 'srcrev_machine',
-                       'default': '${AUTOREV}',
-                       'label':'<hr><h3> SRCREV for KBRANCH. (default is ${AUTOREV}):<br></h3>'}},
+                       'default': '',
+                       'label':'<hr><h3> SRCREV for KBRANCH. (default is blank):<br></h3>'}},
         {'srcuri_machine':{'prop_type':'StringParameter',
                        'size': 50,
                        'name': 'srcuri_machine',
-- 
2.14.2


