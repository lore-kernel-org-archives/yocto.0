Return-Path: <andrei@gherzan.ro>
Received: from mail-qc0-f180.google.com (mail-qc0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 994F2E017BE
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2013 08:13:59 -0800 (PST)
Received: by mail-qc0-f180.google.com with SMTP id e9so5327025qcy.11
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2013 08:13:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=/r5kEZgBMotPijutiILFOy1DspCVyad3JR93HeiCBk8=;
	b=mmtj43ZTUTpUdSYTovCSNT1JjokOmveetx+TUT3YJKr/GiGCfHCvlGbMDThiXXHcq/
	KxYW4dmXqtBYXNO4WWIUX0FluWx+pWUWZw9kHZwi3AQivsxPMkqIe8I5bpfrPS94a5t0
	QO2cuLjginzCU6cyh5T71Db8wRTX/dALgcGEBXRcf53wqdIAHVCu+/X1PH3mp50G0Wtl
	eA0T7uyZHqcf/jgpCyavj7P5blMYRc75O22CAuCN2Kw/zlhEqFba9O7Y8o8nFVkOACO7
	Ie+AkyUoGkeITVl2kSdUIiM4+ZNXQ0nQFzuU0AjbFXdmYUWveF+0lfQNvq/IhrErpSc5
	beYg==
X-Gm-Message-State: ALoCoQkwWkYDkYj4ElYa4tLuFEcBnNLbKWA+DujFVlX6lwh+JyKaWKQhZH2TEpgFSJxkGMySar/1
X-Received: by 10.224.111.197 with SMTP id t5mr60073296qap.49.1384272838736;
	Tue, 12 Nov 2013 08:13:58 -0800 (PST)
Received: from otp-agherzan-l1.corp.ad.wrs.com ([89.121.200.106])
	by mx.google.com with ESMTPSA id kz8sm63288204qeb.0.2013.11.12.08.13.56
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 Nov 2013 08:13:58 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 12 Nov 2013 18:13:48 +0200
Message-Id: <1384272828-14587-1-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
Subject: [meta-raspberrypi][PATCH 1/1] mesa: Remove egl and gles only for raspberrypi machine
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
X-List-Received-Date: Tue, 12 Nov 2013 16:14:05 -0000

Change-Id: I25fab6e100546cfffdd901383f76de76cd7763ed
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-graphics/mesa/mesa_9.2.2.bbappend | 48 ++++++++++++++++---------------
 1 file changed, 25 insertions(+), 23 deletions(-)

diff --git a/recipes-graphics/mesa/mesa_9.2.2.bbappend b/recipes-graphics/mesa/mesa_9.2.2.bbappend
index 88e5eab..34da98f 100644
--- a/recipes-graphics/mesa/mesa_9.2.2.bbappend
+++ b/recipes-graphics/mesa/mesa_9.2.2.bbappend
@@ -1,34 +1,36 @@
-PRINC := "${@int(PRINC) + 1}"
+PRINC := "${@int(PRINC) + 2}"
 
 #
 # FIXME
-# We may a way to disable EGL and GL ES2, these are provided by userland package
+# We need a way to disable EGL and GL ES2, these are provided by userland package
 #
 python __anonymous () {
     import re
 
-    # Remove egl and gles2 configure options
-    extra_oeconf = d.getVar('EXTRA_OECONF', True).split()
-    take_out = ['--enable-egl', '--enable-gles2', '--enable-gles1']
-    put_in = ['--disable-egl', '--disable-gles2', '--disable-gles1']
-    pattern = re.compile("--with-egl-platforms")
-    new_extra_oeconf = []
-    for i in extra_oeconf:
-        if i not in take_out and not pattern.match(i):
+    machine = d.getVar('MACHINE', True)
+    if machine == 'raspberrypi':
+        # Remove egl and gles2 configure options
+        extra_oeconf = d.getVar('EXTRA_OECONF', True).split()
+        take_out = ['--enable-egl', '--enable-gles2', '--enable-gles1']
+        put_in = ['--disable-egl', '--disable-gles2', '--disable-gles1']
+        pattern = re.compile("--with-egl-platforms")
+        new_extra_oeconf = []
+        for i in extra_oeconf:
+            if i not in take_out and not pattern.match(i):
+                new_extra_oeconf.append(i)
+        for i in put_in:
             new_extra_oeconf.append(i)
-    for i in put_in:
-        new_extra_oeconf.append(i)
-    d.setVar('EXTRA_OECONF', ' '.join(new_extra_oeconf))
+        d.setVar('EXTRA_OECONF', ' '.join(new_extra_oeconf))
 
-    # Remove egl and gles2 from provides
-    provides = d.getVar('PROVIDES', True).split()
-    take_out = ['virtual/libgles2', 'virtual/egl', 'virtual/libgles1']
-    new_provides = []
-    for i in provides:
-        if i not in take_out:
-            new_provides.append(i)
-    d.setVar('PROVIDES', ' '.join(new_provides))
+        # Remove egl and gles2 from provides
+        provides = d.getVar('PROVIDES', True).split()
+        take_out = ['virtual/libgles2', 'virtual/egl', 'virtual/libgles1']
+        new_provides = []
+        for i in provides:
+            if i not in take_out:
+                new_provides.append(i)
+        d.setVar('PROVIDES', ' '.join(new_provides))
 
-    # We are now machine specific
-    d.setVar('PACKAGE_ARCH', d.getVar('MACHINE_ARCH'))
+        # We are now machine specific
+        d.setVar('PACKAGE_ARCH', d.getVar('MACHINE_ARCH'))
 }
-- 
1.8.1.4


