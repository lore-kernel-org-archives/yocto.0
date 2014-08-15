Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93B6BE0044A; Fri, 15 Aug 2014 02:49:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9EBBE00524
	for <yocto@yoctoproject.org>; Fri, 15 Aug 2014 02:48:58 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 15 Aug 2014 02:48:55 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,869,1400050800"; d="scan'208";a="588521310"
Received: from kmoriart-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.210])
	by orsmga002.jf.intel.com with ESMTP; 15 Aug 2014 02:48:54 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Fri, 15 Aug 2014 10:48:44 +0100
Message-Id: <e1c19369ed00ff40a08ce7928ff804f6a571a43d.1408096074.git.paul.eggleton@linux.intel.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <cover.1408096074.git.paul.eggleton@linux.intel.com>
References: <cover.1408096074.git.paul.eggleton@linux.intel.com>
In-Reply-To: <cover.1408096074.git.paul.eggleton@linux.intel.com>
References: <cover.1408096074.git.paul.eggleton@linux.intel.com>
Subject: [auh][PATCH 4/4] README: clarify warning
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
X-List-Received-Date: Fri, 15 Aug 2014 09:49:01 -0000

Emails only get sent when "all" is used (at least at the moment).

Signed-off-by: Paul Eggleton <paul.eggleton@linux.intel.com>
---
 README | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/README b/README
index c43fa5e..ec3f955 100644
--- a/README
+++ b/README
@@ -59,9 +59,10 @@ require conf/distro/include/upstream_tracking.inc
 WARNING: if you are using the default maintainers.inc file supplied
          with Poky (in meta-yocto) and you don't set a
          maintainers_whitelist or maintainer_override in the
-         upgrade-helper configuration as above, the script will
-         automatically send out emails to the default maintainers.
-         Please be careful not to do this :)
+         upgrade-helper configuration as above, and you specify "all"
+         on the command line, the script will automatically send out
+         emails to the default maintainers. Please be careful not to
+         do this :)
 
 4. Enable buildhistory by adding the following lines to your
 conf/local.conf file:
-- 
1.9.3


