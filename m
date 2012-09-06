Return-Path: <ross.burton@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 308CFE00717
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 05:54:02 -0700 (PDT)
Received: from mail-we0-f176.google.com ([74.125.82.176])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 06 Sep 2012 05:54:01 -0700
Received: by weyu3 with SMTP id u3so1212826wey.35
	for <yocto@yoctoproject.org>; Thu, 06 Sep 2012 05:53:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:subject:date:message-id:x-mailer:in-reply-to:references
	:x-gm-message-state;
	bh=Hv1eT+Fu1/LFi0dr8dr54cxsBsyOpf8vX219lh5jIXQ=;
	b=YsiDpeo7ZJAgjJjjHjz/2768pMv38s41Um3YEqE+h+aOBS/4cuPOu+W6Aqn65M3D1R
	SO/i1k5IU7J6+4PfRg2FVR5Ilf68CQjuWNQPLBoCJUevBcdCPGE80kX7cKrRpuESmKMy
	mBoXM6oIa9tInTEb+IJUNRDbL3Ogk9JjZInTvHred+N8prfehEj/oJJGjfseer9ihBMR
	uJJamiicrXb6OWTN3jQ3NegvvMzljJBGEVjHv7Fkdg+etwI21dA3L7E3zeSUfsl6aHA/
	eCZmbFhklIwMwpUro90TvNV2+vmOIFd5cDQJudXk0vx4vMMxVvXC6IqFMSIOi+Uzcrtn
	o/yw==
Received: by 10.180.107.163 with SMTP id hd3mr4680672wib.19.1346936038929;
	Thu, 06 Sep 2012 05:53:58 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id dw6sm4019213wib.5.2012.09.06.05.53.57
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 06 Sep 2012 05:53:58 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Thu,  6 Sep 2012 13:53:08 +0100
Message-Id: <1346935988-22808-2-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
In-Reply-To: <1346935988-22808-1-git-send-email-ross.burton@intel.com>
References: <1346935988-22808-1-git-send-email-ross.burton@intel.com>
X-Gm-Message-State: ALoCoQkbPM3MHlgTHCgeusDbRgMz9KbwyjAmwwNAyNnClc+5K5s2eq0gF3Rr8Q9SjSDiZhP9xT5F
Subject: [PATCH] beagleboard: change to xserver-xorg, not -lite
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
X-List-Received-Date: Thu, 06 Sep 2012 12:54:02 -0000

The difference is less than 16kb, and for that the extra maintenance of two
recipies really isn't worth it.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-yocto-bsp/conf/machine/beagleboard.conf |    4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-yocto-bsp/conf/machine/beagleboard.conf b/meta-yocto-bsp/conf/machine/beagleboard.conf
index aa8fa07..dbce1e2 100644
--- a/meta-yocto-bsp/conf/machine/beagleboard.conf
+++ b/meta-yocto-bsp/conf/machine/beagleboard.conf
@@ -2,8 +2,8 @@
 #@NAME: Beagleboard machine
 #@DESCRIPTION: Machine configuration for the http://beagleboard.org/ board 
 
-PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg-lite"
-XSERVER ?= "xserver-xorg-lite \
+PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xorg"
+XSERVER ?= "xserver-xorg \
            xf86-input-evdev \
            xf86-input-mouse \
            xf86-video-omapfb \
-- 
1.7.10


