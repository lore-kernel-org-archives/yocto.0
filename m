Return-Path: <raj.khem@gmail.com>
Received: from mail-da0-f49.google.com (mail-da0-f49.google.com
	[209.85.210.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA689E0034C
	for <yocto@yoctoproject.org>; Tue,  5 Feb 2013 21:39:20 -0800 (PST)
Received: by mail-da0-f49.google.com with SMTP id t11so448552daj.36
	for <yocto@yoctoproject.org>; Tue, 05 Feb 2013 21:39:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer;
	bh=HZ3Bd2+eRBCxKeUBzI6O9hrJrnYa1T5+hShJJp10PEU=;
	b=LukxHY7QY8atU0LeuiOmQQlA0DB9WdbVtbEo9df44W7aox4r6BIItL2yUMWSmg9myX
	+rzChnrnQjylzI9SMB4Kog2oC+mesrGdIM8NRy4bDvBdG9G4uPlHyFlyiNDqcOMJgwEV
	mNXzNZ/A1YkT82HQmcEz7bPruM7DpSAYAEkyVAweJxDpzOu1nJVtsw9OMAoL/J+dg6OM
	Tw3dRmGnm9gQCZDaDCIjMVzyDT0Sk8u3MaAijs85cMl15ZKkIucA9tLCMWVRr+YbQMhM
	RwvAOdH4VoLtT6AjyX3TOa/Pi0t+Nl4f16pQ7dr8qOKkkiJcH/I+bYCYtohbPmCR67dC
	Ljqw==
X-Received: by 10.66.85.161 with SMTP id i1mr5468337paz.67.1360129160229;
	Tue, 05 Feb 2013 21:39:20 -0800 (PST)
Received: from isis.gateway.2wire.net
	(99-57-140-209.lightspeed.sntcca.sbcglobal.net. [99.57.140.209])
	by mx.google.com with ESMTPS id d8sm34915669pax.23.2013.02.05.21.39.18
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 05 Feb 2013 21:39:19 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  5 Feb 2013 21:38:53 -0800
Message-Id: <1360129133-7778-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-yocto][PATCH] poky.conf: Add Ubuntu 12.04.2 to sanity tested distros
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
X-List-Received-Date: Wed, 06 Feb 2013 05:39:20 -0000

I have been running poky master on this distro for some time
now, this fix will avoid the warning about validated distros
during bitbake parse phase.

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 meta-yocto/conf/distro/poky.conf |    1 +
 1 file changed, 1 insertion(+)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 1d4e6f2..cb54d3f 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -76,6 +76,7 @@ SANITY_TESTED_DISTROS ?= " \
             Ubuntu 10.04.4 LTS \n \
             Ubuntu 11.10 \n \
             Ubuntu 12.04 LTS \n \
+            Ubuntu 12.04.2 LTS \n \
             Ubuntu 12.04.1 LTS \n \
             Ubuntu 12.10 \n \
             Fedora release 16 (Verne) \n \
-- 
1.7.9.5


