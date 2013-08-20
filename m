Return-Path: <andrei@gherzan.ro>
Received: from mail-ea0-f180.google.com (mail-ea0-f180.google.com
	[209.85.215.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDA9FE0158F
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 10:02:56 -0700 (PDT)
Received: by mail-ea0-f180.google.com with SMTP id h10so339286eaj.39
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 10:02:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=q1scE4trVVoKxOWFBX9jyXSFiOugOCiMUtFa+kUnRCI=;
	b=WZZ18+0pY02cN7DYRENCVSoEBhStfCniZMU3IcC3HsHVxgXw0i+p5TD6Sc/LypwqXj
	vA2NGz3firTvjlaeosnCeshvUhPNlwtRT1I4FTu6CkeA/JECvtVSNlKzw90GEzZ+oy9s
	2jJHYrRwmlATLJmLCceTW3hLG4SlrVr8UNzx2Z4SkNX4AYBfBHuYSFPnu4cjFaEHqB/8
	WCm1VoQVkyyP/T9vPkxOgK2tv4O/ptC6Xy5z3fBUnkgooZirKPo88Zgn1zPb/iPBhe8E
	fbscXaDCJKOxaU6Vw6jHp6fO16iXZh3Mo+qW5jhizXVN4gPtVJFgcOnu7FH3393TxIcb
	tDxQ==
X-Gm-Message-State: ALoCoQnkDE9ND8tc3W8n0EVicSuqTjBYlFi32Zo81Gkj5cYiFe+PpyrCF//B14B45lRqR3RtLhJN
X-Received: by 10.14.4.1 with SMTP id 1mr3553446eei.21.1377018175494;
	Tue, 20 Aug 2013 10:02:55 -0700 (PDT)
Received: from localhost.localdomain ([89.121.200.106])
	by mx.google.com with ESMTPSA id l47sm3584186eex.15.1969.12.31.16.00.00
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 20 Aug 2013 10:02:55 -0700 (PDT)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Tue, 20 Aug 2013 20:02:34 +0300
Message-Id: <1377018158-2983-7-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
References: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 07/11] mesa: Use libgl from mesa for raspberrypi
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
X-List-Received-Date: Tue, 20 Aug 2013 17:02:57 -0000

The graphics libraries provided by userland does not include libgl. So compile
mesa with libgl support and remove gles and egl from it as these are provided
by userland.

Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-graphics/mesa/mesa_9.1.6.bbappend |   34 +++++++++++++++++++++++++++++
 1 file changed, 34 insertions(+)
 create mode 100644 recipes-graphics/mesa/mesa_9.1.6.bbappend

diff --git a/recipes-graphics/mesa/mesa_9.1.6.bbappend b/recipes-graphics/mesa/mesa_9.1.6.bbappend
new file mode 100644
index 0000000..88e5eab
--- /dev/null
+++ b/recipes-graphics/mesa/mesa_9.1.6.bbappend
@@ -0,0 +1,34 @@
+PRINC := "${@int(PRINC) + 1}"
+
+#
+# FIXME
+# We may a way to disable EGL and GL ES2, these are provided by userland package
+#
+python __anonymous () {
+    import re
+
+    # Remove egl and gles2 configure options
+    extra_oeconf = d.getVar('EXTRA_OECONF', True).split()
+    take_out = ['--enable-egl', '--enable-gles2', '--enable-gles1']
+    put_in = ['--disable-egl', '--disable-gles2', '--disable-gles1']
+    pattern = re.compile("--with-egl-platforms")
+    new_extra_oeconf = []
+    for i in extra_oeconf:
+        if i not in take_out and not pattern.match(i):
+            new_extra_oeconf.append(i)
+    for i in put_in:
+        new_extra_oeconf.append(i)
+    d.setVar('EXTRA_OECONF', ' '.join(new_extra_oeconf))
+
+    # Remove egl and gles2 from provides
+    provides = d.getVar('PROVIDES', True).split()
+    take_out = ['virtual/libgles2', 'virtual/egl', 'virtual/libgles1']
+    new_provides = []
+    for i in provides:
+        if i not in take_out:
+            new_provides.append(i)
+    d.setVar('PROVIDES', ' '.join(new_provides))
+
+    # We are now machine specific
+    d.setVar('PACKAGE_ARCH', d.getVar('MACHINE_ARCH'))
+}
-- 
1.7.9.5


