Return-Path: <ajlennon@gmail.com>
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9AF8BE009BF
	for <yocto@yoctoproject.org>; Sun,  2 Mar 2014 13:39:55 -0800 (PST)
Received: by mail-wg0-f42.google.com with SMTP id y10so2299994wgg.25
	for <yocto@yoctoproject.org>; Sun, 02 Mar 2014 13:39:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=sIJXarIKc3u4TcFV23WdoKJ11/RI3OXq54kiUSJQkYk=;
	b=O49qAVLguDAMSRDKX+bcD64/MCydm/jDfOayJ2bWWzOmsdf4IFTZMgoi4CFODVm68d
	yErvAk132TzgPR3j+KLn4gp/Q4wlrAts/TYjSvFfyotjTeVQi4Dr9HW/+PIDpe7hLq9W
	7p64VoLgX8bpjI5WchDGjmDCZDdEnawZxdga2W1RR8IGJuAkRstNUH21vNmTYPiP40IG
	sc7j6ScpE5LpnJ6HEvxMX8nMuUGYKeTAvQ2WOV4u+GF2cua+ZxMR6PQIAS9wJAsL8uit
	fAtOtFRZBimnNIVMDcmsve+gmj9GWKbF3fHv6IZjUOR6R7+5IHOCz23MnRdEjOyYTb0f
	EKZA==
X-Received: by 10.194.21.193 with SMTP id x1mr11732258wje.33.1393796394447;
	Sun, 02 Mar 2014 13:39:54 -0800 (PST)
Received: from localhost.localdomain
	(cpc32-live22-2-0-cust59.17-2.cable.virginm.net. [82.36.253.60])
	by mx.google.com with ESMTPSA id n3sm27326112wix.10.2014.03.02.13.39.52
	for <yocto@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sun, 02 Mar 2014 13:39:53 -0800 (PST)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org
Date: Sun,  2 Mar 2014 21:39:12 +0000
Message-Id: <9ba8f57529afc12854ef40b0d863e04fc59bf5f7.1393796208.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1393796208.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1393796208.git.ajlennon@dynamicdevices.co.uk>
In-Reply-To: <cover.1393796208.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1393796208.git.ajlennon@dynamicdevices.co.uk>
Subject: [meta-mono] [PATCH 1/1] mono-native: Modify build to eliminate dependency on on host system mscorlib.dll
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
X-List-Received-Date: Sun, 02 Mar 2014 21:39:57 -0000

Synopsis
========

mono-native builds fine with an Ubuntu 12.04 LTS host system, with or without mono installed from precise pangolin (i.e. Mono v2.x series).

If mono is upgraded to v3.x series using, say, ppa:directhex/monoxide then the build fails

@see http://stackoverflow.com/questions/13365158/installing-mono-3-x-3-0-x-and-or-3-2-x

Build messages includes a warning

../corlib/Mono/DataConverter.cs(759,25): warning CS0436: The type `Mono.DataConverter' conflicts with the imported type of same name'.
Ignoring the imported type definition
../../build/common/MonoTODOAttribute.cs(38,17): (Location of the symbol related to previous warning)
/usr/lib/mono/4.5/mscorlib.dll (Location of the symbol related to previous warning)

Then an error

MCS     [build] mscorlib.dll
Unhandled Exception:
System.TypeLoadException: Could not load type 'Mono.CSharp.CommandLineParser' from assembly 'basic, Version=3.2.8.0, Culture=neutral, PublicKeyToken=null'.
[ERROR] FATAL UNHANDLED EXCEPTION: System.TypeLoadException: Could not load type 'Mono.CSharp.CommandLineParser' from assembly 'basic, Version=3.2.8.0, Culture=neutral, PublicKeyToken=null'.
make[8]: *** [../../class/lib/build/tmp/mscorlib.dll] Error 1

This appears related to Mono building its 'basic' profile. The makefile for this profile appears not to correctly set the path to the correct mscorlib.dll which this patch attempts to fix.

Testing
=======

With this patch in place a build of a qemux86 image succeeds with Mono 3.2.8 on the
host and the mono-helloworld recipe files can be executed successfully

Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
---
 .../mono/mono-3.2.8/fix-basic-mscorlib-dep.patch   |   11 +++++++++++
 recipes-mono/mono/mono-native_3.2.8.bb             |    5 +++--
 2 files changed, 14 insertions(+), 2 deletions(-)
 create mode 100644 recipes-mono/mono/mono-3.2.8/fix-basic-mscorlib-dep.patch

diff --git a/recipes-mono/mono/mono-3.2.8/fix-basic-mscorlib-dep.patch b/recipes-mono/mono/mono-3.2.8/fix-basic-mscorlib-dep.patch
new file mode 100644
index 0000000..5759a86
--- /dev/null
+++ b/recipes-mono/mono/mono-3.2.8/fix-basic-mscorlib-dep.patch
@@ -0,0 +1,11 @@
+--- 3.2.8-r0/mcs/build/profiles/basic.make.org	2014-03-01 17:51:52.904670729 +0000
++++ 3.2.8-r0/mcs/build/profiles/basic.make	2014-03-01 17:46:50.476669939 +0000
+@@ -12,7 +12,7 @@
+ PROFILE_RUNTIME = $(with_mono_path_monolite) $(RUNTIME)
+ BOOTSTRAP_MCS = $(PROFILE_RUNTIME) $(RUNTIME_FLAGS) $(MONOLITE_MCS) -sdk:2
+ else
+-PROFILE_RUNTIME = $(EXTERNAL_RUNTIME)
++PROFILE_RUNTIME = ${with_mono_path) $(EXTERNAL_RUNTIME)
+ BOOTSTRAP_MCS = $(EXTERNAL_MCS)
+ endif
+ 
diff --git a/recipes-mono/mono/mono-native_3.2.8.bb b/recipes-mono/mono/mono-native_3.2.8.bb
index 93decd6..6ad4b04 100644
--- a/recipes-mono/mono/mono-native_3.2.8.bb
+++ b/recipes-mono/mono/mono-native_3.2.8.bb
@@ -4,11 +4,12 @@ inherit native
 
 EXTRA_OECONF += "mono_cv_uscore=no --with-sigaltstack=no --with-mcs-docs=no"
 
+SRC_URI += "file://fix-basic-mscorlib-dep.patch"
+
 do_configure_prepend() {
     ${S}/autogen.sh --verbose || bbnote "mono-native failed to autogen.sh"
 }
 
 do_compile() {
-    make get-monolite-latest
-    make EXTERNAL_MCS="${S}/mcs/class/lib/monolite/basic.exe"
+    make EXTERNAL_MCS="${S}/mcs/class/lib/monolite/basic.exe" 
 }
-- 
1.7.9.5


