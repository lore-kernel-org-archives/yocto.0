Return-Path: <kergoth@gmail.com>
Received: from mail-da0-f43.google.com (mail-da0-f43.google.com
	[209.85.210.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C3ECE01469
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 18:13:52 -0700 (PDT)
Received: by mail-da0-f43.google.com with SMTP id u36so1685870dak.30
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 18:13:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=8xR1JqZsI71dpjR96v071dS4ftXeL0I2By1lCEFGBEs=;
	b=BEqbbs2zO4QjLGxZR/EMfKPZi0cPjHId31RrA8i2tBR2h3x7sa3PzKmtnQDwXZYHyM
	ILOzM4O/fQsEmwgeRlm5+iCFiMxWs5LUln4wfILc3pBiPKwqE4M2+Ibx59DFs9mEEjJ1
	zLQ74Gje7rb7dv6bcglyvkqDTAnDhNt79tbdoHZkYELjE6egvwRGo7beb0rdlNU4GvZo
	R6iP4caoCZigRuLIeimNdhkM7dKMvWPJ2yz9dXpOFHz95t0nhSVbpQ/tSGiMfgy3u6gX
	cqE9pPrduKT7nuIjnn989MVjv/XrPRZEejiIQnZGBRyMG/w1IiBEGdNwwW98KH74DGxc
	OlOQ==
X-Received: by 10.67.1.42 with SMTP id bd10mr431166pad.124.1363655632399;
	Mon, 18 Mar 2013 18:13:52 -0700 (PDT)
Received: from precise64.alm.mentorg.com (nat-lmt.mentorg.com. [139.181.28.34])
	by mx.google.com with ESMTPS id t1sm10222485pab.12.2013.03.18.18.13.50
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 18 Mar 2013 18:13:51 -0700 (PDT)
From: Christopher Larson <kergoth@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 18 Mar 2013 18:13:45 -0700
Message-Id: <1363655625-11817-1-git-send-email-kergoth@gmail.com>
X-Mailer: git-send-email 1.8.2
Cc: Christopher Larson <chris_larson@mentor.com>
Subject: [meta-baryon][PATCH] layer.conf: avoid unnecessary early expansion with :=
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
X-List-Received-Date: Tue, 19 Mar 2013 01:13:52 -0000

From: Christopher Larson <chris_larson@mentor.com>

bitbake handles immediate expansions of LAYERDIR for us automatically.

Signed-off-by: Christopher Larson <chris_larson@mentor.com>
---
 conf/layer.conf | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 0d33e3b..5515047 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -2,12 +2,12 @@
 # Copyright 2011 Intel Corporation
 
 # We have a conf directory, prepend to BBPATH to prefer our versions
-BBPATH := "${LAYERDIR}:${BBPATH}"
+BBPATH =. "${LAYERDIR}:"
 
 # We have recipes-* directories, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb ${LAYERDIR}/recipes-*/*/*.bbappend"
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb ${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "meta-baryon"
-BBFILE_PATTERN_meta-baryon := "^${LAYERDIR}/"
+BBFILE_PATTERN_meta-baryon = "^${LAYERDIR}/"
 BBFILE_PRIORITY_meta-baryon = "7"
 
-- 
1.8.2


