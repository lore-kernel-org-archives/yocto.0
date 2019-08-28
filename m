Return-Path: <lorenz@sigma-star.at>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7484DE00D33; Wed, 28 Aug 2019 07:11:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 381 seconds by postgrey-1.32 at yocto-www;
	Wed, 28 Aug 2019 07:11:11 PDT
Received: from lilium.sigma-star.at (lilium.sigma-star.at [109.75.188.150])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2EAFBE00C81
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2019 07:11:11 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by lilium.sigma-star.at (Postfix) with ESMTP id 9D8501810A9A9;
	Wed, 28 Aug 2019 16:04:48 +0200 (CEST)
Received: from lilium.sigma-star.at ([127.0.0.1])
	by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new,
	port 10032)
	with ESMTP id DCgY9S8fQHKi; Wed, 28 Aug 2019 16:04:48 +0200 (CEST)
Received: from lilium.sigma-star.at ([127.0.0.1])
	by localhost (lilium.sigma-star.at [127.0.0.1]) (amavisd-new,
	port 10026)
	with ESMTP id sD4n5lYLI7b8; Wed, 28 Aug 2019 16:04:47 +0200 (CEST)
From: Lorenz Kofler <lorenz@sigma-star.at>
To: yocto@yoctoproject.org
Date: Wed, 28 Aug 2019 16:03:33 +0200
Message-Id: <20190828140333.30466-1-lorenz@sigma-star.at>
X-Mailer: git-send-email 2.16.4
X-Mailman-Approved-At: Mon, 02 Sep 2019 05:42:13 -0700
Cc: Lorenz Kofler <lorenz@sigma-star.at>, richard@sigma-star.at
Subject: [PATCH] selinux-python: Fix dependency for ntpath
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
X-List-Received-Date: Wed, 28 Aug 2019 14:11:13 -0000

On yocto warrior the semanage tool didn't work correctly, because it
couldn't find ntpath module. It turned out that this module is now part
of the package python-misc, therefore add dependency to python-misc.

Signed-off-by: Lorenz Kofler <lorenz@sigma-star.at>
---
 recipes-security/selinux/selinux-python.inc | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/recipes-security/selinux/selinux-python.inc b/recipes-security/selinux/selinux-python.inc
index c774de4..911d678 100644
--- a/recipes-security/selinux/selinux-python.inc
+++ b/recipes-security/selinux/selinux-python.inc
@@ -44,7 +44,8 @@ RDEPENDS_${BPN}-semanage += "\
         python-ipy \
         python-compression \
         python-xml \
-        libselinux-python \
+        python-misc \
+	libselinux-python \
         ${BPN} \
 "
 RDEPENDS_${BPN}-sepolicy += "\
-- 
2.16.4


