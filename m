Return-Path: <schnitzeltony@googlemail.com>
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BECE0E011AC
	for <yocto@yoctoproject.org>; Wed,  2 Jan 2013 11:33:37 -0800 (PST)
Received: by mail-wi0-f180.google.com with SMTP id hj13so8118853wib.7
	for <yocto@yoctoproject.org>; Wed, 02 Jan 2013 11:33:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:x-mailer:mime-version
	:content-type:content-transfer-encoding;
	bh=mTAR7b84LGgIhL6yFspILhPoKld18mEQ//ZyaGiEGCU=;
	b=kLlzWyvgCUEIck8vR+Jnf8Zb3L6jbSL/kG1q7V0JFDL6oZah5yVMfHiXNqs/LFvyI7
	283piyNiuXmSx1pZUwj3G1hyM1m1JaBSoNAzlTsnD4xFWReXEhg2c8cnexvxsEvQV2Xq
	DleltToLza5kNZGinUALDCxC0lhGbh47XL81vcwhsuzrs81jtgz27EkvixmxZ2vFH21O
	2LxL6SyMTmeqUCEnCZVL5sBYe/lObRacWJLwZY++bah4XQVob5GTtUyU8IzVacopBeaX
	oM5BHon8ayqlJHpWoEQiGDmo1j2KQhY4wnPOucP62e12i7Al6gxLH8COpvr6sNVta2zX
	y7Ag==
X-Received: by 10.180.109.201 with SMTP id hu9mr21932476wib.32.1357155216438; 
	Wed, 02 Jan 2013 11:33:36 -0800 (PST)
Received: from localhost.localdomain (p4FDF1C58.dip.t-dialin.net.
	[79.223.28.88])
	by mx.google.com with ESMTPS id bd6sm55105478wib.10.2013.01.02.11.33.34
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 02 Jan 2013 11:33:35 -0800 (PST)
From: =?UTF-8?q?Andreas=20M=C3=BCller?= <schnitzeltony@googlemail.com>
To: yocto@yoctoproject.org
Date: Wed,  2 Jan 2013 20:33:22 +0100
Message-Id: <1357155202-8885-1-git-send-email-schnitzeltony@googlemail.com>
X-Mailer: git-send-email 1.7.4.4
MIME-Version: 1.0
Subject: [meta-raspberrypi] layer.conf: fix parse
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
X-List-Received-Date: Wed, 02 Jan 2013 19:33:38 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

after meta-systemd commit [1] the following error was thrown during parsing:

ERROR: Unable to parse /home/Superandy/data/oe-core/sources/meta-raspberrypi/conf/layer.conf:
Failure expanding variable BBFILES, expression was
...
/home/Superandy/data/oe-core/sources/meta-openembedded/meta-systemd/recipes-*/*/*.bb
/home/Superandy/data/oe-core/sources/meta-openembedded/meta-systemd/oe-core/recipes-*/*/*.bbappend
/home/Superandy/data/oe-core/sources/meta-openembedded/meta-systemd/meta-oe/recipes-*/*/*.bbappend
${@base_contains('BBFILE_COLLECTIONS', 'systemd-layer','', '/home/Superandy/data/oe-core/sources/meta-openembedded/meta-systemd/invalid.bb', d)}
${@base_contains('BBFILE_COLLECTIONS', 'gnome-layer','/home/Superandy/data/oe-core/sources/meta-openembedded/meta-systemd/meta-gnome/recipes-*/*/*.bbappend', '', d)}
${@base_contains('BBFILE_COLLECTIONS', 'efl-layer','/home/Superandy/data/oe-core/sources/meta-openembedded/meta-systemd/meta-efl/recipes-*/*/*.bbappend', '', d)}
${@base_contains('BBFILE_COLLECTIONS', 'multimedia-layer','/home/Superandy/data/oe-core/sources/meta-openembedded/meta-systemd/meta-multimedia/recipes-*/*/*.bbappend', '', d)}
${@base_contains('BBFILE_COLLECTIONS', 'networking','/home/Superandy/data/oe-core/sources/meta-openembedded/meta-systemd/meta-networking/recipes-*/*/*.bbappend', '', d)}
${@base_contains('BBFILE_COLLECTIONS', 'xfce-layer','/home/Superandy/data/oe-core/sources/meta-openembedded/meta-systemd/meta-xfce/recipes-*/*/*.bbappend', '', d)}
...
which triggered exception NameError: name 'base_contains' is not defined

[1] http://cgit.openembedded.org/meta-openembedded/commit/?id=3c21a46020bd0816579648f684c41dbd6333583e

Signed-off-by: Andreas Müller <schnitzeltony@googlemail.com>
---
 conf/layer.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/conf/layer.conf b/conf/layer.conf
index 32e1827..e8b87b2 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -2,7 +2,7 @@
 BBPATH .= ":${LAYERDIR}"
 
 # We have a recipes directory containing .bb and .bbappend files, add to BBFILES
-BBFILES := "${BBFILES} ${LAYERDIR}/recipes*/*/*.bb \ 
+BBFILES += "${LAYERDIR}/recipes*/*/*.bb \
             ${LAYERDIR}/recipes*/*/*.bbappend"
 
 BBFILE_COLLECTIONS += "raspberrypi"
-- 
1.7.4.4


