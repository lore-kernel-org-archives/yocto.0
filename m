Return-Path: <Wenzong.Fan@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AAA70E00B73; Mon, 12 May 2014 00:32:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail1.windriver.com (unknown [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D6BBE00B70
	for <yocto@yoctoproject.org>; Mon, 12 May 2014 00:31:55 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.5) with ESMTP id s4C7Vt00028165
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Mon, 12 May 2014 00:31:55 -0700 (PDT)
Received: from pek-hostel-vm12.wrs.com (128.224.153.182) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.169.1; Mon, 12 May 2014 00:31:54 -0700
From: <wenzong.fan@windriver.com>
To: <yocto@yoctoproject.org>, <xin.ouyang@windriver.com>,
	<mark.hatle@windriver.com>
Date: Mon, 12 May 2014 03:31:49 -0400
Message-ID: <2940058ac2ecbd67891c0045c5acc902373c8bea.1399879397.git.wenzong.fan@windriver.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1399879397.git.wenzong.fan@windriver.com>
References: <cover.1399879397.git.wenzong.fan@windriver.com>
MIME-Version: 1.0
Subject: [meta-selinux][PATCH 2/2] initscripts/devpts.sh: fix context for /dev/pts
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
X-List-Received-Date: Mon, 12 May 2014 07:32:06 -0000
Content-Type: text/plain

From: Wenzong Fan <wenzong.fan@windriver.com>

devpts use file_use_trans to allocate security contexts. As there are no
range_trans rules for initrc_t mounting devpts, the security level of
mountpoint will be derived from the initrc process, to be systemhigh
(s15:c0.c1023), instead of expected systemlow(s0).

This will block login shells to search PTYs, so use restorecon to fix
this.

Signed-off-by: Wenzong Fan <wenzong.fan@windriver.com>
---
 recipes-core/initscripts/initscripts/devpts.sh |    1 +
 1 file changed, 1 insertion(+)

diff --git a/recipes-core/initscripts/initscripts/devpts.sh b/recipes-core/initscripts/initscripts/devpts.sh
index c6043fb..a0b037f 100755
--- a/recipes-core/initscripts/initscripts/devpts.sh
+++ b/recipes-core/initscripts/initscripts/devpts.sh
@@ -24,5 +24,6 @@ then
 	then
 		mkdir -p /dev/pts
 		mount -t devpts devpts /dev/pts -ogid=${TTYGRP},mode=${TTYMODE}
+		test ! -x /sbin/restorecon || /sbin/restorecon -F /dev/pts
 	fi
 fi
-- 
1.7.9.5


