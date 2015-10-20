Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD779E00957; Tue, 20 Oct 2015 09:41:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7A20E0048C
	for <yocto@yoctoproject.org>; Tue, 20 Oct 2015 09:41:11 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id t9KGfAXE029260
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 20 Oct 2015 09:41:10 -0700 (PDT)
Received: from msp-dhcp23.wrs.com (172.25.34.23) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.248.2;
	Tue, 20 Oct 2015 09:41:10 -0700
From: Mark Hatle <mark.hatle@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 20 Oct 2015 11:41:05 -0500
Message-ID: <1445359268-172321-2-git-send-email-mark.hatle@windriver.com>
X-Mailer: git-send-email 1.9.3
In-Reply-To: <1445359268-172321-1-git-send-email-mark.hatle@windriver.com>
References: <1445359268-172321-1-git-send-email-mark.hatle@windriver.com>
MIME-Version: 1.0
Subject: [meta-mingw][PATCH 1/4] gcc-runtime: Drop libgomp for mingw32 runtime
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
X-List-Received-Date: Tue, 20 Oct 2015 16:41:15 -0000
Content-Type: text/plain

From: Peter Seebach <peter.seebach@windriver.com>

The mingw32 runtime has issues building libgomp, so drop it for now.

Signed-off-by: Peter Seebach <peter.seebach@windriver.com>
Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 recipes-devtools/gcc/gcc-runtime_4.9.bbappend | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-devtools/gcc/gcc-runtime_4.9.bbappend b/recipes-devtools/gcc/gcc-runtime_4.9.bbappend
index 50ca3ca..b068dfd 100644
--- a/recipes-devtools/gcc/gcc-runtime_4.9.bbappend
+++ b/recipes-devtools/gcc/gcc-runtime_4.9.bbappend
@@ -1,8 +1,8 @@
 FILES_libstdc++_append_mingw32 = " ${bindir}/libstdc++*.dll"
 FILES_libstdc++-staticdev_append_mingw32 = " ${libdir}/libstdc++.dll.a*"
 FILES_libssp_append_mingw32 = " ${bindir}/libssp*.dll"
-FILES_libgomp_append_mingw32 = " ${bindir}/libgomp*.dll"
+# FILES_libgomp_append_mingw32 = " ${bindir}/libgomp*.dll"
 
-RUNTIMETARGET_remove_mingw32 = "libatomic"
+RUNTIMETARGET_remove_mingw32 = "libatomic libgomp"
 
 DEPENDS_append_mingw32 = " pthreads-win32"
-- 
1.9.3


