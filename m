Return-Path: <raj.khem@gmail.com>
Received: from mail-da0-f48.google.com (mail-da0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F96FE0127A
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 20:57:46 -0700 (PDT)
Received: by mail-da0-f48.google.com with SMTP id z8so54837dad.35
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2012 20:57:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=zFkPOCyr21+mKatz99pt+sVha1MErYd/U+SK7i0lUvs=;
	b=ObXvmfYiJenaw2lIuKT4p/LFnGpJKNl6O/CKdw9LyLZHlpn5WuGO/oSzLAiOuj+Hqs
	4EwjrUDr6XQXDrWME0AzRuuDSyVwCJzdJX0WLOkzyBuDh7h32vqcwFS2neNiOeyBBq6W
	VgtmIDHvoCZGBsvA6EiDlT3geLpohuJDTqekOl4piz8xEufDXArjMxTffxTYA+Uupa3f
	L/P5gfti8Ga/UnAkc3EmspGVAELePqQKNJiL265IEK8itBo5wQIX/QzawD4D42QtIjci
	vE8SRvpoEf4Z7H5Z5iUfxRCLJPP4uBqrkUChb4FhLLv2eCGMkHOd/4UdsdNnMD5UuUPg
	bqXw==
Received: by 10.68.230.234 with SMTP id tb10mr46168451pbc.71.1351051066299;
	Tue, 23 Oct 2012 20:57:46 -0700 (PDT)
Received: from agate.agate.openembedded.org (oldbuilder.nslu2-linux.org.
	[140.211.169.168])
	by mx.google.com with ESMTPS id oj1sm8762135pbb.19.2012.10.23.20.57.45
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 23 Oct 2012 20:57:45 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 23 Oct 2012 20:56:54 -0700
Message-Id: <1351051014-15859-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-intel/danny][PATCH] meta-crystalforest, linux-yocto_3.4.bbappend: Pin LINUX_VERSION
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
X-List-Received-Date: Wed, 24 Oct 2012 03:57:46 -0000

meta-crystalforest BSPs uses 3.4.9 kernel but the default
yocto kernel is 3.4.11, if we do not pin the LINUX_VERSION
then we get inconsistent version number for bzImage and the modules
where modules are installed under /lib/modules/3.4.9-yocto-standard/
but kernel is called
bzImage-3.4.11+git2+9e3bdb7344054264b750e53fbbb6394cc1c942ac_1+0985844fa6235422c67ef269952fa4e765f252f9-r4.3-crystalforest-stargo-20121024031021.bin

This patch fixes this mismatch. Beaware that other BSPs from
meta-intel may need something similar too.

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
index 082fe38..92aaa61 100644
--- a/meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
+++ b/meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
@@ -15,3 +15,6 @@ SRCREV_machine_pn-linux-yocto_crystalforest-shumway ?= "0985844fa6235422c67ef269
 SRCREV_meta_pn-linux-yocto_crystalforest-shumway ?= "9e3bdb7344054264b750e53fbbb6394cc1c942ac"
 
 module_autoload_uio = "uio"
+
+LINUX_VERSION = "3.4.9"
+
-- 
1.7.9.5


