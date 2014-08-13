Return-Path: <marius.avram@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52BB5E007D2; Wed, 13 Aug 2014 06:29:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F685E007A0
	for <yocto@yoctoproject.org>; Wed, 13 Aug 2014 06:29:23 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 13 Aug 2014 06:29:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="371867216"
Received: from mavram-vostro.rb.intel.com ([10.237.105.71])
	by FMSMGA003.fm.intel.com with ESMTP; 13 Aug 2014 06:26:00 -0700
From: Marius Avram <marius.avram@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 13 Aug 2014 16:32:03 +0300
Message-Id: <1407936728-15722-3-git-send-email-marius.avram@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1407936728-15722-1-git-send-email-marius.avram@intel.com>
References: <1407936728-15722-1-git-send-email-marius.avram@intel.com>
Subject: [PATCH 2/7] Fixed bug of selected attachements for email
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
X-List-Received-Date: Wed, 13 Aug 2014 13:29:27 -0000

Signed-off-by: Marius Avram <marius.avram@intel.com>
---
 upgradehelper.py |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/upgradehelper.py b/upgradehelper.py
index 091881f..ef59661 100755
--- a/upgradehelper.py
+++ b/upgradehelper.py
@@ -617,8 +617,8 @@ class UniverseUpdater(Updater, Email):
         # Add possible attachments to list
         attachments = []
         for attachment in os.listdir(self.workdir):
-            attachment_fullpath = os.join(self.workdir, attachment)
-            if isfile(attachment_fullpath):
+            attachment_fullpath = os.path.join(self.workdir, attachment)
+            if os.path.isfile(attachment_fullpath):
                 attachments.append(attachment_fullpath)
 
         self.send_email(to_addr, subject, msg_body, attachments)
-- 
1.7.9.5


