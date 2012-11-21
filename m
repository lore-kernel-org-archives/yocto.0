Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9B1DE0133F
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2012 10:31:50 -0800 (PST)
Received: by mail-pb0-f48.google.com with SMTP id rq13so5397025pbb.35
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2012 10:31:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=tMk3d4DGPHJj5QStGsKtzXWlsjqSDr6OS95PmW5mWH8=;
	b=TE0qWKMrJspujXJAeJpiw6yNTKFjGjxFUvWylLOsPyLvhrsvl7ktqoyiBK2PpR+Ldc
	KEw5xaJz98gKGealu0/m774KtNP/mALsjrFVJWPrkXGBfNLAVkY3mSP02nXuPE4BFigG
	6c4cZdnCiNWNzrZLrTGJzFwKFGVriukwYSN3c1Kd+sv8Alv5ZKrwjavwibPVVSKHaM6i
	LDstFKVvtWPIyA1WIKoA48b86Uaer8kVpGa5WeeobgOo5QmOXW0JyqH0eOeofdYxiD/7
	VNQX2Ss/6MfnaUn8lYJEJqrLJIpW8RkF/CkX0aQaukdA10Q8+zXZXgib6tzBeEjkeqxD
	HNAg==
Received: by 10.68.239.232 with SMTP id vv8mr1638774pbc.53.1353522710631;
	Wed, 21 Nov 2012 10:31:50 -0800 (PST)
Received: from agate.agate.openembedded.org (oldbuilder.nslu2-linux.org.
	[140.211.169.168])
	by mx.google.com with ESMTPS id ju7sm594791pbb.60.2012.11.21.10.31.49
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 21 Nov 2012 10:31:49 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 21 Nov 2012 10:31:22 -0800
Message-Id: <1353522682-21967-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-intel][danny][PATCH] mesa-dri_8.0.4.bbappend: Remove tabs from python code
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
X-List-Received-Date: Wed, 21 Nov 2012 18:31:51 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../recipes-graphics/mesa/mesa-dri_8.0.4.bbappend  |    6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/common/recipes-graphics/mesa/mesa-dri_8.0.4.bbappend b/common/recipes-graphics/mesa/mesa-dri_8.0.4.bbappend
index 6bfa968..2a49c26 100644
--- a/common/recipes-graphics/mesa/mesa-dri_8.0.4.bbappend
+++ b/common/recipes-graphics/mesa/mesa-dri_8.0.4.bbappend
@@ -8,11 +8,11 @@ python __anonymous () {
     xserver = d.getVar('XSERVER', True)
     if 'emgd-driver-bin' in xserver.split(' '):
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


