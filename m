Return-Path: <qianl.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA529E00872; Mon, 19 Jan 2015 02:08:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5BFD4E002F9
	for <yocto@yoctoproject.org>; Mon, 19 Jan 2015 02:08:19 -0800 (PST)
X-IronPort-AV: E=Sophos;i="5.04,848,1406563200"; d="scan'208";a="56263702"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 19 Jan 2015 18:04:48 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id t0JA7c2a004822
	for <yocto@yoctoproject.org>; Mon, 19 Jan 2015 18:07:38 +0800
Received: from Fedora.g08.fujitsu.local (10.167.226.40) by
	G08CNEXCHPEKD01.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Mon, 19 Jan 2015 18:08:20 +0800
From: Qian Lei <qianl.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Mon, 19 Jan 2015 18:07:34 +0800
Message-ID: <1421662056-1389-1-git-send-email-qianl.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
X-Originating-IP: [10.167.226.40]
Subject: [meta-cgl][PATCH 0/2] cluster: Fix some error and format
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
X-List-Received-Date: Mon, 19 Jan 2015 10:08:22 -0000
Content-Type: text/plain

Use KERNEL_SRC instead of hardcode path in configure. Also fix 
license format.

*** BLURB HERE ***

Qian Lei (2):
  cluster: Fix license format
  cluster: Add a patch to fix the path of kernel source

 .../cluster/0001-Fix-the-kernel-source-patch.patch | 38 ++++++++++++++++++++++
 .../recipes-cgl/cluster/cluster_3.2.0.bb           |  5 +--
 2 files changed, 41 insertions(+), 2 deletions(-)
 create mode 100644 meta-cgl-common/recipes-cgl/cluster/cluster/0001-Fix-the-kernel-source-patch.patch

-- 
1.8.3.1


