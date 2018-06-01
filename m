Return-Path: <Yi.Zhao@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17A78E00CDC; Fri,  1 Jun 2018 00:01:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C81AEE00CA1
	for <yocto@yoctoproject.org>; Fri,  1 Jun 2018 00:01:19 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w5170XhH009737
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 1 Jun 2018 00:00:48 -0700
Received: from localhost (128.224.162.137) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.361.1;
	Fri, 1 Jun 2018 00:00:22 -0700
From: Yi Zhao <yi.zhao@windriver.com>
To: <paul.eggleton@linux.intel.com>, <yocto@yoctoproject.org>
Date: Fri, 1 Jun 2018 15:00:11 +0800
Message-ID: <1527836411-20020-2-git-send-email-yi.zhao@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1527836411-20020-1-git-send-email-yi.zhao@windriver.com>
References: <1527836411-20020-1-git-send-email-yi.zhao@windriver.com>
MIME-Version: 1.0
X-Originating-IP: [128.224.162.137]
Subject: [layerindex-web][PATCH 2/2] rrs_upstream_history.py: fix set_regexes function
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
X-List-Received-Date: Fri, 01 Jun 2018 07:01:25 -0000
Content-Type: text/plain

REGEX, REGEX_URI and GITTAGREGEX are replaced by UPSTREAM_CHECK_REGEX,
UPSTREAM_CHECK_URI and UPSTREAM_CHECK_GITTAGREGEX

Signed-off-by: Yi Zhao <yi.zhao@windriver.com>
---
 rrs/tools/rrs_upstream_history.py | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/rrs/tools/rrs_upstream_history.py b/rrs/tools/rrs_upstream_history.py
index ce60d8f..cf4b8d7 100755
--- a/rrs/tools/rrs_upstream_history.py
+++ b/rrs/tools/rrs_upstream_history.py
@@ -47,7 +47,7 @@ def set_regexes(d):
         one set it.
     """
 
-    variables = ('REGEX', 'REGEX_URI', 'GITTAGREGEX')
+    variables = ('UPSTREAM_CHECK_REGEX', 'UPSTREAM_CHECK_URI', 'UPSTREAM_CHECK_GITTAGREGEX')
 
     if any(d.getVar(var, True) for var in variables):
         return
-- 
2.7.4


