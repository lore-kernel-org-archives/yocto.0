Return-Path: <schnitzeltony@googlemail.com>
Received: from mail-ee0-f53.google.com (mail-ee0-f53.google.com [74.125.83.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3644EE01508
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 13:58:00 -0800 (PST)
Received: by mail-ee0-f53.google.com with SMTP id e53so4761161eek.26
	for <yocto@yoctoproject.org>; Thu, 24 Jan 2013 13:57:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=x-received:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references:mime-version:content-type:content-transfer-encoding;
	bh=mTAR7b84LGgIhL6yFspILhPoKld18mEQ//ZyaGiEGCU=;
	b=YcSCOFh2IAUrJu3SKCseY8Eoo0Udrt/bW4LvTr6ozIjNi7+2IYW3JAlzkC9vEkS6nm
	Iq+D6retVa0uzdv+4Ihwh1Rn+GqBdO1rLbkje4zTdvJ8kaFi+dWdBV5YYPrjk8TjLpPr
	w3MBBKWGTycOLZXf0RK9319aGtdRZmO5/lUxsy+zC1vNgNZ7L2Aq9b8uH/4vgADuGvGc
	ewZffagJLc1Be5jTNIJCGCqitvC2PrYvokyb+fFOG7mRHs9rkH63nGuPpSkkpu2MYRJY
	sEatFusd0USLh6Ie3DNGx453ANsXVMWOHwMJHwWtKz+1v+wMm6qrgkrDcN1++ZW7mtGh
	rU/w==
X-Received: by 10.14.173.65 with SMTP id u41mr10530313eel.13.1359064679348;
	Thu, 24 Jan 2013 13:57:59 -0800 (PST)
Received: from localhost.localdomain (p5B0A316D.dip.t-dialin.net.
	[91.10.49.109])
	by mx.google.com with ESMTPS id b2sm37011988eep.9.2013.01.24.13.57.56
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Thu, 24 Jan 2013 13:57:56 -0800 (PST)
From: =?UTF-8?q?Andreas=20M=C3=BCller?= <schnitzeltony@googlemail.com>
To: yocto@yoctoproject.org
Date: Thu, 24 Jan 2013 22:57:41 +0100
Message-Id: <1359064662-17052-2-git-send-email-schnitzeltony@googlemail.com>
X-Mailer: git-send-email 1.7.4.4
In-Reply-To: <1359064662-17052-1-git-send-email-schnitzeltony@googlemail.com>
References: <1359064662-17052-1-git-send-email-schnitzeltony@googlemail.com>
MIME-Version: 1.0
Subject: [meta-raspberrypi][PATCH 1/2] layer.conf: fix parse
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
X-List-Received-Date: Thu, 24 Jan 2013 21:58:00 -0000
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


