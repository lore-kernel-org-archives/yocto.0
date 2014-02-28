Return-Path: <ajlennon@gmail.com>
Received: from mail-we0-f172.google.com (mail-we0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F03ECE00936
	for <yocto@yoctoproject.org>; Fri, 28 Feb 2014 05:17:49 -0800 (PST)
Received: by mail-we0-f172.google.com with SMTP id u56so546681wes.17
	for <yocto@yoctoproject.org>; Fri, 28 Feb 2014 05:17:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=MaxsDfBuam+ZSZCO/1ytIHHGVOf+pmxhpwLf/1rmfOc=;
	b=Ncec3fE2FbHzn4y9GCsNl07czyzStcRlNIJ8tiLmDKbpmjVIS8jbuWOVAjlpvwsBux
	+8fuQdnuc63JKYD4VWviOJMIpV8U8sVyWvUZfVREubURYvlWYxxKq5WkhRsELE+pUDdm
	zzBAazCAgo401Pehfq0IIiK+2ys6mEUX1cQjh2igGrYQbymfMbDb/MV09OZYqZwhQuIh
	nI7B9ziOe2wX8/tAm9opUtNocyG1M6o7Ph9ueokHsgpHoAEjaJWaIcj3gNfmmfawo9xy
	VtRGfpDLiXbL4wGIK462y9pCF7LVP3Gu9sZkrkisFkOwC6ScdQOtJ03iMX3zXbVqUOsF
	NNjQ==
X-Received: by 10.194.63.103 with SMTP id f7mr2728041wjs.38.1393593467992;
	Fri, 28 Feb 2014 05:17:47 -0800 (PST)
Received: from localhost.localdomain
	(cpc32-live22-2-0-cust59.17-2.cable.virginm.net. [82.36.253.60])
	by mx.google.com with ESMTPSA id n15sm4976195wij.3.2014.02.28.05.17.47
	for <yocto@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 28 Feb 2014 05:17:47 -0800 (PST)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org
Date: Fri, 28 Feb 2014 13:16:51 +0000
Message-Id: <42b6b3da0c55f2c76ced18ecee319099bd5a3343.1393593269.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1393593269.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1393593269.git.ajlennon@dynamicdevices.co.uk>
In-Reply-To: <cover.1393593269.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1393593269.git.ajlennon@dynamicdevices.co.uk>
Subject: [meta-mono] [PATCH 1/1] mono-basic: Add VisualBasic.NET support with mono-basic v2.10
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
X-List-Received-Date: Fri, 28 Feb 2014 13:17:50 -0000

Synopsis:

@see http://www.mono-project.com/VisualBasic.NET_support for details on VB.Net support in Mono

Testing:

mono-basic recipe was added to a qemux86 image for testing. A simple VB helloworld application was used from this link

@see http://msdn.microsoft.com/en-us/library/3cf7t4xt(v=vs.110).aspx

The script was first compiled to an .exe on the build Ubuntu host, copied to the qemux86 image and executed successfully with

mono helloworld.exe

i.e. A message box was shown

Then the script was copied to the qemux86 image, compiled and executed successfully with

vbnc helloworld.vb
mono helloworld.exe

Note that when using VB.Net on an, e.g., Ubuntu host it may be necessary to add a missing link. The recipe handles creation of this link for the target package.

sudo ln -s /usr/lib/mono/4.0/Microsoft.VisualBasic.dll  /usr/lib/mono/4.5/Microsoft.VisualBasic.dll

@see http://mono.1490590.n4.nabble.com/mod-mono-with-VB-The-library-Microsoft-VisualBasic-dll-could-not-be-found-td4659980.html

Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
---
 recipes-mono/mono-basic/mono-basic.inc     |   47 ++++++++++++++++++++++++++++
 recipes-mono/mono-basic/mono-basic_2.10.bb |    5 +++
 2 files changed, 52 insertions(+)
 create mode 100644 recipes-mono/mono-basic/mono-basic.inc
 create mode 100644 recipes-mono/mono-basic/mono-basic_2.10.bb

diff --git a/recipes-mono/mono-basic/mono-basic.inc b/recipes-mono/mono-basic/mono-basic.inc
new file mode 100644
index 0000000..8f66395
--- /dev/null
+++ b/recipes-mono/mono-basic/mono-basic.inc
@@ -0,0 +1,47 @@
+DESCRIPTION = "Visual Basic.NET support in Mono"
+SECTION = "devel/mono"
+DEPENDS = "mono"
+RDEPENDS_${PN} = "mono"
+LICENSE = "LGPLv2"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=d8c5dc22eb6f25667cf8d96f603635e7"
+
+inherit autotools 
+
+SRC_URI = "http://download.mono-project.com/sources/mono-basic/mono-basic-${PV}.tar.bz2"
+
+FILES_${PN} += " \
+  ${libdir}/mono/2.0/*.dll \
+  ${libdir}/mono/4.0/*.dll \
+  ${libdir}/mono/4.0/*.exe \
+  ${libdir}/mono/4.0/*.rsp \
+  ${libdir}/mono/4.5/* \
+  ${libdir}/mono/gac/Mono.Cecil.VB \
+  ${libdir}/mono/gac/Microsoft.VisualBasic \
+  ${libdir}/mono/gac/Mono.Cecil.VB.Pdb/0.9.3.0__0738eb9f132ed756/*.dll \
+  ${libdir}/mono/gac/Microsoft.VisualBasic/10.0.0.0__b03f5f7f11d50a3a/*.dll \
+  ${libdir}/mono/gac/Microsoft.VisualBasic/8.0.0.0__b03f5f7f11d50a3a/*.dll \
+  ${libdir}/mono/gac/Mono.Cecil.VB.Mdb/0.9.3.0__0738eb9f132ed756/*.dll \
+  ${libdir}/mono/gac/Mono.Cecil.VB/0.9.3.0__0738eb9f132ed756/*.dll \
+"
+
+FILES_${PN}-dbg += " \
+  ${libdir}/mono/4.0/*.mdb \
+  ${libdir}/mono/gac/*.Pdb \
+  ${libdir}/mono/gac/*.Mdb \
+  ${libdir}/mono/gac/Mono.Cecil.VB.Pdb/0.9.3.0__0738eb9f132ed756/*.mdb \
+  ${libdir}/mono/gac/Microsoft.VisualBasic/10.0.0.0__b03f5f7f11d50a3a/*.mdb \
+  ${libdir}/mono/gac/Microsoft.VisualBasic/8.0.0.0__b03f5f7f11d50a3a/*.mdb \
+  ${libdir}/mono/gac/Mono.Cecil.VB.Mdb/0.9.3.0__0738eb9f132ed756/*.mdb \
+  ${libdir}/mono/gac/Mono.Cecil.VB/0.9.3.0__0738eb9f132ed756/*.mdb \
+"
+
+do_compile_prepend() {
+  sed -e "s|\$(prefix)|${STAGING_DIR_NATIVE}/usr|" -i build/profiles/net_2_0.make
+  sed -e "s|\$(prefix)|${STAGING_DIR_NATIVE}/usr|" -i build/profiles/net_4_0.make
+}
+
+do_install_append() {
+ install -d "${D}${libdir}/mono/4.5"
+ ln -sf ${libdir}/mono/4.0/Microsoft.VisualBasic.dll  ${D}${libdir}/mono/4.5/Microsoft.VisualBasic.dll
+}
+
diff --git a/recipes-mono/mono-basic/mono-basic_2.10.bb b/recipes-mono/mono-basic/mono-basic_2.10.bb
new file mode 100644
index 0000000..422499b
--- /dev/null
+++ b/recipes-mono/mono-basic/mono-basic_2.10.bb
@@ -0,0 +1,5 @@
+require mono-basic.inc
+
+SRC_URI[md5sum] = "b459890e5447419ab1a5ea43d9b8afe8"
+SRC_URI[sha256sum] = "1cd87b634d4d862527c548bb827542d11a607569005df0123678e381ad12b186"
+
-- 
1.7.9.5


