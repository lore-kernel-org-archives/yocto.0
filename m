Return-Path: <andrei@gherzan.ro>
Received: from mail-qa0-f44.google.com (mail-qa0-f44.google.com
	[209.85.216.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E1F5E008DC
	for <yocto@yoctoproject.org>; Tue, 25 Feb 2014 03:52:22 -0800 (PST)
Received: by mail-qa0-f44.google.com with SMTP id f11so138560qae.3
	for <yocto@yoctoproject.org>; Tue, 25 Feb 2014 03:52:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=IRSj7wQQ5xCLYDzwvKWPK9HhG49FXvTKNEgS9sVQgrs=;
	b=FKjdHzCVYG+kCyqhIGZE1DRCBvc4xzCX0HikAiNcsYE5iEdBDwuyamDtt3gmFFYNKL
	AaARB2gJy9bFRKVJ7TiAYn4/Cdps6JlYUmtopfdEo0Y0pm5Z6tySyICWGKhM02VpJxfQ
	WHXfJwumTbFM8CMrZla9mvsExHzboOpDzXtO0V61hCe7U1p5ullvUGLhbW9pg74l8LJs
	wkQ2GZKwVfxmDWcDkzhYYsPu/0997UIxpkKKuS0M2/dFS0T55kBM+aBmgO3QOl3YVODD
	o8+fYWIeWaICeK7pCys6nf+d0JHuPYnTEBh1FS8jtXXXDoUrgc9WCFH72IGzTS2FE0Rh
	Dotg==
X-Gm-Message-State: ALoCoQknIMtR1zttzi3MtaR68r0wmX6dZCAA3m0imr1JoBVy6/FOtqbBs5reg55EJ6lrg/n1iAiw
X-Received: by 10.224.54.10 with SMTP id o10mr37494952qag.9.1393329141549;
	Tue, 25 Feb 2014 03:52:21 -0800 (PST)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id y71sm29726189qgd.3.2014.02.25.03.52.19
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 25 Feb 2014 03:52:20 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 25 Feb 2014 13:52:10 +0200
Message-Id: <1393329130-17062-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
Subject: [meta-raspberrypi][PATCH 1/1] mesa: Replace ugly fix with PACKAGECONFIG
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
X-List-Received-Date: Tue, 25 Feb 2014 11:52:25 -0000

Use "%" as version because this append should be applied on any mesa
version.

Change-Id: I5ed3c50a0a794f8ea63cc1906f0139ec47459fa6
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-graphics/mesa/mesa_%.bbappend     |  6 ++++++
 recipes-graphics/mesa/mesa_9.2.5.bbappend | 36 -------------------------------
 2 files changed, 6 insertions(+), 36 deletions(-)
 create mode 100644 recipes-graphics/mesa/mesa_%.bbappend
 delete mode 100644 recipes-graphics/mesa/mesa_9.2.5.bbappend

diff --git a/recipes-graphics/mesa/mesa_%.bbappend b/recipes-graphics/mesa/mesa_%.bbappend
new file mode 100644
index 0000000..6ea5a8f
--- /dev/null
+++ b/recipes-graphics/mesa/mesa_%.bbappend
@@ -0,0 +1,6 @@
+# EGL and GLES are provided by userland package
+PACKAGECONFIG_remove_raspberrypi = "egl gles"
+PROVIDES_remove_raspberrypi = "\
+    virtual/libgles1 \
+    virtual/libgles2 \
+    virtual/egl"
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


