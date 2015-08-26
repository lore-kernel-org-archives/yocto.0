Return-Path: <Rongqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA6EEE00A92; Tue, 25 Aug 2015 22:53:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC8F8E0070F
	for <yocto@yoctoproject.org>; Tue, 25 Aug 2015 22:53:15 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id t7Q5rExi026351
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Tue, 25 Aug 2015 22:53:14 -0700 (PDT)
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.235.1; Tue, 25 Aug 2015 22:53:14 -0700
From: <rongqing.li@windriver.com>
To: <yocto@yoctoproject.org>
Date: Wed, 26 Aug 2015 13:48:54 +0800
Message-ID: <1440568134-25471-1-git-send-email-rongqing.li@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Subject: [PATCH][meta-virtualization] openvsitch: set CONFIGUREOPT_DEPTRACK to empty
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
X-List-Received-Date: Wed, 26 Aug 2015 05:53:20 -0000
Content-Type: text/plain

From: Roy Li <rongqing.li@windriver.com>

compilation failed since the needed dirs maybe not created when make
".in" target, fix it by creating the needed dirs before, but mainstream
thinks the needed dirs should be created when do configuration.
at last, find CONFIGUREOPT_DEPTRACK disable the creation, so empty
it
http://openvswitch.org/pipermail/dev/2015-August/059189.html

set CONFIGUREOPT_DEPTRACK to empty, is lower effective, but harmless,
and can fix the parallel building issue;
see oe-core 970e0ae6108[autotools: Disable dependency tracking

Signed-off-by: Roy Li <rongqing.li@windriver.com>
---
 recipes-networking/openvswitch/openvswitch.inc | 1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-networking/openvswitch/openvswitch.inc b/recipes-networking/openvswitch/openvswitch.inc
index 58c8352..454aadf 100644
--- a/recipes-networking/openvswitch/openvswitch.inc
+++ b/recipes-networking/openvswitch/openvswitch.inc
@@ -39,6 +39,7 @@ EXTRA_OECONF += "\
 	TARGET_PYTHON=${bindir}/python \
 	TARGET_PERL=${bindir}/perl \
 	"
+CONFIGUREOPT_DEPTRACK = ""
 
 # Don't compile kernel modules by default since it heavily depends on
 # kernel version. Use the in-kernel module for now.
-- 
1.9.1


