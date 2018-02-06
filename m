Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 000EAE00DFE; Tue,  6 Feb 2018 08:34:32 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85DC7E005BB
	for <yocto@yoctoproject.org>; Tue,  6 Feb 2018 08:34:31 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w16GYVTT019874
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 6 Feb 2018 08:34:31 -0800 (PST)
Received: from yow-bashfiel-d4.wrs.com (128.224.56.94) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.361.1; Tue, 6 Feb 2018 08:34:27 -0800
From: Bruce Ashfield <bruce.ashfield@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Tue, 6 Feb 2018 11:34:27 -0500
Message-ID: <50d63fd1cbb2140b0d4738d99f162cc8a841454c.1517934700.git.bruce.ashfield@windriver.com>
X-Mailer: git-send-email 2.5.0
In-Reply-To: <cover.1517934700.git.bruce.ashfield@windriver.com>
References: <cover.1517934700.git.bruce.ashfield@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: [PATCH 1/3] poky-lsb: update default kernel to v4.14
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
X-List-Received-Date: Tue, 06 Feb 2018 16:34:33 -0000
Content-Type: text/plain

4.14 is a LTS/LTSI kernel and we are dropping anything older than
4.12 in master. As such, we make 4.14 the default for poky-lsb.

Signed-off-by: Bruce Ashfield <bruce.ashfield@windriver.com>
---
 meta-poky/conf/distro/poky-lsb.conf | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-poky/conf/distro/poky-lsb.conf b/meta-poky/conf/distro/poky-lsb.conf
index 24cfb08b1201..ecfe5d2f446f 100644
--- a/meta-poky/conf/distro/poky-lsb.conf
+++ b/meta-poky/conf/distro/poky-lsb.conf
@@ -12,4 +12,4 @@ PREFERRED_PROVIDER_virtual/libx11 = "libx11"
 KERNEL_FEATURES_append_pn-linux-yocto = " features/nfsd/nfsd-enable.scc"
 
 # Use the LTSI Kernel for LSB Testing
-PREFERRED_VERSION_linux-yocto_linuxstdbase ?= "4.9%"
+PREFERRED_VERSION_linux-yocto_linuxstdbase ?= "4.14%"
-- 
2.5.0


