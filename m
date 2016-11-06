Return-Path: <barry@grussling.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92960E0095F; Sat,  5 Nov 2016 21:23:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B927EE0095F
	for <yocto@yoctoproject.org>; Sat,  5 Nov 2016 21:23:09 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id i88so12359436pfk.2
	for <yocto@yoctoproject.org>; Sat, 05 Nov 2016 21:23:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=grussling-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=7yL4vIP87PeUC0ke9oOxvJyRr5/ZRXIyHw6xWzFHd3I=;
	b=m0WQzDNUk/OuwfLIBtN3yUpNlpz/YvFEPhun0vzChkqQS3jPQdji7c4tM8mpMwYbaB
	R1XhIRPM6kQlo73wINhHhEhckv7T6Qtvy/ECLAijMYESXpRxeKRJy06I98Amau8W7rcK
	5YQ9q0KMPeeQC3ueFcseCVEsn786C9AY4oII0qF5FqCtqIre5d4SUxaNzqGJl2n1gBfk
	h+IY5/eP+ezjmKUmaciYs1cb6TEquMMjALduoV2XM+fTwH2cm7ar/B7lErjcAcBuvtZ7
	ZsbZo8TOZwyS2yMoml4hzQyUZNwrKHwGFpCrzFUkPf/taej4Ztdh/0owjX2VlI07N5q1
	aZTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=7yL4vIP87PeUC0ke9oOxvJyRr5/ZRXIyHw6xWzFHd3I=;
	b=HibLZ9GF8AVhtDErcc4vSfGTGZa+c6+B/5U7lgAvT2571dhA7Zu2uj1U7mk4yl1kFp
	0ZTw41GcdZPsMWvKfFHmFVDremjG3A2QxpLUDIlmS8aCa/fI5yRXoo2TwW8KQjY/gvFg
	YHmyJ2Bj1CLxgrHSu43VgDdhnMJcyknkcvCOt//hDzNcqR1SgOjpgP6y51vjAO4e8AUD
	kO5earVUOMT7a/8T2xo5krBpFOekd4P1iQc1wuuTIsrY1r8Gg2RTRbybPNv8Y7sgZhdT
	NMQE9XP8DqmOjypejGPu1iH/Dn3dsKXi7r2+NFrGmffqOrCTWd/IuTAYKTXvgPmJ1Err
	uWyg==
X-Gm-Message-State: ABUngvfgPovMVEEr2qPXDpIAS6WfDxUg+x6pdu8+1dEV384Gs7WAACw1Brq5PgEEKmeVgQ==
X-Received: by 10.99.94.196 with SMTP id s187mr1204201pgb.107.1478406189444;
	Sat, 05 Nov 2016 21:23:09 -0700 (PDT)
Received: from trixie.pullman (cpe-76-178-155-10.natnow.res.rr.com.
	[76.178.155.10]) by smtp.gmail.com with ESMTPSA id
	m69sm30556050pfg.39.2016.11.05.21.23.08
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 05 Nov 2016 21:23:09 -0700 (PDT)
From: Barry Grussling <barry@grussling.com>
To: ajlennon@dynamicdevices.co.uk
Date: Sat,  5 Nov 2016 21:23:02 -0700
Message-Id: <20161106042304.3357-6-barry@grussling.com>
X-Mailer: git-send-email 2.10.2
In-Reply-To: <20161106042304.3357-1-barry@grussling.com>
References: <20161106042304.3357-1-barry@grussling.com>
Cc: yocto@yoctoproject.org
Subject: [meta-mono][PATCH 5/7] mono: add support for mono 4.6.1.5
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
X-List-Received-Date: Sun, 06 Nov 2016 04:23:11 -0000

Upgrade the mono framework to 4.6.1.5.  Only real issue was
problems with the .NETPortable directory:
ERROR: mono-4.6.1.5-r0 do_package: QA Issue: mono: Files/directories were installed but not shipped in any package:
  /usr/lib/mono/xbuild-frameworks/.NETPortable
  /usr/lib/mono/xbuild-frameworks/.NETPortable/v5.0
  /usr/lib/mono/xbuild-frameworks/.NETPortable/v5.0/RedistList
  /usr/lib/mono/xbuild-frameworks/.NETPortable/v5.0/SupportedFrameworks
  /usr/lib/mono/xbuild-frameworks/.NETPortable/v5.0/RedistList/FrameworkList.xml
  /usr/lib/mono/xbuild-frameworks/.NETPortable/v5.0/SupportedFrameworks/.NET Framework 4.6.xml
  /usr/lib/mono/xbuild-frameworks/.NETPortable/v5.0/SupportedFrameworks/ASP.NET Core 1.0.xml
  /usr/lib/mono/xbuild-frameworks/.NETPortable/v5.0/SupportedFrameworks/Windows Universal 10.0.xml

