Return-Path: <ayaka@soulik.info>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D14C6E00AC5; Sun, 19 Mar 2017 10:58:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kozue.soulik.info (kozue.soulik.info [108.61.200.231])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 728DEE00AA9
	for <yocto@yoctoproject.org>; Sun, 19 Mar 2017 10:58:48 -0700 (PDT)
Received: from misaki.sumomo.pri (unknown
	[IPv6:2001:470:b30d:2:3fe5:5e2:ef97:4abb])
	by kozue.soulik.info (Postfix) with ESMTPA id BF5A3101F43;
	Mon, 20 Mar 2017 02:50:07 +0900 (JST)
From: ayaka <ayaka@soulik.info>
To: yocto@yoctoproject.org
Date: Mon, 20 Mar 2017 01:48:31 +0800
Message-Id: <1489945717-27219-2-git-send-email-ayaka@soulik.info>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1489945717-27219-1-git-send-email-ayaka@soulik.info>
References: <1489945717-27219-1-git-send-email-ayaka@soulik.info>
X-Mailman-Approved-At: Mon, 20 Mar 2017 10:57:32 -0700
Cc: ayaka <ayaka@soulik.info>
Subject: [PATCH 1/7] README: correct the FPU information for RK3288
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
X-List-Received-Date: Sun, 19 Mar 2017 17:58:49 -0000

The RK3288 only supports VFPv3 from the datasheet.

Signed-off-by: ayaka <ayaka@soulik.info>
---
 README | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/README b/README
index 5d19202..f9f705c 100644
--- a/README
+++ b/README
@@ -136,6 +136,6 @@ has these same goals, or you can add settings in your configuration files
 (e.g. local.conf) as follows:
 
 	for rk3288:
-		DEFAULTTUNE = "cortexa17hf-neon-vfpv4"
+		DEFAULTTUNE = "cortexa17hf-neon"
 	for rk3066:
 		DEFAULTTUNE = "cortexa9-neon"
-- 
2.7.4


