Return-Path: <lixin.fnst@cn.fujitsu.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7801E009EF; Wed, 19 Aug 2015 20:35:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from heian.cn.fujitsu.com (unknown [59.151.112.132])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F388E009EF
	for <yocto@yoctoproject.org>; Wed, 19 Aug 2015 20:35:50 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="5.15,520,1432569600"; d="scan'208";a="99830989"
Received: from unknown (HELO edo.cn.fujitsu.com) ([10.167.33.5])
	by heian.cn.fujitsu.com with ESMTP; 20 Aug 2015 11:39:03 +0800
Received: from G08CNEXCHPEKD01.g08.fujitsu.local (localhost.localdomain
	[127.0.0.1])
	by edo.cn.fujitsu.com (8.14.3/8.13.1) with ESMTP id t7K3Ziip026823
	for <yocto@yoctoproject.org>; Thu, 20 Aug 2015 11:35:44 +0800
Received: from localhost.localdomain (10.167.226.92) by
	G08CNEXCHPEKD01.g08.fujitsu.local (10.167.33.89) with Microsoft SMTP
	Server (TLS) id 14.3.181.6; Thu, 20 Aug 2015 11:35:47 +0800
From: Li xin <lixin.fnst@cn.fujitsu.com>
To: <yocto@yoctoproject.org>
Date: Thu, 20 Aug 2015 11:35:25 +0800
Message-ID: <1440041726-1637-1-git-send-email-lixin.fnst@cn.fujitsu.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <A8FC939F80655644A89BB21CCD3741E8011BCBB2A0@G08CNEXMBPEKD03.g08.fujitsu.local>
References: <A8FC939F80655644A89BB21CCD3741E8011BCBB2A0@G08CNEXMBPEKD03.g08.fujitsu.local>
MIME-Version: 1.0
X-Originating-IP: [10.167.226.92]
Subject: [meta-cgl][PATCH] upgrade ocfs2-tools
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
X-List-Received-Date: Thu, 20 Aug 2015 03:35:55 -0000
Content-Type: text/plain

1.4.4 is not the newest version, and 1.6.4 is.
Reference: https://oss.oracle.com/projects/ocfs2-tools/files/source/

Li xin (1):
  ocfs2-tools: upgrade 1.4.3 -> 1.6.4

 ...ocfs2_controld-Makefile-fix-compile-error.patch | 62 ----------------------
 ...cfs2_fs.h-mount.ocfs2.c-fix-compile-error.patch | 22 --------
 .../{ocfs2-tools_1.4.3.bb => ocfs2-tools_1.6.4.bb} | 15 +++---
 3 files changed, 8 insertions(+), 91 deletions(-)
 delete mode 100644 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools/0001-ocfs2_controld-Makefile-fix-compile-error.patch
 rename meta-cgl-common/recipes-cgl/ocfs2-tools/{ocfs2-tools_1.4.3.bb => ocfs2-tools_1.6.4.bb} (88%)

-- 
1.8.4.2


