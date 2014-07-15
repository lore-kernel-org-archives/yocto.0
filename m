Return-Path: <Chong.Lu@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64557E006DB; Tue, 15 Jul 2014 02:52:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 12D68E00572
	for <yocto@yoctoproject.org>; Tue, 15 Jul 2014 02:52:28 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s6F9qSMe008244
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 15 Jul 2014 02:52:28 -0700 (PDT)
Received: from PKE-CLU1-D1.corp.ad.wrs.com (128.224.162.204) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.174.1; Tue, 15 Jul 2014 02:52:28 -0700
From: Chong Lu <Chong.Lu@windriver.com>
To: <yocto@yoctoproject.org>
Date: Tue, 15 Jul 2014 17:52:25 +0800
Message-ID: <1405417945-24729-2-git-send-email-Chong.Lu@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1405417945-24729-1-git-send-email-Chong.Lu@windriver.com>
References: <1405417945-24729-1-git-send-email-Chong.Lu@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 2/2] gnupg: remove PR
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
X-List-Received-Date: Tue, 15 Jul 2014 09:52:31 -0000
Content-Type: text/plain

Remove PR, since oe-core has a new version.

Signed-off-by: Chong Lu <Chong.Lu@windriver.com>
---
 recipes-support/gnupg/gnupg_2.%.bbappend |    2 --
 1 file changed, 2 deletions(-)

diff --git a/recipes-support/gnupg/gnupg_2.%.bbappend b/recipes-support/gnupg/gnupg_2.%.bbappend
index dddd945..12571b4 100644
--- a/recipes-support/gnupg/gnupg_2.%.bbappend
+++ b/recipes-support/gnupg/gnupg_2.%.bbappend
@@ -1,5 +1,3 @@
-PR .= ".1"
-
 inherit enable-selinux
 # gnupg will not build with libselinux, so remove the depend
 PACKAGECONFIG[selinux] = "--enable-selinux-support,--disable-selinux-support,,"
-- 
1.7.9.5


