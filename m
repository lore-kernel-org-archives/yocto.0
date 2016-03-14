Return-Path: <Adrian.Dudau@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA19AE00D55; Mon, 14 Mar 2016 08:12:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.36.1.252 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 14F99E00D55
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 08:12:29 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.266.1;
	Mon, 14 Mar 2016 16:12:25 +0100
Received: by sestofb10.enea.se (Postfix, from userid 4451)	id 240CA28BA23;
	Mon, 14 Mar 2016 16:12:26 +0100 (CET)
From: Adrian Dudau <adrian.dudau@enea.com>
To: <yocto@yoctoproject.org>
Date: Mon, 14 Mar 2016 16:12:21 +0100
Message-ID: <1457968346-54855-1-git-send-email-adrian.dudau@enea.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Received-SPF: None (SESTOEX03.enea.se: adrian.dudau@enea.com does not
	designate permitted sender hosts)
Subject: [meta-cgl][PATCH 1/6] sysvinit: remove permissions override
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
X-List-Received-Date: Mon, 14 Mar 2016 15:12:33 -0000
Content-Type: text/plain

This leads to shutdown command being executable by everybody,
which is a huge security issue. If there are issues related to the way
this is configured in the main recipe, they should be handled
differently.

Signed-off-by: Adrian Dudau <adrian.dudau@enea.com>
---
 meta-cgl-common/recipes-core/sysvinit/sysvinit_2.%.bbappend | 3 ---
 1 file changed, 3 deletions(-)
 delete mode 100644 meta-cgl-common/recipes-core/sysvinit/sysvinit_2.%.bbappend

diff --git a/meta-cgl-common/recipes-core/sysvinit/sysvinit_2.%.bbappend b/meta-cgl-common/recipes-core/sysvinit/sysvinit_2.%.bbappend
deleted file mode 100644
index 4fd3c00..0000000
--- a/meta-cgl-common/recipes-core/sysvinit/sysvinit_2.%.bbappend
+++ /dev/null
@@ -1,3 +0,0 @@
-do_install_append(){
-        chmod o+x ${D}${base_sbindir}/shutdown
-}
-- 
1.9.1


