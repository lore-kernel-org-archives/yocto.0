Return-Path: <kergoth@gmail.com>
Received: from mail-ia0-f174.google.com (mail-ia0-f174.google.com
	[209.85.210.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B9F3E01410
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 18:34:37 -0700 (PDT)
Received: by mail-ia0-f174.google.com with SMTP id b35so1758796iac.5
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 18:34:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=jG2VI/xjNx+y070lVdyRl0K17Z5JZdSbwh0DnAhhuAQ=;
	b=rbpp/brBSlJe2sEY3mzlrhwWfxDC7yuy4uGoNbbJqNGBtg68Xuf9sh7ZsJFUEeJIfT
	F1X3tyAywlJMfQj5JTzBcp6mBgpkLwLwezQSBNh3uwh72ZaAmaIz1FQz97SKVvJddYXz
	5QSW2pguyoaxi4a6oeakept1ip8yVZk0WBImixNcBBgHlcUCiw02nfPKj122KwTOWRtd
	tUN+1DHF4gnXE+06YFgYzGSL+uP6D7W/NTY4WXypFfI2LZTPow+X1CuA2zXWKm+PTN4y
	HdZBKGvwc851DmXRpBtwr89NPyxRfkD1OaMSOvpr84agl4ovAykHt/DSNdibG8hzj4Co
	FiCQ==
X-Received: by 10.42.175.73 with SMTP id az9mr5190361icb.55.1363656876751;
	Mon, 18 Mar 2013 18:34:36 -0700 (PDT)
Received: from precise64.alm.mentorg.com (nat-lmt.mentorg.com. [139.181.28.34])
	by mx.google.com with ESMTPS id l2sm11963611igb.1.2013.03.18.18.34.35
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 18 Mar 2013 18:34:35 -0700 (PDT)
From: Christopher Larson <kergoth@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 18 Mar 2013 18:34:31 -0700
Message-Id: <1363656871-17934-1-git-send-email-kergoth@gmail.com>
X-Mailer: git-send-email 1.8.2
Cc: Christopher Larson <chris_larson@mentor.com>
Subject: [meta-meson-bsp][PATCH] layer.conf: avoid unnecessary early expansion with :=
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
X-List-Received-Date: Tue, 19 Mar 2013 01:34:37 -0000

From: Christopher Larson <chris_larson@mentor.com>

bitbake handles immediate expansions of LAYERDIR for us automatically.

Signed-off-by: Christopher Larson <chris_larson@mentor.com>
---
 conf/layer.conf | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index ae3af08..8bff37a 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -1,11 +1,11 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a recipes directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
             ${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "mesonbsp"
-BBFILE_PATTERN_mesonbsp := "^${LAYERDIR}/"
+BBFILE_PATTERN_mesonbsp = "^${LAYERDIR}/"
 BBFILE_PRIORITY_mesonbsp = "5"
 
-- 
1.8.2


