Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE618E008CC; Thu,  3 Nov 2016 12:56:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4483E0081E
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 12:56:03 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP; 03 Nov 2016 12:56:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,440,1473145200"; d="scan'208";a="1063585977"
Received: from tgraydonws.ostc.intel.com ([10.54.69.46])
	by fmsmga001.fm.intel.com with ESMTP; 03 Nov 2016 12:56:02 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  3 Nov 2016 12:55:17 -0700
Message-Id: <1478202917-11580-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 2.7.0
Cc: joshua.g.lock@intel.com
Subject: [yocto-autobuilder][PATCH] buildset-config.meta-intel/nightly-meta-intel.conf
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
X-List-Received-Date: Thu, 03 Nov 2016 19:56:08 -0000

Update nightly-meta-intel.conf with the most recent release branches.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 buildset-config.meta-intel/nightly-meta-intel.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/buildset-config.meta-intel/nightly-meta-intel.conf b/buildset-config.meta-intel/nightly-meta-intel.conf
index 3db11f5..557bb67 100644
--- a/buildset-config.meta-intel/nightly-meta-intel.conf
+++ b/buildset-config.meta-intel/nightly-meta-intel.conf
@@ -19,7 +19,7 @@ props: [{'release_me':{'prop_type':'ChoiceStringParameter',
                        'name': 'release_me',
                        'label':'<h3> Generate a release?:</h3>'}},
         {'poky_name':{'prop_type':'ChoiceStringParameter',
-                       'choices': ['', 'jethro', 'fido','dizzy','daisy','dora','dylan','danny','denzil','edison','bernard'],
+                       'choices': ['', 'pyro', 'morty', 'krogoth', 'jethro', 'fido','dizzy','daisy','dora','dylan','danny','denzil','edison','bernard'],
                        'name': 'poky_name',
                        'label':'<h3> Name of the poky release.<br>For further info on release names see <a href="https://wiki.yoctoproject.org/wiki/Releases"> Releases </a> </h3>'}},
         {'is_milestone':{'prop_type':'ChoiceStringParameter',
-- 
2.7.0


