Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AA90E006EB
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2013 15:18:10 -0800 (PST)
Received: by mail-pa0-f47.google.com with SMTP id fa10so3652714pad.20
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2013 15:18:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=JmUAsGsbrrzohAQ14asy45QrQ0BISZQugLcIvc9/upc=;
	b=sx2TX2fIGEnuN29Cp4hiPsJugGhv0Z3mT7rB+khCslwd/8TGEeSq57lfOAZKsYEXSz
	EwxZHub6bU0s6xGzGMV4ezaTDiUPD88LTWku7dVOKJtsHlO8WcvdHvhc/aRhp13K2n2K
	psrD2f0fdKRVeJFS/DIdTzOWuq378/BrC3+v3frOV4YVhAuRsHaGYrL9p6tUapaC6QN8
	Br8vWvgDXRvvQT6HkdlZbLfSG4AdnSxLD/Of3s3Vz7FbMaCOvaw5VZqarq2d7JN5zKa/
	wSC3H72lX4kxSd4BKZTF4Z8BDYuB78kD4Z0Eg7+mJuZ2TXedWPp0rUZElnRr4H6iy2Y7
	JUxQ==
X-Received: by 10.68.136.163 with SMTP id qb3mr33728924pbb.129.1358810290072; 
	Mon, 21 Jan 2013 15:18:10 -0800 (PST)
Received: from isis.gateway.2wire.net
	(99-57-140-209.lightspeed.sntcca.sbcglobal.net. [99.57.140.209])
	by mx.google.com with ESMTPS id nt5sm9449743pbb.59.2013.01.21.15.18.08
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 21 Jan 2013 15:18:09 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org,
	autif.mlist@gmail.com
Date: Mon, 21 Jan 2013 15:17:56 -0800
Message-Id: <1358810277-11975-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-mono][PATCH 1/2] layer.conf: Use .= for adding to BBPATH and += to BBFILES
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
X-List-Received-Date: Mon, 21 Jan 2013 23:18:10 -0000

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


