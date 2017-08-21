Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BF34E00CE7; Sun, 20 Aug 2017 20:01:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7154E00C93
	for <yocto@yoctoproject.org>; Sun, 20 Aug 2017 20:01:52 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v7L31ou0001546
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Sun, 20 Aug 2017 20:01:51 -0700
Received: from yow-bashfiel-d4.wrs.com (128.224.56.94) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.361.1; Sun, 20 Aug 2017 20:01:50 -0700
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Sun, 20 Aug 2017 23:01:48 -0400
Message-ID: <2ba0adeb433b0fe20a97f7548342ee39872b12e0.1503284343.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 2.5.0
In-Reply-To: <cover.1503284343.git.bruce.ashfield@windriver.com>
References: <cover.1503284343.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [PATCH 2/2] poky: bump poky lsb to linux 4.9
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
X-List-Received-Date: Mon, 21 Aug 2017 03:01:53 -0000
Content-Type: text/plain

Due to the age of 4.1 and it being removed from oe-core master
as an active kernel, we can bump poky-lsb to the newer 4.9 LTSI
kernel version.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-poky/conf/distro/poky-lsb.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky-lsb.conf b/meta-poky/conf/distro/poky-lsb.conf
index e7d6995a7357..24cfb08b1201 100644
--- a/meta-poky/conf/distro/poky-lsb.conf
+++ b/meta-poky/conf/distro/poky-lsb.conf
@@ -12,4 +12,4 @@ PREFERRED_PROVIDER_virtual/libx11 = "libx11"
 KERNEL_FEATURES_append_pn-linux-yocto = " features/nfsd/nfsd-enable.scc"
 
 # Use the LTSI Kernel for LSB Testing
-PREFERRED_VERSION_linux-yocto_linuxstdbase ?= "4.1%"
+PREFERRED_VERSION_linux-yocto_linuxstdbase ?= "4.9%"
-- 
2.5.0


