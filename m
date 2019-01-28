Return-Path: <Meng.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1386E00CDF; Mon, 28 Jan 2019 02:19:00 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C72BBE00CDC;
	Mon, 28 Jan 2019 02:18:58 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x0SAIvhY023687
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 28 Jan 2019 02:18:57 -0800 (PST)
Received: from pek-mli1-d1.wrs.com (128.224.162.136) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.435.0; Mon, 28 Jan 2019 02:18:56 -0800
From: <Meng.Li@windriver.com>
To: <richard.purdie@linuxfoundation.org>
Date: Mon, 28 Jan 2019 18:20:03 +0800
Message-ID: <1548670803-27762-2-git-send-email-Meng.Li@windriver.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1548670803-27762-1-git-send-email-Meng.Li@windriver.com>
References: <1548670803-27762-1-git-send-email-Meng.Li@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, poky@yoctoproject.org
Subject: [PATCH] u-boot: update commit id to the latest one of u-boot upstream
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
X-List-Received-Date: Mon, 28 Jan 2019 10:19:00 -0000
Content-Type: text/plain

From: MengLi <meng.li@windriver.com>

There are 2 CVE issues fixing in latest u-boot upstream, so
update commit id to involve these fixing patches.

Signed-off-by: Meng Li <Meng.Li@windriver.com>
---
 meta/recipes-bsp/u-boot/u-boot-common.inc | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta/recipes-bsp/u-boot/u-boot-common.inc b/meta/recipes-bsp/u-boot/u-boot-common.inc
index 6f4a10b..3648d47 100644
--- a/meta/recipes-bsp/u-boot/u-boot-common.inc
+++ b/meta/recipes-bsp/u-boot/u-boot-common.inc
@@ -8,7 +8,7 @@ PE = "1"
 
 # We use the revision in order to avoid having to fetch it from the
 # repo during parse
-SRCREV = "0157013f4a4945bbdb70bb4d98d680e0845fd784"
+SRCREV = "d01806a8fcbdaedcc67cead56ece572021d97ab7"
 
 SRC_URI = "git://git.denx.de/u-boot.git"
 
-- 
2.7.4


