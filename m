Return-Path: <kergoth@gmail.com>
Received: from mail-pb0-f52.google.com (mail-pb0-f52.google.com
	[209.85.160.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F094E01410
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 18:34:16 -0700 (PDT)
Received: by mail-pb0-f52.google.com with SMTP id ma3so6903400pbc.11
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 18:34:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=mcYMfX8vTZ8fNkiDB1EOxTo39vgEaguPo/xhxemc9pI=;
	b=V2LSNdwZJ4XoQbnjuWvmJeDzm3YMWk3ZVOCL3bDqeknPKehesT9HqW6mBWKXgtGOsb
	mzBau9zHdjpQ2EuyevuxFMt68NoL6QrpNDrs2bdNDFiJ3fS7hrFQFHtRdT5dAuY+8bhv
	6Te5/Ge73J7wokVrKUAxeC6Z5g6wJAXmLE+t0edPD5tRHJZs5nmNOrlYAbfgqwyY4L8A
	Ion+lnlHJe8b2L9HgTad59t0E+7vqWeA+acfT2+WokWHhLG7cQOrsm7SeBopLfo21V4y
	Bx5IwIqcDJf95U/N7lc7dPb6Zps4TbMxUTvR4Ch0Re5/rYrh5iqRNQWWT75dqubTeUgC
	nENg==
X-Received: by 10.68.211.69 with SMTP id na5mr322363pbc.71.1363656855965;
	Mon, 18 Mar 2013 18:34:15 -0700 (PDT)
Received: from precise64.alm.mentorg.com (nat-lmt.mentorg.com. [139.181.28.34])
	by mx.google.com with ESMTPS id rl3sm22082810pbb.28.2013.03.18.18.34.13
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 18 Mar 2013 18:34:14 -0700 (PDT)
From: Christopher Larson <kergoth@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 18 Mar 2013 18:34:05 -0700
Message-Id: <1363656845-17727-1-git-send-email-kergoth@gmail.com>
X-Mailer: git-send-email 1.8.2
Cc: Christopher Larson <chris_larson@mentor.com>
Subject: [meta-meson][PATCH] layer.conf: avoid unnecessary early expansion with :=
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
X-List-Received-Date: Tue, 19 Mar 2013 01:34:16 -0000

From: Christopher Larson <chris_larson@mentor.com>

bitbake handles immediate expansions of LAYERDIR for us automatically.

Signed-off-by: Christopher Larson <chris_larson@mentor.com>
---
 conf/layer.conf | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 8bd75d8..f463203 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -1,10 +1,10 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${LAYERDIR}:${BBPATH}"
+BBPATH =. "${LAYERDIR}:"
 
 # We have a packages directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb ${LAYERDIR}/recipes-*/*/*.bbappend" 
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb ${LAYERDIR}/recipes-*/*/*.bbappend" 
 
 BBFILE_COLLECTIONS += "meta-meson"
-BBFILE_PATTERN_meta-meson := "^${LAYERDIR}/"
+BBFILE_PATTERN_meta-meson = "^${LAYERDIR}/"
 BBFILE_PRIORITY_meta-meson = "8"
 
-- 
1.8.2


