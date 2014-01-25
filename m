Return-Path: <andrei@gherzan.ro>
Received: from mail-ea0-f174.google.com (mail-ea0-f174.google.com
	[209.85.215.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC9ADE0043A
	for <yocto@yoctoproject.org>; Sat, 25 Jan 2014 02:57:27 -0800 (PST)
Received: by mail-ea0-f174.google.com with SMTP id b10so1388586eae.5
	for <yocto@yoctoproject.org>; Sat, 25 Jan 2014 02:57:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=0q5iuTOEaZAPHv4V+rRwPm2ubj45t+dz90hsrahEDE4=;
	b=ej+vjST7bysb18DHxU/qUFBuXCf96TP8wx+cKw1wT8dRwyQMEk2IL9hQL/nGEyIi7v
	w3mBhfuisNbUMLihWR/BLUMSgwogKg5r4x2Sb3VKRIuk0r6tdoVyqQSYIzcBD6USYyZy
	2zTFsq+BpfG7qGHAVxDW5cnm09pTrhdHibOgcjcFR1xTWCQ1wWA16sJgC1rrWD0/NcPa
	eLxitv/85vVsYs6djCFkq6EFUf5ppJC86nnkXaoVXqG9dCKubmh78TvA/f3jNSvkmv8P
	txqC/2QOsqLrskWoIZwzzl+moE/QgY47kK4PWQqCvab7/58L5iqmio1slTy09KysXeJC
	Lnaw==
X-Gm-Message-State: ALoCoQlPLaQ4V1KgcvoJw9eMLanDUkzHNYHREzaMhEAul2pmmbngGlUc7TLJlbrXGz5gN67qFBPl
X-Received: by 10.14.5.67 with SMTP id 43mr785161eek.93.1390647446229;
	Sat, 25 Jan 2014 02:57:26 -0800 (PST)
Received: from localhost.localdomain (5-13-179-54.residential.rdsnet.ro.
	[5.13.179.54])
	by mx.google.com with ESMTPSA id 4sm14600656eed.14.2014.01.25.02.57.25
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 25 Jan 2014 02:57:25 -0800 (PST)
From: Andrei Gherzan <andrei@gherzan.ro>
To: yocto@yoctoproject.org
Date: Sat, 25 Jan 2014 12:57:01 +0200
Message-Id: <1390647421-4818-10-git-send-email-andrei@gherzan.ro>
X-Mailer: git-send-email 1.8.1.4
In-Reply-To: <1390647421-4818-1-git-send-email-andrei@gherzan.ro>
References: <1390647421-4818-1-git-send-email-andrei@gherzan.ro>
Subject: [meta-raspberrypi][PATCH 9/9] rpi-mkimage: Integrate package
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
X-List-Received-Date: Sat, 25 Jan 2014 10:57:28 -0000

Tool needed to convert bootable images in kernel.img files which can be loaded
by rpi bootloader.

Change-Id: I0088707be5d31d77def1087f51e3f8cc886d19db
Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
---
 recipes-bsp/rpi-mkimage/rpi-mkimage/License        | 25 ++++++++++++++++++++++
 .../open-files-relative-to-script.patch            | 17 +++++++++++++++
 recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb         | 22 +++++++++++++++++++
 3 files changed, 64 insertions(+)
 create mode 100644 recipes-bsp/rpi-mkimage/rpi-mkimage/License
 create mode 100644 recipes-bsp/rpi-mkimage/rpi-mkimage/open-files-relative-to-script.patch
 create mode 100644 recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb

diff --git a/recipes-bsp/rpi-mkimage/rpi-mkimage/License b/recipes-bsp/rpi-mkimage/rpi-mkimage/License
new file mode 100644
index 0000000..2582681
--- /dev/null
+++ b/recipes-bsp/rpi-mkimage/rpi-mkimage/License
@@ -0,0 +1,25 @@
+Copyright (c) 2012, Broadcom Europe Ltd
+All rights reserved.
+
+Redistribution and use in source and binary forms, with or without
+modification, are permitted provided that the following conditions are met:
+    * Redistributions of source code must retain the above copyright
+      notice, this list of conditions and the following disclaimer.
+    * Redistributions in binary form must reproduce the above copyright
+      notice, this list of conditions and the following disclaimer in the
+      documentation and/or other materials provided with the distribution.
+    * Neither the name of the copyright holder nor the
+      names of its contributors may be used to endorse or promote products
+      derived from this software without specific prior written permission.
+
+THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
+ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
+WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
+DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY
+DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
+(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
+LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
+ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
+(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
+SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+
diff --git a/recipes-bsp/rpi-mkimage/rpi-mkimage/open-files-relative-to-script.patch b/recipes-bsp/rpi-mkimage/rpi-mkimage/open-files-relative-to-script.patch
new file mode 100644
index 0000000..fa9e88b
--- /dev/null
+++ b/recipes-bsp/rpi-mkimage/rpi-mkimage/open-files-relative-to-script.patch
@@ -0,0 +1,17 @@
+When using open, use path relative to imagetool-uncompressed.py
+
+Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
+
+Index: git/mkimage/imagetool-uncompressed.py
+===================================================================
+--- a/mkimage/imagetool-uncompressed.py
++++ b/mkimage/imagetool-uncompressed.py
+@@ -18,7 +18,7 @@ re_line = re.compile(r"0x(?P<value>[0-9a
+ mem = [0 for i in range(32768)]
+ 
+ def load_to_mem(name, addr):
+-   f = open(name)
++   f = open(os.path.dirname(__file__) + '/' + name)
+ 
+    for l in f.readlines():
+       m = re_line.match(l)
diff --git a/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb b/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb
new file mode 100644
index 0000000..24da7a0
--- /dev/null
+++ b/recipes-bsp/rpi-mkimage/rpi-mkimage_git.bb
@@ -0,0 +1,22 @@
+SUMMARY = "RaspberryPi tool to produce kernel.img"
+LICENSE = "Broadcom"
+LIC_FILES_CHKSUM = "file://${WORKDIR}/License;md5=957f6640d5e2d2acfce73a36a56cb32f"
+SECTION = "bootloader"
+
+DEPENDS = "python"
+
+SRCREV = "330c72c2412f75a32932c4d9b51c9c678bce4180"
+SRC_URI = " \
+    git://github.com/raspberrypi/tools.git;branch=master;protocol=git \
+    file://License \
+    file://open-files-relative-to-script.patch \
+"
+
+S = "${WORKDIR}/git"
+
+do_install () {
+    install -d ${D}${libexecdir}
+    cp ./mkimage/* ${D}${libexecdir}
+}
+
+BBCLASSEXTEND = "native"
-- 
1.8.1.4


