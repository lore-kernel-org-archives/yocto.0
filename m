Return-Path: <william.c.randle@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B1EDE00547; Fri, 19 Aug 2016 09:27:58 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 618A8E00288
	for <yocto@yoctoproject.org>; Fri, 19 Aug 2016 09:27:54 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga101.fm.intel.com with ESMTP; 19 Aug 2016 09:27:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,544,1464678000"; d="scan'208";a="868336691"
Received: from wcrandle-mobl1.amr.corp.intel.com ([10.254.99.187])
	by orsmga003.jf.intel.com with ESMTP; 19 Aug 2016 09:27:54 -0700
From: Bill Randle <william.c.randle@intel.com>
To: yocto@yoctoproject.org
Date: Fri, 19 Aug 2016 09:27:33 -0700
Message-Id: <1471624053-7572-1-git-send-email-william.c.randle@intel.com>
X-Mailer: git-send-email 2.5.5
Subject: [yocto-autobuilder][PATCH] SendQAEmail.py: cleanup email formatting
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
X-List-Received-Date: Fri, 19 Aug 2016 16:27:58 -0000

"-e" option is not required and gets inserted into email text if present.

Signed-off-by: Bill Randle <william.c.randle@intel.com>
---
 lib/python2.7/site-packages/autobuilder/buildsteps/SendQAEmail.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/lib/python2.7/site-packages/autobuilder/buildsteps/SendQAEmail.py b/lib/python2.7/site-packages/autobuilder/buildsteps/SendQAEmail.py
index 3691cc6..1bb2893 100644
--- a/lib/python2.7/site-packages/autobuilder/buildsteps/SendQAEmail.py
+++ b/lib/python2.7/site-packages/autobuilder/buildsteps/SendQAEmail.py
@@ -95,7 +95,7 @@ Please begin QA on this build as soon as possible.''' % (rel_name, self.getPrope
 
             email_header += "Subject: " + mailsubject + "\n"
 
-            mailcmd = 'echo -e "' + email_header + "\n" + email_base + '\n' + email_body + '\n' + mailsig + ' " | sendmail -t'
+            mailcmd = 'echo "' + email_header + "\n" + email_base + '\n' + email_body + '\n' + mailsig + ' " | sendmail -t'
 
             self.command = mailcmd
         else:
-- 
2.5.5


