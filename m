Return-Path: <>
Received: from mail-gg0-f176.google.com (mail-gg0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05606E00718
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 18:50:26 -0700 (PDT)
Received: by mail-gg0-f176.google.com with SMTP id e5so3419298ggk.35
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2012 18:50:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=9hjNF1U4rzKFmsnannpSzG6Agj83fevPDU7SWPYwvxA=;
	b=rpYKH+zYVOaoxfZSag8zam/7HnpYk17RKvzJAk5UT68t/1oIeCz7O12qbrFbXIt3QJ
	BdRbk+W2qwoA1zzNKlE+aH7kFo1wI49T9uh3y0hQNGw3tDSUuq3lb1W8D1av9tyrjGXs
	JN8MZsz9ypbsy4JSHrKujgY2HbPyt6vL1ndJDBH3ZkENYgABqBaySzVWGB7XOllfQ9V4
	mHWZB1f2zVNOAs4OmlZ6k6gYzdAopmX/Qpr921ob3y+hPbmXbqyYslH9Iln3xaGyHkoW
	67sZRsvwve9Pbc4QPxdhljpbr1kEHDLr+cgzBgfopkkL+7uE+ISzydwlDKH+nGV9FxyK
	slMA==
Received: by 10.236.149.162 with SMTP id x22mr13422546yhj.92.1344909026846;
	Mon, 13 Aug 2012 18:50:26 -0700 (PDT)
Received: from localhost.localdomain (dsl-67-55-9-50.acanac.net. [67.55.9.50])
	by mx.google.com with ESMTPS id h8sm1362835ank.9.2012.08.13.18.50.25
	(version=SSLv3 cipher=OTHER); Mon, 13 Aug 2012 18:50:26 -0700 (PDT)
From: Trevor Woerner <twoerner@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 13 Aug 2012 21:50:19 -0400
Message-Id: <1344909019-5708-1-git-send-email-twoerner@gmail.com>
X-Mailer: git-send-email 1.7.10-rc3
Subject: [PATCH poky-extras] layer.conf: clarify comments
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
X-List-Received-Date: Tue, 14 Aug 2012 01:50:27 -0000

From: Trevor Woerner <twoerner@gmail.com>

The recipes are no longer stored in a "packages" directory but in directories
under recipes-*.

Signed-off-by: Trevor Woerner <twoerner@gmail.com>
---
 meta-kernel-dev/conf/layer.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-kernel-dev/conf/layer.conf b/meta-kernel-dev/conf/layer.conf
index ea889e8..642d485 100644
--- a/meta-kernel-dev/conf/layer.conf
+++ b/meta-kernel-dev/conf/layer.conf
@@ -5,7 +5,7 @@ BB_DANGLINGAPPENDS_WARNONLY ?= "true"
 # We have a conf and classes directory, add to BBPATH
 BBPATH := "${BBPATH}:${LAYERDIR}"
 
-# We have a packages directory, add to BBFILES
+# We have recipes-* directories, add to BBFILES
 BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
             ${LAYERDIR}/recipes-*/*/*.bbappend"
 
-- 
1.7.10-rc3


