Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CE89E006F5
	for <yocto@yoctoproject.org>; Thu,  3 Jan 2013 23:22:45 -0800 (PST)
Received: by mail-pa0-f44.google.com with SMTP id hz11so9155063pad.17
	for <yocto@yoctoproject.org>; Thu, 03 Jan 2013 23:22:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=JmUAsGsbrrzohAQ14asy45QrQ0BISZQugLcIvc9/upc=;
	b=TKBwzhVb0ONJYjij7ATropTC1FcuR2S5HzkL2bFOc7jxexH5qdtTJB4lCObn8k7ZgY
	0wqL8W5+WLabC37XG5s3vMvQcuLNBXCAVzjOV0/TgKgw/v9+aeEBBrZvsQVDwXl9B/NZ
	WVqMpTdRBON1A6Iu5sTG6rAWVXstnepxZkZU1M9oi+VcA+MiJ29l/vI0GN8rIS96F+GN
	PeaOKIYsfgMX5z4gl04fiq+fBg6R7fRlWbi/rWcFWfygROCV9+BxAO387pZ8OO55ewRq
	XFTJR1EeCLLaxr3OIF5SCn74uGbFvjzaHEzrAehCDDp+snDOQOjXHWZrb14Nxg2ym4xa
	Xi9g==
X-Received: by 10.66.88.197 with SMTP id bi5mr151769117pab.36.1357284164039;
	Thu, 03 Jan 2013 23:22:44 -0800 (PST)
Received: from agate.agate.openembedded.org (oldbuilder.nslu2-linux.org.
	[140.211.169.168])
	by mx.google.com with ESMTPS id bh9sm32720060pab.12.2013.01.03.23.22.42
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 03 Jan 2013 23:22:42 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: autif.mlist@gmail.com,
	yocto@yoctoproject.org
Date: Thu,  3 Jan 2013 23:22:03 -0800
Message-Id: <1357284123-14925-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-mono][PATCH] layer.conf: Use .= for adding to BBPATH and += to BBFILES
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 04 Jan 2013 07:22:45 -0000

Fixes parsing errors which is appearing after this commit to
meta-openembedded

http://cgit.openembedded.org/meta-openembedded/commit/?id=3c21a46020bd0816579648f

This triggers
exception NameError: name 'base_contains' is not defined
without this change

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/layer.conf |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 6bcf70e..d8cc797 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -1,8 +1,8 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 # We have a recipes directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-mono/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-mono/*/*.bb \
             ${LAYERDIR}/recipes-mono/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "mono"
-- 
1.7.9.5


