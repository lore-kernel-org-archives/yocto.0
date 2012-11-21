Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6389E0141C
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2012 12:37:20 -0800 (PST)
Received: by mail-pb0-f48.google.com with SMTP id rq13so5471244pbb.35
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2012 12:37:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=r62+1qxI4MbdBgdJCf4shZuTOvaXS2hhBr/Sw+jGGbM=;
	b=a0I9rIt57BiTRslJBMfloag6OJSZludBR6QN+2iwN8o39ioRZecGsQJGbRtCG7GLNm
	kZ0ll1XlHzJsLbHiMmgw6vs0bwh4RmNU3Qha9WZvu2qiJ7MNRJEtbqak6ABROOOQOMbe
	7j+Xzttn1ZPpzLOoM+Arpr5Mny+j4XJlxVue3IT2SqPYVAR6CjQptngaE1fNU9gF+d8e
	ih0JDhBck7iiPHs/dbqKlaPaFutg6aJN7Co+S8tFn+guxfPQEyni6yUwncB0WAgxMI9z
	mj9AGdN3VzcMQ8Xy8uU/L5Y/o6vcrQ9G07oHbT2FQdGu8DRqFOl/TFtqbQyz3dUeltKn
	10pQ==
Received: by 10.68.253.230 with SMTP id ad6mr2606493pbd.84.1353530240667;
	Wed, 21 Nov 2012 12:37:20 -0800 (PST)
Received: from agate.agate.openembedded.org (oldbuilder.nslu2-linux.org.
	[140.211.169.168])
	by mx.google.com with ESMTPS id i4sm560497pav.20.2012.11.21.12.37.18
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 21 Nov 2012 12:37:19 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 21 Nov 2012 12:36:54 -0800
Message-Id: <1353530214-3748-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-intel][danny][PATCH V2] mesa-dri_8.0.4.bbappend: Remove tabs from python code
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
X-List-Received-Date: Wed, 21 Nov 2012 20:37:20 -0000

check for xserver to be non-empty before using it
fixed errors like

ERROR: Failed to parse recipe:
/b/kraj/yocto/poky/meta/recipes-graphics/mesa/mesa-dri_8.0.4.bb
ERROR: Error executing a python function in <code>:
AttributeError: 'NoneType' object has no attribute 'split'

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../recipes-graphics/mesa/mesa-dri_8.0.4.bbappend  |    8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/common/recipes-graphics/mesa/mesa-dri_8.0.4.bbappend b/common/recipes-graphics/mesa/mesa-dri_8.0.4.bbappend
index 6bfa968..b92831d 100644
--- a/common/recipes-graphics/mesa/mesa-dri_8.0.4.bbappend
+++ b/common/recipes-graphics/mesa/mesa-dri_8.0.4.bbappend
@@ -6,13 +6,13 @@
 python __anonymous () {
     import re
     xserver = d.getVar('XSERVER', True)
-    if 'emgd-driver-bin' in xserver.split(' '):
+    if xserver and 'emgd-driver-bin' in xserver.split(' '):
         extra_oeconf = d.getVar('EXTRA_OECONF', True).split()
-	take_out = ["--enable-egl", "--enable-gles1", "--enable-gles2"]
-	put_in = ["--disable-egl", "--disable-gles1", "--disable-gles2"]
+        take_out = ["--enable-egl", "--enable-gles1", "--enable-gles2"]
+        put_in = ["--disable-egl", "--disable-gles1", "--disable-gles2"]
         pattern = re.compile("--with-egl-platforms")
         new_extra_oeconf = [ ]
-	for i in extra_oeconf:
+        for i in extra_oeconf:
             if ( i not in take_out ) and ( not pattern.match(i)):
                 new_extra_oeconf.append(i)
         for i in put_in:
-- 
1.7.9.5


