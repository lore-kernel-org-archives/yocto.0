Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F126DE007E1; Tue,  3 May 2016 09:28:47 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7139AE006D3
	for <yocto@yoctoproject.org>; Tue,  3 May 2016 09:28:45 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 03 May 2016 09:28:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,573,1455004800"; d="scan'208";a="797866185"
Received: from tzanussi-mobl.amr.corp.intel.com (HELO localhost)
	([10.255.82.108])
	by orsmga003.jf.intel.com with ESMTP; 03 May 2016 09:28:45 -0700
From: Tom Zanussi <tom.zanussi@linux.intel.com>
To: srifenbark@gmail.com,
	yocto@yoctoproject.org
Date: Tue,  3 May 2016 11:28:40 -0500
Message-Id: <d7596fd0210744373a8a5d073589b64ef4de04e1.1462292535.git.tom.zanussi@linux.intel.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <560ec02d15e8e7338ebf79c2439afc9e5a6cd0b1.1462292535.git.tom.zanussi@linux.intel.com>
References: <560ec02d15e8e7338ebf79c2439afc9e5a6cd0b1.1462292535.git.tom.zanussi@linux.intel.com>
In-Reply-To: <cover.1462292535.git.tom.zanussi@linux.intel.com>
References: <cover.1462292535.git.tom.zanussi@linux.intel.com>
Subject: [PATCH v2 2/2] README: Add correct email for Yocto documentation maintainer
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
X-List-Received-Date: Tue, 03 May 2016 16:28:48 -0000

The e-mail address the top-level README says to cc: is no longer
valid; replace it with the same e-mail address found elsewhere in the
repo.

Signed-off-by: Tom Zanussi <tom.zanussi@linux.intel.com>
---
 README | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/README b/README
index 4c3b257..bcd68c1 100644
--- a/README
+++ b/README
@@ -12,4 +12,4 @@ Where to Send Patches
 
 Git repository: http://git.yoctoproject.org/cgit/cgit.cgi/yocto-docs/
 Mailing list: yocto@yoctoproject.org
-Please cc: Scott Rifenbark <scott.m.rifenbark@intel.com> on changes.
+Please cc: Scott Rifenbark <srifenbark@gmail.com> on changes.
-- 
1.9.3


