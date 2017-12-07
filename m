Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32437E00D72; Wed,  6 Dec 2017 23:37:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0E81E00D84
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 23:37:50 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id vB77boUE014550
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Wed, 6 Dec 2017 23:37:50 -0800
Received: from pek-lpg-core1.wrs.com (128.224.156.132) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.361.1; Wed, 6 Dec 2017 23:37:49 -0800
From: Robert Yang <liezhi.yang@windriver.com>
To: <yocto@yoctoproject.org>
Date: Thu, 7 Dec 2017 15:37:11 +0800
Message-ID: <26cf02c172df0d19a9d9694c758228c90fc19d30.1512630627.git.liezhi.yang@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1512630627.git.liezhi.yang@windriver.com>
References: <cover.1512630627.git.liezhi.yang@windriver.com>
MIME-Version: 1.0
Cc: paul.eggleton@linux.intel.com
Subject: [PATCH 06/12] upgradehelper.py: only check email settings when -e is specified
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
X-List-Received-Date: Thu, 07 Dec 2017 07:37:52 -0000
Content-Type: text/plain

Fixed:
$ upgradehelper.py less
ERROR: smtp host not set! Sending emails disabled!
ERROR: 'From' address not set! Sending emails disabled!

Only check email settings when "-e" is specified can fix the problem.

Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
---
 upgradehelper.py | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 605114b..70b9e8d 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -149,7 +149,8 @@ class Updater(object):
 
         self._add_file_logger()
 
-        self.email_handler = Email(settings)
+        if self.args.send_emails:
+            self.email_handler = Email(settings)
         self.statistics = Statistics()
 
     def _set_options(self):
-- 
2.7.4


