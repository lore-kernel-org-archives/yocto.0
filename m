Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3858CE00C2F; Thu, 11 Feb 2016 10:10:09 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9B94E00C1C
	for <yocto@yoctoproject.org>; Thu, 11 Feb 2016 10:10:03 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 11 Feb 2016 10:08:56 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,432,1449561600"; d="scan'208";a="744424340"
Received: from tmglnx.jf.intel.com ([10.7.198.182])
	by orsmga003.jf.intel.com with ESMTP; 11 Feb 2016 10:08:57 -0800
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Thu, 11 Feb 2016 11:05:25 -0800
Message-Id: <1455217525-19212-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 2.4.3
Subject: [PATCH][yocto-autobuilder] buildbot/status/web/templates/build.html
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
X-List-Received-Date: Thu, 11 Feb 2016 18:10:09 -0000

From: Tracy Graydon <tracy.graydon@intel.com>

[YOCTO #8098]

The resubmit build button on the build status page, when used with exact same
revisions generates an exception. Fixed by removing the Resubmit Build button.

Signed-off-by: Tracy Graydon <tracy.graydon@intel.com>
---
 .../buildbot/status/web/templates/build.html                         | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/status/web/templates/build.html b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/status/web/templates/build.html
index a01d4b0..0f50888 100644
--- a/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/status/web/templates/build.html
+++ b/lib/python2.7/site-packages/buildbot-0.8.8-py2.7.egg/buildbot/status/web/templates/build.html
@@ -213,11 +213,6 @@ SourceStamps:
   <tr {{ 'class="alt"' if end else '' }}><td class="left">Elapsed</td><td>{{ elapsed }}</td></tr>
 </table>
 
-  {% if authz.advertiseAction('forceBuild', request) %}
-    <h3>Resubmit Build:</h3>
-    {{ forms.rebuild_build(build_url+"/rebuild", authz, sourcestamps[0]) }}
-  {% endif %}
-
 </div>
 
 <br style="clear:both"/>
-- 
2.4.3