I fixed this by expanding the FILES directive for xbuild in the mono-4.xx.inc.

Signed-off-by: Barry Grussling <barry@grussling.com>
---
 README.md                                          |  7 +++++-
 recipes-mono/mono/mono-4.6.1.5.inc                 |  2 ++
 .../mono/mono-4.6.1.5/dllmap-config.in.diff        | 29 ++++++++++++++++++++++
 recipes-mono/mono/mono-4.xx.inc                    |  2 +-
 recipes-mono/mono/mono-native_4.6.1.5.bb           |  4 +++
 recipes-mono/mono/mono_4.6.1.5.bb                  |  8 ++++++
 6 files changed, 50 insertions(+), 2 deletions(-)
 create mode 100644 recipes-mono/mono/mono-4.6.1.5.inc
 create mode 100644 recipes-mono/mono/mono-4.6.1.5/dllmap-config.in.diff
 create mode 100644 recipes-mono/mono/mono-native_4.6.1.5.bb
 create mode 100644 recipes-mono/mono/mono_4.6.1.5.bb

diff --git a/README.md b/README.md
index 3333aad..2adac04 100644
--- a/README.md
+++ b/README.md
@@ -6,7 +6,7 @@ libraries to allow users to run .NET applications under linux built
 using OE. For more info about mono, see mono project's website. For
 more info on OpenEmbedded, see OE's website.
 
-This README pertains to meta-mono layer support for Mono 3.12.1 - 4.4.x
+This README pertains to meta-mono layer support for Mono 3.12.1 - 4.6.x
 
 For Mono release notes please see:
 
