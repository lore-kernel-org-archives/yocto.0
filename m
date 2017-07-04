Return-Path: <jose.perez.carranza@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15BD6E00BE0; Tue,  4 Jul 2017 15:03:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75EA5E00BD0
	for <yocto@yoctoproject.org>; Tue,  4 Jul 2017 15:03:18 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Jul 2017 15:03:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,309,1496127600"; d="scan'208";a="120836632"
Received: from jgperezc-mobl1.zpn.intel.com ([10.219.4.33])
	by orsmga005.jf.intel.com with ESMTP; 04 Jul 2017 15:03:17 -0700
From: jose.perez.carranza@linux.intel.com
To: yocto@yoctoproject.org
Date: Tue,  4 Jul 2017 17:06:02 -0500
Message-Id: <20170704220602.23233-4-jose.perez.carranza@linux.intel.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170704220602.23233-1-jose.perez.carranza@linux.intel.com>
References: <20170704220602.23233-1-jose.perez.carranza@linux.intel.com>
MIME-Version: 1.0
Subject: [qa-tools][PATCH 4/4] utils/wikimaker: Add default values
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
X-List-Received-Date: Tue, 04 Jul 2017 22:03:25 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

From: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>

Add default values for section of “performance” and “pTest” to avoid use
old data on new reports.

Signed-off-by: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>
---
 testopia_update/utils/wikimaker.py | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/testopia_update/utils/wikimaker.py b/testopia_update/utils/wikimaker.py
index 96fdfc0..b3cce60 100644
--- a/testopia_update/utils/wikimaker.py
+++ b/testopia_update/utils/wikimaker.py
@@ -99,18 +99,18 @@ def wiki_perf_tests(file_name):
                 '.html GDC Charts]\n\nBelow chars are showing the latest' + \
                 'performance results taken from the current milestone.\n\n' + \
                 '== Performance Charts==\n\nFor Bitbake core-image-sato with' + \
-                'rm_work\n\n[[File:Ww19-2k17 - rmwork.png | 1280px | ' + \
+                'rm_work\n\n[[File:Ww##-2k17 - rmwork.png | 1280px | ' + \
                 'link=https://wiki.yoctoproject.org/charts/perf_milestone_' + \
                 'GDC/bitbake-core-image-sato-rmwork.html ]]\n\nBuilding the ' + \
-                'Virtual kernel\n\n[[File:Ww19-2k17 - kernel.png | 1280px | ' + \
+                'Virtual kernel\n\n[[File:WwXX-2k17 - kernel.png | 1280px | ' + \
                 'link=https://wiki.yoctoproject.org/charts/perf_milestone_' + \
                 'GDC/bitbake-virtual-kernel.html]]\n\nBuilding the rootfs\n' + \
-                '\n[[File:Ww19-2k17_-_rootfs.png | 1280px | link=https://' + \
+                '\n[[File:WwXX-2k17_-_rootfs.png | 1280px | link=https://' + \
                 'wiki.yoctoproject.org/charts/perf_milestone_GDC/bitbake-' + \
                 'core-image-sato-rootfs.html]]\n\nBuilding core-image-sato' + \
-                '\n\n[[File:Ww19-2k17_-_sato.png | 1280px | link=https://' + \
+                '\n\n[[File:WwXX-2k17_-_sato.png | 1280px | link=https://' + \
                 'wiki.yoctoproject.org/charts/perf_milestone_GDC/bitbake-' + \
-                'core-image-sato.html]]\n\neSDK Deploy time\n\n[[File:Ww19' + \
+                'core-image-sato.html]]\n\neSDK Deploy time\n\n[[File:WwXX' + \
                 '-2k17_-_esdk.png | 1280px | link=https://wiki.yoctoproject' + \
                 '.org/charts/perf_milestone_GDC/bitbake-eSDK.html]]\n'
 
@@ -123,7 +123,7 @@ def wic_ptest_results(file_name):
                 'milestone,status,resolution,cf_regression_type,created\n' + \
                 '    |noresultsmessage="None"\n    |sort=status\n    ' + \
                 '|group=product\n    |id=0000\n}}\n\n== results ==\n\n' + \
-                '{{:Ptest 381897c64069ea43d595380a3ae913bcc79cf7e1}}\n'
+                '{{:Ptest <ADD HERE THE PROOPER COMMIT>}}\n'
 
     with open(file_name, 'a') as f:
         f.write(perf_data)
-- 
2.11.0


