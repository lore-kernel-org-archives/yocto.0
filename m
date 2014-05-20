Return-Path: <kangkai.yin@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B28CEE00B6C; Mon, 19 May 2014 19:11:21 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD1C7E0073D
	for <yocto@yoctoproject.org>; Mon, 19 May 2014 19:11:18 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 19 May 2014 19:11:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,870,1392192000"; d="scan'208";a="534552839"
Received: from kai-fedora.bj.intel.com ([10.238.154.79])
	by fmsmga001.fm.intel.com with ESMTP; 19 May 2014 19:11:11 -0700
From: Yin Kangkai <kangkai.yin@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 20 May 2014 10:16:55 +0800
Message-Id: <1400552217-15047-1-git-send-email-kangkai.yin@intel.com>
X-Mailer: git-send-email 1.8.2.1
Subject: [PATCH 1/3] SingleBranchScheduler: check each repo but not only the first one
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

Without this patch, when you set a SingleBranchScheduler scheduler,
code will only check against the first repo in repos list. e.g.:

In buildset-config/xxx.conf, I have this:

repos: [{'poky':
            {'repourl':'ssh://kyin1@ubi.bj.intel.com:29418/poky',
             'bbpriority':'1',
             'branch':'galileo'}
             },
        {'meta-oe':
            {'repourl':'git://github.com/openembedded/meta-oe',
             'bbpriority':'1',
             'branch':'master',
             'hash':'13ae5105ee30410136beeae66ec41ee4a8a2e2b0'}
             },
	...

scheduler: [{'Continuous':
                {'type': 'SingleBranchScheduler',
                 'repository': 'meta-oe',
                 'stable-timer': 30}
            }]

Code will only check 'meta-oe' in scheduler against 'poly', and leads
to a fail. This patch fix this.

Signed-off-by: Yin Kangkai <kangkai.yin@intel.com>
---
 lib/python2.7/site-packages/autobuilder/Autobuilder.py | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/Autobuilder.py b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
index 4c33489..2a510d4 100644
--- a/lib/python2.7/site-packages/autobuilder/Autobuilder.py
+++ b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
@@ -201,10 +201,12 @@ class Autobuilder:
                             continue
 
                         reponame = value['repository']
-                        repos = dict(ast.literal_eval(self.configdict[key]['repos'])[0])
-                        if not repos.has_key(reponame):
-                            log.msg("No repo %s found" % reponame)
-                            continue
+                        for repos in ast.literal_eval(self.configdict[key]['repos']):
+                            if not repos.has_key(reponame):
+                                continue
+                            else:
+                                log.msg("Repo %s found" % reponame)
+                                break
 
                         repo=repos[reponame]
                         if not repo.has_key('repourl'):
-- 
1.8.2.1


