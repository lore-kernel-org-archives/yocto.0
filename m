Return-Path: <jose.a.lamego@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A264E00CC2; Tue, 17 Oct 2017 13:55:14 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F15BBE00CA6
	for <yocto@yoctoproject.org>; Tue, 17 Oct 2017 13:55:12 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	17 Oct 2017 13:55:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,392,1503385200"; d="scan'208";a="1206895037"
Received: from jalamego-mobl3.zpn.intel.com ([10.219.128.138])
	by fmsmga001.fm.intel.com with ESMTP; 17 Oct 2017 13:55:11 -0700
From: Jose Lamego <jose.a.lamego@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 17 Oct 2017 15:54:58 -0500
Message-Id: <1508273699-4543-1-git-send-email-jose.a.lamego@linux.intel.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Subject: [rrs][PATCH] README.rrs: update rrs maintainer data
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
X-List-Received-Date: Tue, 17 Oct 2017 20:55:14 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This change updates rrs maintainer contact data.

Signed-off-by: Jose Lamego <jose.a.lamego@linux.intel.com>
---
 README.rrs | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/README.rrs b/README.rrs
index d8dd926..a60b8c4 100644
--- a/README.rrs
+++ b/README.rrs
@@ -52,4 +52,4 @@ The latest version of the code can always be found here:
 
 Contributions are welcome. Please send patches / pull requests to
 yocto@yoctoproject.org with '[rrs]' in the subject and cc the current
-maintainer that is Aníbal Limón <anibal.limon@linux.intel.com>.
+maintainer that is Jose Lamego <jose.a.lamego@linux.intel.com>.
-- 
2.7.4


