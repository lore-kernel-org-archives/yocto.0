Return-Path: <Kai.Kang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E94FDE00945; Thu, 18 Dec 2014 01:00:47 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95590E00897
	for <yocto@yoctoproject.org>; Thu, 18 Dec 2014 01:00:41 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id sBI90cju028422
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=FAIL);
	Thu, 18 Dec 2014 01:00:39 -0800 (PST)
Received: from pek-hostel-deb02.wrs.com (128.224.153.152) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server
	(TLS) id 14.3.174.1; Thu, 18 Dec 2014 01:00:38 -0800
From: Kai Kang <kai.kang@windriver.com>
To: <ross.burton@intel.com>
Date: Thu, 18 Dec 2014 16:58:14 +0800
Message-ID: <1418893095-30224-1-git-send-email-kai.kang@windriver.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [128.224.153.152]
Cc: yocto@yoctoproject.org
Subject: [PATCH 1/2] local.conf.sample: Add qemuarm64
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
X-List-Received-Date: Thu, 18 Dec 2014 09:00:48 -0000
Content-Type: text/plain

From: Mark Hatle <mark.hatle@windriver.com>

Add an example machine configuration for qemuarm64.

Signed-off-by: Mark Hatle <mark.hatle@windriver.com>
---
 meta-yocto/conf/local.conf.sample | 1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/local.conf.sample b/meta-yocto/conf/local.conf.sample
index 93c85c2..a1d99f9 100644
--- a/meta-yocto/conf/local.conf.sample
+++ b/meta-yocto/conf/local.conf.sample
@@ -18,6 +18,7 @@
 # of emulated machines available which can boot and run in the QEMU emulator:
 #
 #MACHINE ?= "qemuarm"
+#MACHINE ?= "qemuarm64"
 #MACHINE ?= "qemumips"
 #MACHINE ?= "qemuppc"
 #MACHINE ?= "qemux86"
-- 
1.9.1


