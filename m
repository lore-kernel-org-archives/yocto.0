Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C05EDE007BA; Wed,  8 Mar 2017 16:35:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14E53E004D2
	for <yocto@yoctoproject.org>; Wed,  8 Mar 2017 16:35:20 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga105.jf.intel.com with ESMTP; 08 Mar 2017 16:35:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,266,1486454400"; d="scan'208";a="1139787702"
Received: from tgraydonws.ostc.intel.com ([10.54.69.46])
	by fmsmga002.fm.intel.com with ESMTP; 08 Mar 2017 16:35:19 -0800
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Wed,  8 Mar 2017 16:35:09 -0800
Message-Id: <1489019709-24533-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 2.7.0
Cc: joshua.g.lock@intel.com
Subject: [yocto-autobuilder][PATCH] /buildset-config.meta-intel/nightly-meta-intel.conf
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
X-List-Received-Date: Thu, 09 Mar 2017 00:35:23 -0000

Add the new nightly-musl and nightly-x32 builds to nightly-meta-intel
build scheduler triggers.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 buildset-config.meta-intel/nightly-meta-intel.conf | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/buildset-config.meta-intel/nightly-meta-intel.conf b/buildset-config.meta-intel/nightly-meta-intel.conf
index 557bb67..081726e 100644
--- a/buildset-config.meta-intel/nightly-meta-intel.conf
+++ b/buildset-config.meta-intel/nightly-meta-intel.conf
@@ -1,5 +1,5 @@
 [nightly-meta-intel]
-builders: 'example-worker'
+builders: ['yocto-ab-master.ostc.intel.com', 'yocto-ab01.ostc.intel.com', 'yocto-ab02.ostc.intel.com', 'yocto-ab03.ostc.intel.com', 'yocto-ab04.ostc.intel.com']
 repos: [{'poky':
             {'repourl':'git://git.yoctoproject.org/poky',
              'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp', 'yocto':'meta-yocto', 'poky':'meta-poky'},
@@ -19,7 +19,7 @@ props: [{'release_me':{'prop_type':'ChoiceStringParameter',
                        'name': 'release_me',
                        'label':'<h3> Generate a release?:</h3>'}},
         {'poky_name':{'prop_type':'ChoiceStringParameter',
-                       'choices': ['', 'pyro', 'morty', 'krogoth', 'jethro', 'fido','dizzy','daisy','dora','dylan','danny','denzil','edison','bernard'],
+                       'choices': ['', 'pyro', 'morty', 'krogoth', 'jethro', 'fido'],
                        'name': 'poky_name',
                        'label':'<h3> Name of the poky release.<br>For further info on release names see <a href="https://wiki.yoctoproject.org/wiki/Releases"> Releases </a> </h3>'}},
         {'is_milestone':{'prop_type':'ChoiceStringParameter',
@@ -94,7 +94,7 @@ steps: [{'SetDest':{}},
                              'intel-core2-32-lsb-rt':{}, 'intel-core2-32-rt':{},
                              'intel-corei7-64':{}, 'intel-corei7-64-lsb':{},
                              'intel-corei7-64-lsb-rt':{}, 'intel-corei7-64-rt':{}, 
-                             'intel-quark':{},
+                             'intel-quark':{}, 'nightly-musl':{}, 'nightly-x32':{},
                              'jasperforest':{}, 'jasperforest-lsb':{},
                              'sugarbay':{}, 'sugarbay-lsb':{},
                              'nuc':{}, 'nuc-lsb':{}}, 'schedulerNames_nowait' : {'nightly-meta-intel-world':{}}}},
-- 
2.7.0


