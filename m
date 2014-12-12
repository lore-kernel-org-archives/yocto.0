Return-Path: <lixin.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFD1AE00993; Thu, 11 Dec 2014 21:26:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31C50E00982
	for <yocto@yoctoproject.org>; Thu, 11 Dec 2014 21:26:06 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.04,848,1406563200"; d="scan'208";a="44928313"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 12 Dec 2014 13:22:47 +0800
Received: from G08CNEXCHPEKD02.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id sBC5Pg75018028
	for <yocto@yoctoproject.org>; Fri, 12 Dec 2014 13:25:42 +0800
Received: from localhost.localdomain (10.167.226.35) by
	G08CNEXCHPEKD02.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Fri, 12 Dec 2014 13:26:05 +0800
From: Li xin <lixin.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Fri, 12 Dec 2014 13:25:08 +0800
Message-ID: <1418361910-6668-1-git-send-email-lixin.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.7.9.5
MIME-Version: 1.0
X-Originating-IP: [10.167.226.35]
Subject: [meta-cgl][PATCH 0/2] pacemaker: upgrade to 1.1.4
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
X-List-Received-Date: Fri, 12 Dec 2014 05:26:11 -0000
Content-Type: text/plain

patch-1/2 is pacemaker's new depends.
patch-2/2 is upgrade pacemaker to 1.1.4.

Signed-off-by: Li Xin <lixin.fnst@cn.fujitsu.com>
Li xin (2):
  heartbeat: add new recipe
  pacemaker: upgrade to version 1.1.4

 .../Makefile.am-not-chgrp-in-cross-compile.patch   |  41 ++++++
 .../configure.in-Error-and-warning-fix.patch       | 157 +++++++++++++++++++++
 ...beat-init.d-heartbeat.in-modify-parameter.patch |  27 ++++
 .../heartbeat/heartbeat/heartbeat.service          |  10 ++
 .../membership-ccm-Makefile.am-fix-warning.patch   |  30 ++++
 .../heartbeat/ucast.c-fix-compile-errors.patch     |  26 ++++
 .../recipes-cgl/heartbeat/heartbeat_3.0.5.bb       | 123 ++++++++++++++++
 .../pacemaker/files/kill-stack-protector.patch     |  12 --
 .../pacemaker-remove-ptest-functionality.patch     |  29 ----
 .../recipes-cgl/pacemaker/files/volatiles          |   5 -
 .../pacemaker-1.0.9.1/fix-header-defs-lookup.patch |  16 ---
 .../pacemaker-dont-use-help2man.patch              |  16 ---
 .../pacemaker-remove-native-includes.patch         |  22 ---
 .../pacemaker/0001-configure.ac-error-fix.patch    |  59 ++++++++
 .../pacemaker/0002-Makefile.am-error-fix.patch     | 130 +++++++++++++++++
 .../recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb     |  83 -----------
 .../recipes-cgl/pacemaker/pacemaker_1.1.4.bb       |  84 +++++++++++
 17 files changed, 687 insertions(+), 183 deletions(-)
 create mode 100644 meta-cgl-common/recipes-cgl/heartbeat/heartbeat/Makefile.am-not-chgrp-in-cross-compile.patch
 create mode 100644 meta-cgl-common/recipes-cgl/heartbeat/heartbeat/configure.in-Error-and-warning-fix.patch
 create mode 100644 meta-cgl-common/recipes-cgl/heartbeat/heartbeat/heartbeat-init.d-heartbeat.in-modify-parameter.patch
 create mode 100644 meta-cgl-common/recipes-cgl/heartbeat/heartbeat/heartbeat.service
 create mode 100644 meta-cgl-common/recipes-cgl/heartbeat/heartbeat/membership-ccm-Makefile.am-fix-warning.patch
 create mode 100644 meta-cgl-common/recipes-cgl/heartbeat/heartbeat/ucast.c-fix-compile-errors.patch
 create mode 100644 meta-cgl-common/recipes-cgl/heartbeat/heartbeat_3.0.5.bb
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/files/kill-stack-protector.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/files/pacemaker-remove-ptest-functionality.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/files/volatiles
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/fix-header-defs-lookup.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacemaker-dont-use-help2man.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker-1.0.9.1/pacemaker-remove-native-includes.patch
 create mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0001-configure.ac-error-fix.patch
 create mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker/0002-Makefile.am-error-fix.patch
 delete mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.0.9.1.bb
 create mode 100644 meta-cgl-common/recipes-cgl/pacemaker/pacemaker_1.1.4.bb

-- 
1.8.4.2


