Return-Path: <net147@gmail.com>
Received: from mail-pb0-f44.google.com (mail-pb0-f44.google.com
	[209.85.160.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 754F2E007F6
	for <yocto@yoctoproject.org>; Fri, 21 Feb 2014 03:05:56 -0800 (PST)
Received: by mail-pb0-f44.google.com with SMTP id rq2so3330958pbb.3
	for <yocto@yoctoproject.org>; Fri, 21 Feb 2014 03:05:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=V4WQEEeCuB//KskDqQi6tyU/BGTPdT757GgouIHdPa4=;
	b=gX61Ff2bMoi8qZ1iMuoo58GtOtG7ARyMuUenQE2Rt7EBDmkJS3l8g5LAGh9Mi57gHy
	re8A4G/3l4cgiaCY30mK4EqY6AmDqYphh9te09KOELQoe1LuaolCqlbf8jXnnDYHL6tO
	8kG3bYCHrTD0iPneY/e0NOFNZxtyew17Hlk328Hp5BqKy6mClCTT9GfPi2SjxwLXrbcK
	siX2tslWgWuOYcFe0qBvpgY2OlDLH4kG/GrAKvUP0SoWiJBNklGgXB9Ym0YR6tnqXH49
	Gv3nTSS87k9+yU9c3mHJKdokzFD9xqi82/2Fex5epQ/EpeQjlG6NfzTgOkm+/36POj7F
	/KGA==
X-Received: by 10.66.65.204 with SMTP id z12mr8451465pas.60.1392980756406;
	Fri, 21 Feb 2014 03:05:56 -0800 (PST)
Received: from 60-242-179-244.static.tpgi.com.au
	(60-242-179-244.static.tpgi.com.au. [60.242.179.244])
	by mx.google.com with ESMTPSA id
	xf3sm20223095pbc.30.2014.02.21.03.05.54 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 21 Feb 2014 03:05:55 -0800 (PST)
From: Jonathan Liu <net147@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 21 Feb 2014 22:10:14 +1100
Message-Id: <1392981014-9412-1-git-send-email-net147@gmail.com>
X-Mailer: git-send-email 1.8.5.4
Subject: [meta-raspberrypi][PATCH] mesa: rename .bbappend to match new version from oe-core
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
X-List-Received-Date: Fri, 21 Feb 2014 11:05:59 -0000

Change-Id: Ie3c7bc3e70bfd46cea64ef813c3875d1ba8d07fc
Signed-off-by: Jonathan Liu <net147@gmail.com>
---
 recipes-graphics/mesa/{mesa_9.2.2.bbappend => mesa_9.2.5.bbappend} | 0
 1 file changed, 0 insertions(+), 0 deletions(-)
 rename recipes-graphics/mesa/{mesa_9.2.2.bbappend => mesa_9.2.5.bbappend} (100%)

diff --git a/recipes-graphics/mesa/mesa_9.2.2.bbappend b/recipes-graphics/mesa/mesa_9.2.5.bbappend
similarity index 100%
rename from recipes-graphics/mesa/mesa_9.2.2.bbappend
rename to recipes-graphics/mesa/mesa_9.2.5.bbappend
-- 
1.8.5.4