@@ -19,6 +19,7 @@ For Mono release notes please see:
 * [Mono 4.2.0 Release Notes](http://www.mono-project.com/docs/about-mono/releases/4.2.0/)
 * [Mono 4.2.1 Release Notes](http://www.mono-project.com/docs/about-mono/releases/4.2.1/)
 * [Mono 4.4.0 Release Notes](http://www.mono-project.com/docs/about-mono/releases/4.4.0/)
+* [Mono 4.6.1 Release Notes](http://www.mono-project.com/docs/about-mono/releases/4.6.1/)
 
 NOTE: Mono TLS vulnerabilities. 3.12.1+ includes the fix in the release archive.
 
@@ -151,6 +152,10 @@ MIT/GPLv2 - following the lead of libgdiplus and mono
 
 ## Current State - ARM vfp: Works
 
+4.6.1
+
+* Has been tested on Cortex-A9
+
 #### 27/04/2014
 
 4.0.1
diff --git a/recipes-mono/mono/mono-4.6.1.5.inc b/recipes-mono/mono/mono-4.6.1.5.inc
new file mode 100644
index 0000000..cf960ff
--- /dev/null
+++ b/recipes-mono/mono/mono-4.6.1.5.inc
@@ -0,0 +1,2 @@
+SRC_URI[md5sum] = "601a96baa96a2e7acde1fb7e622322c4"
+SRC_URI[sha256sum] = "3871ee72bdfc2ea5d636ffff22cf49ae6bac7c4a4f3d687214dd8ac236bbf7c3"
diff --git a/recipes-mono/mono/mono-4.6.1.5/dllmap-config.in.diff b/recipes-mono/mono/mono-4.6.1.5/dllmap-config.in.diff
new file mode 100644
index 0000000..52ca1a7
--- /dev/null
+++ b/recipes-mono/mono/mono-4.6.1.5/dllmap-config.in.diff
@@ -0,0 +1,29 @@
+diff -Naur mono-4.6.1.orig/data/config.in mono-4.6.1/data/config.in
+--- mono-4.6.1.orig/data/config.in	2016-10-11 05:53:43.000000000 -0700
++++ mono-4.6.1/data/config.in	2016-11-04 10:15:32.018107576 -0700
+@@ -10,12 +10,12 @@
+ 	<dllmap dll="i:odbc32.dll" target="libiodbc.dylib" os="osx"/>
+ 	<dllmap dll="oci" target="libclntsh@libsuffix@" os="!windows"/>
+ 	<dllmap dll="db2cli" target="libdb2_36@libsuffix@" os="!windows"/>
+-	<dllmap dll="MonoPosixHelper" target="$mono_libdir/libMonoPosixHelper@libsuffix@" os="!windows" />
++	<dllmap dll="MonoPosixHelper" target="libMonoPosixHelper.so" os="!windows" />
+ 	<dllmap dll="i:msvcrt" target="@LIBC@" os="!windows"/>
+ 	<dllmap dll="i:msvcrt.dll" target="@LIBC@" os="!windows"/>
+ 	<dllmap dll="sqlite" target="@SQLITE@" os="!windows"/>
+ 	<dllmap dll="sqlite3" target="@SQLITE3@" os="!windows"/>
+-	<dllmap dll="libX11" target="@X11@" os="!windows" />
++	<dllmap dll="libX11" target="libX11.so.6" os="!windows" />
+ 	<dllmap dll="libgdk-x11-2.0" target="@GDKX11@" os="!windows"/>
+ 	<dllmap dll="libgtk-x11-2.0" target="@GTKX11@" os="!windows"/>
+ 	<dllmap dll="libXinerama" target="@XINERAMA@" os="!windows" />
+@@ -29,8 +29,8 @@
+ 		<dllentry dll="__Internal" name="MoveMemory" target="mono_win32_compat_MoveMemory"/>
+ 		<dllentry dll="__Internal" name="ZeroMemory" target="mono_win32_compat_ZeroMemory"/>
+ 	</dllmap>
+-	<dllmap dll="gdiplus" target="@libgdiplus_install_loc@" os="!windows"/>
+-	<dllmap dll="gdiplus.dll" target="@libgdiplus_install_loc@"  os="!windows"/>
++	<dllmap dll="gdiplus" target="libgdiplus.so.0" os="!windows"/>
++	<dllmap dll="gdiplus.dll" target="libgdiplus.so.0"  os="!windows"/>
+ 	<dllmap dll="gdi32" target="@libgdiplus_install_loc@" os="!windows"/>
+ 	<dllmap dll="gdi32.dll" target="@libgdiplus_install_loc@" os="!windows"/>
+ </configuration>
diff --git a/recipes-mono/mono/mono-4.xx.inc b/recipes-mono/mono/mono-4.xx.inc
index f1dc536..c1df4f0 100644
--- a/recipes-mono/mono/mono-4.xx.inc
+++ b/recipes-mono/mono/mono-4.xx.inc
@@ -81,7 +81,7 @@ FILES_${PN}-libs-compat-2.0 		= "${libdir}/mono/compat-2.0/*"
 FILES_${PN}-gac				= "${libdir}/mono/gac/*"
 FILES_${PN}-configuration-crypto 	= "${libdir}/mono/mono-configuration-crypto/*/*"
 FILES_${PN}-libs-monodoc 		= "${libdir}/mono/monodoc/*"
-FILES_${PN}-xbuild 			= "${libdir}/mono/xbuild/* ${libdir}/mono/xbuild-frameworks/* ${libdir}/mono/xbuild-frameworks/.NETFramework/*/*/*"
+FILES_${PN}-xbuild 			= "${libdir}/mono/xbuild/* ${libdir}/mono/xbuild-frameworks/* ${libdir}/mono/xbuild-frameworks/.NETFramework/*/*/* ${libdir}/mono/xbuild-frameworks/.NETPortable/*/*/* ${libdir}/mono/xbuild-frameworks/.NETPortable/*/*/.NET*"
 FILES_${PN}-doc 			+= " ${datadir}/libgc-mono/*"
 FILES_${PN}-dbg 			+= " ${datadir}/mono-2.0/mono/cil/cil-opcodes.xml ${libdir}/mono/*/*.mdb ${libdir}/mono/gac/*/*/*.mdb"
 FILES_${PN}-staticdev 			+= " ${libdir}/*.a"
diff --git a/recipes-mono/mono/mono-native_4.6.1.5.bb b/recipes-mono/mono/mono-native_4.6.1.5.bb
new file mode 100644
index 0000000..81bc5af
--- /dev/null
+++ b/recipes-mono/mono/mono-native_4.6.1.5.bb
@@ -0,0 +1,4 @@
+require mono-4.xx.inc
+require mono-mit.inc
+require ${PN}-base.inc
+require mono-${PV}.inc
diff --git a/recipes-mono/mono/mono_4.6.1.5.bb b/recipes-mono/mono/mono_4.6.1.5.bb
new file mode 100644
index 0000000..ae8a7eb
--- /dev/null
+++ b/recipes-mono/mono/mono_4.6.1.5.bb
@@ -0,0 +1,8 @@
+require mono-4.xx.inc
+require mono-mit.inc
+require ${PN}-base.inc
+require mono-${PV}.inc
+
+PACKAGES += "${PN}-profiler "
+FILES_${PN}-profiler += " ${datadir}/mono-2.0/mono/profiler/*"
+
-- 
2.10.2


