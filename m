Return-Path: <andrei@gherzan.ro>
Received: from mail-qa0-f50.google.com (mail-qa0-f50.google.com
	[209.85.216.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F122E007DC
	for <yocto@yoctoproject.org>; Tue, 25 Feb 2014 08:51:13 -0800 (PST)
Received: by mail-qa0-f50.google.com with SMTP id cm18so646105qab.37
	for <yocto@yoctoproject.org>; Tue, 25 Feb 2014 08:51:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=Ael3/qfZuGK6EfgV8AKU5zSr3OhiFIvKha2op+loWPU=;
	b=c+sFyL4Cxy4l5VRTrGPEqJYY8mQQ9qpmLDlHD40iQexMksg0q28VgvdUjMbGzaYJEC
	TMX2H1E9yKCCDGAHYb0geuMzovTJ7XAak8iv+XESVsPGtiPpocFqAC9vepL1wG/6Dywn
	pGZDTv2yAVfVk6uzsbSH4WwvhQRQtn0ypxa5RdEEr0OtJxjoJyYVG/DJajSRCxz74Rov
	q+ds8WskscDZdgAem2JP7xMeYo0ccq/XWyAC8RQQWf122tA8ysRezckC6KBgIkIRzCA6
	/UyS7Iy/AMnz0ggirUNtuo7K3CUBi0weDahRKQbAIi07CqpiBw2hqiNRmzTEaZVONgoK
	IJAQ==
X-Gm-Message-State: ALoCoQmVvAXoxUBN2lMmsBzJHzwafwvm+3Ygkht9zJGGrPUT9m2vMOjRV1rjRQuAtIBGnnIBJM2D
X-Received: by 10.224.80.201 with SMTP id u9mr1366094qak.5.1393347072034;
	Tue, 25 Feb 2014 08:51:12 -0800 (PST)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id k1sm1451851qat.16.2014.02.25.08.51.10
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 25 Feb 2014 08:51:11 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 25 Feb 2014 18:51:00 +0200
Message-Id: <1393347061-26621-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
Subject: [meta-raspberrypi][PATCH 1/2] mesa: Replace ugly fix for gles/egl
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
X-List-Received-Date: Tue, 25 Feb 2014 16:51:13 -0000

Use instead, the special created recipe mesa-gl which provides on libgl.

Change-Id: I5ed3c50a0a794f8ea63cc1906f0139ec47459fa6
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 conf/machine/include/rpi-default-providers.inc |  2 ++
 recipes-graphics/mesa/mesa_9.2.5.bbappend      | 36 --------------------------
 2 files changed, 2 insertions(+), 36 deletions(-)
 delete mode 100644 recipes-graphics/mesa/mesa_9.2.5.bbappend

diff --git a/conf/machine/include/rpi-default-providers.inc b/conf/machine/include/rpi-default-providers.inc
index 3c5b294..ee3a3ac 100644
--- a/conf/machine/include/rpi-default-providers.inc
+++ b/conf/machine/include/rpi-default-providers.inc
@@ -5,4 +5,6 @@ PREFERRED_PROVIDER_u-boot = "u-boot-rpi"
 PREFERRED_PROVIDER_virtual/xserver = "xserver-xorg"
 PREFERRED_PROVIDER_virtual/egl ?= "userland"
 PREFERRED_PROVIDER_virtual/libgles2 ?= "userland"
+PREFERRED_PROVIDER_virtual/libgl ?= "mesa-gl"
+PREFERRED_PROVIDER_virtual/mesa ?= "mesa-gl"
 PREFERRED_PROVIDER_jpeg = "jpeg"
diff --git a/recipes-graphics/mesa/mesa_9.2.5.bbappend b/recipes-graphics/mesa/mesa_9.2.5.bbappend
deleted file mode 100644
index 34da98f..0000000
--- a/recipes-graphics/mesa/mesa_9.2.5.bbappend
+++ /dev/null
@@ -1,36 +0,0 @@
-PRINC := "${@int(PRINC) + 2}"
-
-#
-# FIXME
-# We need a way to disable EGL and GL ES2, these are provided by userland package
-#
-python __anonymous () {
-    import re
-
-    machine = d.getVar('MACHINE', True)
-    if machine == 'raspberrypi':
-        # Remove egl and gles2 configure options
-        extra_oeconf = d.getVar('EXTRA_OECONF', True).split()
-        take_out = ['--enable-egl', '--enable-gles2', '--enable-gles1']
-        put_in = ['--disable-egl', '--disable-gles2', '--disable-gles1']
-        pattern = re.compile("--with-egl-platforms")
-        new_extra_oeconf = []
-        for i in extra_oeconf:
-            if i not in take_out and not pattern.match(i):
-                new_extra_oeconf.append(i)
-        for i in put_in:
-            new_extra_oeconf.append(i)
-        d.setVar('EXTRA_OECONF', ' '.join(new_extra_oeconf))
-
-        # Remove egl and gles2 from provides
-        provides = d.getVar('PROVIDES', True).split()
-        take_out = ['virtual/libgles2', 'virtual/egl', 'virtual/libgles1']
-        new_provides = []
-        for i in provides:
-            if i not in take_out:
-                new_provides.append(i)
-        d.setVar('PROVIDES', ' '.join(new_provides))
-
-        # We are now machine specific
-        d.setVar('PACKAGE_ARCH', d.getVar('MACHINE_ARCH'))
-}
-- 
1.8.1.4


