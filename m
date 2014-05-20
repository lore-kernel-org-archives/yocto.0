Return-Path: <kangkai.yin@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A649FE00B74; Mon, 19 May 2014 19:11:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=RCVD_IN_DNSWL_HI,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mga01.intel.com (unknown [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D6AF0E00B20
	for <yocto@yoctoproject.org>; Mon, 19 May 2014 19:11:18 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 19 May 2014 19:11:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,870,1392192000"; d="scan'208";a="534552846"
Received: from kai-fedora.bj.intel.com ([10.238.154.79])
	by fmsmga001.fm.intel.com with ESMTP; 19 May 2014 19:11:13 -0700
From: Yin Kangkai <kangkai.yin@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 20 May 2014 10:16:56 +0800
Message-Id: <1400552217-15047-2-git-send-email-kangkai.yin@intel.com>
X-Mailer: git-send-email 1.8.2.1
In-Reply-To: <1400552217-15047-1-git-send-email-kangkai.yin@intel.com>
References: <1400552217-15047-1-git-send-email-kangkai.yin@intel.com>
Subject: [PATCH 2/3] SingleBranchScheduler: pass in the properties
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
X-List-Received-Date: Tue, 20 May 2014 02:11:21 -0000

Pass in the properties parsed from config file, otherwise the build
triggered will fail because wrong properties.

Signed-off-by: Yin Kangkai <kangkai.yin@intel.com>
---
 lib/python2.7/site-packages/autobuilder/Autobuilder.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/lib/python2.7/site-packages/autobuilder/Autobuilder.py b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
index 2a510d4..1aba7ac 100644
--- a/lib/python2.7/site-packages/autobuilder/Autobuilder.py
+++ b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
@@ -233,6 +233,7 @@ class Autobuilder:
                             stabletimer = value['stable-timer']
                         self.yocto_sched.append(SingleBranchScheduler(name=str(name),
                                                                       builderNames=['%s' % key],
+                                                                      properties=checkoutprops,
                                                                       change_filter=filter.ChangeFilter(branch=branch,
                                                                                                         repository=repo['repourl']),
                                                                       treeStableTimer=stabletimer))
-- 
1.8.2.1


