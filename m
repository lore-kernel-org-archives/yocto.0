Return-Path: <kergoth@gmail.com>
Received: from mail-ia0-f169.google.com (mail-ia0-f169.google.com
	[209.85.210.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EE87E01472
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 19:13:32 -0700 (PDT)
Received: by mail-ia0-f169.google.com with SMTP id j5so5963402iaf.28
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2013 19:13:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=AZirYsDArshHU8D+Gh42FjexjxtkV6zvUGBt7JyXxSM=;
	b=bbzspmCpnZDM8XHO8f/PxwiDZFGiEMzVdbwlm/K00APiNlDH+MsCU4GYKUnwEknvJp
	4xqIdEKoZdqrgmyFY6r0cV9O61+/98nb/HHEwtXi1qjZ9ZVY6VRMLiw9jn7wlFqxD0L2
	kke7BtEph0fY6FGrPDGk6j6Ep3phGumosj/JOSlU744ZQ5jeLQd6LsZRK/v2Jm+8bVn3
	s6rfwajsEKWqZeBF//KwTbbX1qvRw2+lXvH0nM0lksj5oiRHuGG5aqjU0oCwjOhbGe1M
	wnOx+4pYqSTrYw9V8vMFOLRWoHjAYanV/5QZDkWXJN+dcZsaemvW2r2mg4ekfs44swOi
	vKYA==
X-Received: by 10.50.209.4 with SMTP id mi4mr92290igc.40.1363659211813;
	Mon, 18 Mar 2013 19:13:31 -0700 (PDT)
Received: from precise64.alm.mentorg.com (nat-lmt.mentorg.com. [139.181.28.34])
	by mx.google.com with ESMTPS id ur12sm13846637igb.8.2013.03.18.19.13.30
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 18 Mar 2013 19:13:30 -0700 (PDT)
From: Christopher Larson <kergoth@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 18 Mar 2013 19:13:26 -0700
Message-Id: <1363659206-28896-1-git-send-email-kergoth@gmail.com>
X-Mailer: git-send-email 1.8.2
Cc: Christopher Larson <chris_larson@mentor.com>
Subject: [meta-xilinx][PATCH] layer.conf: avoid unnecessary early expansion with :=
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
X-List-Received-Date: Tue, 19 Mar 2013 02:13:32 -0000

From: Christopher Larson <chris_larson@mentor.com>

bitbake handles immediate expansions of LAYERDIR for us automatically.

Signed-off-by: Christopher Larson <chris_larson@mentor.com>
---
 conf/layer.conf | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index d1a1a84..f415d2f 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -1,12 +1,12 @@
 # We have a conf and classes directory, add to BBPATH
-BBPATH := "${BBPATH}:${LAYERDIR}"
+BBPATH .= ":${LAYERDIR}"
 
 require conf/distro/include/xilinx-default-revisions.inc
 
 # We have a packages directory, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
+BBFILES += "${LAYERDIR}/recipes-*/*/*.bb \
 	${LAYERDIR}/recipes-*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "xilinx"
-BBFILE_PATTERN_xilinx := "^${LAYERDIR}/"
+BBFILE_PATTERN_xilinx = "^${LAYERDIR}/"
 BBFILE_PRIORITY_xilinx = "6"
-- 
1.8.2


