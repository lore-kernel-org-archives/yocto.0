Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7F16E00A0C; Mon, 27 Mar 2017 11:41:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_HI,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 618E1E00953
	for <yocto@yoctoproject.org>; Mon, 27 Mar 2017 11:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1490640078; x=1522176078;
	h=from:to:cc:subject:date:message-id:in-reply-to: references;
	bh=AqCmEsvgcsXoySbhkuGK27VuLNjOb4x2JronQiPAd+Y=;
	b=DelNxCR29D+fjghVX+CuvRtb171KTano7Uia46udAc6IKG1sQdcC23RL
	1KWC1A5hV7yyW13yfFDfBHHIjCL3Mg==;
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	27 Mar 2017 11:41:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,232,1486454400"; d="scan'208";a="81553843"
Received: from jalamego-mobl2.zpn.intel.com ([10.219.128.123])
	by fmsmga006.fm.intel.com with ESMTP; 27 Mar 2017 11:41:17 -0700
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 27 Mar 2017 12:40:49 -0600
Message-Id: <1490640050-10619-2-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1490640050-10619-1-git-send-email-jose.a.lamego@linux.intel.com>
References: <1490640050-10619-1-git-send-email-jose.a.lamego@linux.intel.com>
Subject: [patchwork][PATCH 1/2] patchwork/paginator.py: Add archive parameter
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
X-List-Received-Date: Mon, 27 Mar 2017 18:41:21 -0000

paginator links do not keep "archive" filtering parameter from
current view, which may lead to inaccurate data displayed in the
next views.

This change adds the "archive" parameter read from the current
request to the paginator class.

[YOCTO #11200]

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 patchwork/paginator.py | 1 +
 1 file changed, 1 insertion(+)

diff --git a/patchwork/paginator.py b/patchwork/paginator.py
index 0f6d684..88fca29 100644
--- a/patchwork/paginator.py
+++ b/patchwork/paginator.py
@@ -93,3 +93,4 @@ class Paginator(paginator.Paginator):
         self.leading_set.reverse()
         self.long_page = len(
             self.current_page.object_list) >= LONG_PAGE_THRESHOLD
+        self.archive = request.GET.get("archive")
-- 
2.7.4


