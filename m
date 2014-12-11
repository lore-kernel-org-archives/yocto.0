Return-Path: <californialsullivan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1C5BE00873; Thu, 11 Dec 2014 13:06:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.0 required=5.0 tests=BAYES_00, DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM, NML_ADSP_CUSTOM_MED,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (californialsullivan[at]gmail.com)
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63651E0083A
	for <yocto@yoctoproject.org>; Thu, 11 Dec 2014 13:06:06 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 11 Dec 2014 13:03:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,691,1406617200"; d="scan'208";a="497463800"
Received: from unknown (HELO localhost.jf.intel.com) ([10.7.198.57])
	by orsmga003.jf.intel.com with ESMTP; 11 Dec 2014 13:01:41 -0800
From: californialsullivan@gmail.com
To: yocto@yoctoproject.org
Date: Thu, 11 Dec 2014 13:02:15 -0500
Message-Id: <1418320935-2913-2-git-send-email-californialsullivan@gmail.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <1418320935-2913-1-git-send-email-californialsullivan@gmail.com>
References: <1418320935-2913-1-git-send-email-californialsullivan@gmail.com>
Cc: California Sullivan <california.l.sullivan@intel.com>
Subject: [Yocto Autobuilder][PATCH 2/2] Autobuilder: add GitPoller ChangeSource for SingleBranchScheduler
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
X-List-Received-Date: Thu, 11 Dec 2014 21:06:07 -0000

From: California Sullivan <california.l.sullivan@intel.com>

Previously, PBChangeSource was the only option for changesources.
PBChangeSource was not always suitable since the remote repository had
to be able to run custom hooks, which isn't always available. This
commit adds GitPoller as an option.

Signed-off-by: California Sullivan <california.l.sullivan@intel.com>
---
 lib/python2.7/site-packages/autobuilder/Autobuilder.py | 16 ++++++++++++++--
 1 file changed, 14 insertions(+), 2 deletions(-)

diff --git a/lib/python2.7/site-packages/autobuilder/Autobuilder.py b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
index 32c6128..0dae5dc 100644
--- a/lib/python2.7/site-packages/autobuilder/Autobuilder.py
+++ b/lib/python2.7/site-packages/autobuilder/Autobuilder.py
@@ -230,14 +230,26 @@ class Autobuilder:
                         if value.has_key('change-password'):
                             passwd=value['change-password']
 
-                        self.yocto_sources.append(PBChangeSource(user=user, passwd=passwd))
-
                         branch="master"
                         stabletimer=60
                         if repo.has_key('branch'):
                             branch = repo['branch']
                         if value.has_key('stable-timer'):
                             stabletimer = value['stable-timer']
+
+                        if value.has_key('changesource') and value['changesource'] == 'GitPoller':
+                            if value.has_key('interval'):
+                                interval = int(value['interval'])
+                            else:
+                                # default to 5 minutes poll intervals
+                                interval = 60*5
+                            self.yocto_sources.append(GitPoller(repourl=repo['repourl'], branch=branch, pollInterval=interval))
+                            log.msg("Adding GitPoller as changesource for " + reponame)
+                        else:
+                            # default to use PBChangeSource as the changesource
+                            self.yocto_sources.append(PBChangeSource(user=user, passwd=passwd))
+                            log.msg("Adding PBChangeSource as changesource for " + reponame)
+
                         self.yocto_sched.append(SingleBranchScheduler(name=str(name),
                                                                       builderNames=['%s' % key],
                                                                       properties=checkoutprops,
-- 
1.9.3


