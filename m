Return-Path: <prvs=905201302=Richard.Leitner@skidata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9289E00DB1; Thu, 14 Apr 2016 03:58:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [91.230.2.99 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.skidata.com (mail1.skidata.com [91.230.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F989E00DA4
	for <yocto@yoctoproject.org>; Thu, 14 Apr 2016 03:58:26 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2DOAQAadw9X/0oKEKxehAt9Brgagg8BDYFxGoV0AoFsFAEBAQEBAQGBDIRCAQEEeRAYOVcGDgXKZAEBAQEGAQEBARyGIYhYfoUKBZgLgVSEI4gYgU8BY4cchT+PKR4BAYQraog9P34BAQE
X-IPAS-Result: A2DOAQAadw9X/0oKEKxehAt9Brgagg8BDYFxGoV0AoFsFAEBAQEBAQGBDIRCAQEEeRAYOVcGDgXKZAEBAQEGAQEBARyGIYhYfoUKBZgLgVSEI4gYgU8BY4cchT+PKR4BAYQraog9P34BAQE
From: Richard Leitner <richard.leitner@skidata.com>
To: <yocto@yoctoproject.org>
Date: Thu, 14 Apr 2016 12:58:33 +0200
Message-ID: <1460631517-16864-2-git-send-email-richard.leitner@skidata.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1460631517-16864-1-git-send-email-richard.leitner@skidata.com>
References: <1460631517-16864-1-git-send-email-richard.leitner@skidata.com>
MIME-Version: 1.0
X-Originating-IP: [172.16.60.30]
X-ClientProxiedBy: sdex1srv.skidata.net (172.16.10.92) To sdex1srv.skidata.net
	(172.16.10.92)
Subject: [psplash][PATCH 1/5] configure: add -Wextra GCC flag
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
X-List-Received-Date: Thu, 14 Apr 2016 10:58:32 -0000
Content-Type: text/plain

Enable extra warnings when using GCC.

Signed-off-by: Richard Leitner <richard.leitner@skidata.com>
---
 configure.ac | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/configure.ac b/configure.ac
index bf00e91..1c4d919 100644
--- a/configure.ac
+++ b/configure.ac
@@ -9,7 +9,7 @@ AC_PROG_CC
 AC_STDC_HEADERS
 
 if test "x$GCC" = "xyes"; then
-        GCC_FLAGS="-g -Wall"
+        GCC_FLAGS="-g -Wall -Wextra"
 fi
 
 AC_SUBST(GCC_FLAGS)
-- 
2.1.4


