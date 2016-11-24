Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D29EE00D46; Thu, 24 Nov 2016 07:28:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50105E00D3B
	for <yocto@yoctoproject.org>; Thu, 24 Nov 2016 07:28:26 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 24 Nov 2016 07:28:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,543,1473145200"; d="scan'208";a="1073042326"
Received: from fsantes-mobl2.amr.corp.intel.com (HELO
	jalamego-MOBL2.zpn.intel.com) ([10.219.5.141])
	by fmsmga001.fm.intel.com with ESMTP; 24 Nov 2016 07:28:03 -0800
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 24 Nov 2016 09:27:39 -0600
Message-Id: <1480001259-6737-3-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1480001259-6737-1-git-send-email-jose.a.lamego@linux.intel.com>
References: <1480001259-6737-1-git-send-email-jose.a.lamego@linux.intel.com>
Subject: [patchwork][PATCH 2/2] patchwork.bin.parsemail: Improve pull-request regex
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
X-List-Received-Date: Thu, 24 Nov 2016 15:28:30 -0000

Some patch messages containinig pull-request information
are being skipped due to formatting variations.

This change improves the pull-request search to include those
small variants.

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 patchwork/bin/parsemail.py | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/patchwork/bin/parsemail.py b/patchwork/bin/parsemail.py
index c10bed5..476118d 100755
--- a/patchwork/bin/parsemail.py
+++ b/patchwork/bin/parsemail.py
@@ -195,8 +195,8 @@ def mail_headers(mail):
 
 def find_pull_request(content):
     git_re = re.compile(r'^The following changes since commit.*' +
-                        r'^are available in the git repository at:\n'
-                        r'^\s*([\S]+://[^\n]+)$',
+                        r'^are available in the git repository at:.*'+
+                        r'^\s*([\S]+://[^\n]+)[$]*',
                         re.DOTALL | re.MULTILINE)
     match = git_re.search(content)
     if match:
-- 
1.9.1


