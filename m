Return-Path: <stephano.cetola@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7A0D5E00D32; Mon,  6 Nov 2017 14:45:02 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50F45E00D24
	for <yocto@yoctoproject.org>; Mon,  6 Nov 2017 14:45:01 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Nov 2017 14:45:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,354,1505804400"; 
   d="scan'208";a="4184716"
Received: from scetola-mac01.jf.intel.com ([10.54.74.141])
	by orsmga002.jf.intel.com with ESMTP; 06 Nov 2017 14:44:59 -0800
From: Stephano Cetola <stephano.cetola@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon,  6 Nov 2017 14:44:56 -0800
Message-Id: <20171106224457.8855-4-stephano.cetola@linux.intel.com>
X-Mailer: git-send-email 2.14.2
In-Reply-To: <20171106224457.8855-1-stephano.cetola@linux.intel.com>
References: <20171106224457.8855-1-stephano.cetola@linux.intel.com>
Cc: joshua.g.lock@intel.com
Subject: [yocto-autobuilder][PATCH 3/4] buildset-config.meta-intel/nightly-meta-intel.conf: add rocko
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
X-List-Received-Date: Mon, 06 Nov 2017 22:45:02 -0000

Yocto v2.4 is live and the codename is rocko. This adds that name to
the list of possible releases.

Signed-off-by: Stephano Cetola <stephano.cetola@linux.intel.com>
---
 buildset-config.meta-intel/nightly-meta-intel.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/buildset-config.meta-intel/nightly-meta-intel.conf b/buildset-config.meta-intel/nightly-meta-intel.conf
index ae14c6966..791053fc6 100644
--- a/buildset-config.meta-intel/nightly-meta-intel.conf
+++ b/buildset-config.meta-intel/nightly-meta-intel.conf
@@ -19,7 +19,7 @@ props: [{'release_me':{'prop_type':'ChoiceStringParameter',
                        'name': 'release_me',
                        'label':'<h3> Generate a release?:</h3>'}},
         {'poky_name':{'prop_type':'ChoiceStringParameter',
-                       'choices': ['', 'pyro', 'morty', 'krogoth', 'jethro', 'fido'],
+                       'choices': ['', 'rocko', 'pyro', 'morty', 'krogoth', 'jethro', 'fido'],
                        'name': 'poky_name',
                        'label':'<h3> Name of the poky release.<br>For further info on release names see <a href="https://wiki.yoctoproject.org/wiki/Releases"> Releases </a> </h3>'}},
         {'is_milestone':{'prop_type':'ChoiceStringParameter',
-- 
2.14.2


