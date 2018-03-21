Return-Path: <tracy.graydon@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7D3DE00CBD; Wed, 21 Mar 2018 13:45:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF466E00C80
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 13:45:26 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga106.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Mar 2018 13:45:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,341,1517904000"; d="scan'208";a="35745740"
Received: from tgraydonws.ostc.intel.com ([10.54.69.46])
	by FMSMGA003.fm.intel.com with ESMTP; 21 Mar 2018 13:45:25 -0700
From: "Graydon, Tracy" <tracy.graydon@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 21 Mar 2018 13:45:25 -0700
Message-Id: <1521665125-11957-1-git-send-email-tracy.graydon@intel.com>
X-Mailer: git-send-email 2.7.0
Cc: richard.purdie@intel.com
Subject: [yocto-autobuilder][PATCH] /builders.py
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
X-List-Received-Date: Wed, 21 Mar 2018 20:45:28 -0000

Add the releases subdirectory to the release publishing destination path.

Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
---
 builders.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/builders.py b/builders.py
index 7bd218e..977d80a 100644
--- a/builders.py
+++ b/builders.py
@@ -48,7 +48,7 @@ def get_publish_dest(props):
                 snapshot += "." + rc_number
 
             rel_name = "yocto-" + props.getProperty("yocto_number", "") + snapshot
-            dest = os.path.join(config.publish_dest, rel_name)
+            dest = os.path.join(config.publish_dest, "releases", rel_name)
         else:
             dest_base = os.path.join(config.publish_dest,
                                      props.getProperty("buildername"),
-- 
2.7.0


