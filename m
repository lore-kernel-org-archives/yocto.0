Return-Path: <marius.avram@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17FD5E007DC; Wed, 13 Aug 2014 06:29:27 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 851A5E007D2
	for <yocto@yoctoproject.org>; Wed, 13 Aug 2014 06:29:23 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 13 Aug 2014 06:29:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="371867224"
Received: from mavram-vostro.rb.intel.com ([10.237.105.71])
	by FMSMGA003.fm.intel.com with ESMTP; 13 Aug 2014 06:26:02 -0700
From: Marius Avram <marius.avram@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 13 Aug 2014 16:32:05 +0300
Message-Id: <1407936728-15722-5-git-send-email-marius.avram@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1407936728-15722-1-git-send-email-marius.avram@intel.com>
References: <1407936728-15722-1-git-send-email-marius.avram@intel.com>
Subject: [PATCH 4/7] README: Added buildhistory configuration
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
 README |    8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/README b/README
index 5721d58..43e6800 100644
--- a/README
+++ b/README
@@ -54,6 +54,14 @@ require conf/distro/include/maintainers.inc
 require conf/distro/include/upstream_tracking.inc
 --------------- snip ---------------
 
+4. Enable buildhistory by adding the following lines in the in your
+conf/local.conf file:
+
+INHERIT =+ "buildhistory"
+BUILDHISTORY_COMMIT" = "1"
+
+Do not remove any other inherited class in the process (e.g. distrodata).
+
 WARNING: if you are using the default maintainers.inc file supplied
          with Poky (in meta-yocto) and you don't set a
          maintainers_whitelist or maintainer_override in the
-- 
1.7.9.5


