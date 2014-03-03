Return-Path: <ajlennon@gmail.com>
Received: from mail-we0-f180.google.com (mail-we0-f180.google.com
	[74.125.82.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57643E00963
	for <yocto@yoctoproject.org>; Mon,  3 Mar 2014 04:45:09 -0800 (PST)
Received: by mail-we0-f180.google.com with SMTP id p61so1919621wes.25
	for <yocto@yoctoproject.org>; Mon, 03 Mar 2014 04:45:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=13or7z+rXbxkW83Y8+BFsRKqxV0pDMG/jdsCID804Yg=;
	b=siQ0WjKXTn3P3vyza4SZwWrUGKr7f1xj+QPX6Op8WiHt3kWbu3FZW0YzouzgggveUs
	mbLXJ0WD0BwSC+MQuZ3lkvrf6DnEMpOfN8jWPXVhD9d9AvzDVFf/SxM+mXp7qyfbfaCG
	2lBxHb8pSJsbJvLgnKFQ+3DiKUCCmT2acVhYmPCr1TmXJID3ZgJd66fhx9khDYdgGKDB
	2TTjYHKfDxGUom0BAcA4Lr0bnTqHkz6bczdxe8XLbIIKDNpE+17PyorjI7gSWK/jd2jl
	VzguIOMd1YKyLmAoKb5kYTHdIGQQu2gg9LtSPGZuxUu0lkKWsx1XKUpN4wTpiZLYY+MB
	le8Q==
X-Received: by 10.194.110.135 with SMTP id ia7mr17375859wjb.5.1393850707940;
	Mon, 03 Mar 2014 04:45:07 -0800 (PST)
Received: from localhost.localdomain
	(cpc32-live22-2-0-cust59.17-2.cable.virginm.net. [82.36.253.60])
	by mx.google.com with ESMTPSA id 12sm34748805wjm.10.2014.03.03.04.45.06
	for <yocto@yoctoproject.org>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 03 Mar 2014 04:45:07 -0800 (PST)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org
Date: Mon,  3 Mar 2014 12:44:30 +0000
Message-Id: <21568bf4eb910281768553db2d9f5068d7b34769.1393850555.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1393850555.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1393850555.git.ajlennon@dynamicdevices.co.uk>
In-Reply-To: <cover.1393850555.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1393850555.git.ajlennon@dynamicdevices.co.uk>
Subject: [meta-mono] [PATCH 1/1] fsharp: Add support for F# programming language v3.1
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
X-List-Received-Date: Mon, 03 Mar 2014 12:45:10 -0000

Testing
=======

qemux86 image was created including the interactive shell (fsharpi) and the compiler (fsharpc) which could both be executed

Examples from the Wikipiedia page were successfully compiled and executed with mono, including Hello World, Windows Forms, and Asynchronous Parallel Programming

@see: http://en.wikipedia.org/wiki/F_Sharp_(programming_language)

Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
---
 recipes-mono/fsharp/fsharp.inc        |   43 +++++++++++++++++++++++++++++++++
 recipes-mono/fsharp/fsharp_3.1.1.1.bb |    7 ++++++
 2 files changed, 50 insertions(+)
 create mode 100644 recipes-mono/fsharp/fsharp.inc
 create mode 100644 recipes-mono/fsharp/fsharp_3.1.1.1.bb

diff --git a/recipes-mono/fsharp/fsharp.inc b/recipes-mono/fsharp/fsharp.inc
new file mode 100644
index 0000000..569f9ab
--- /dev/null
+++ b/recipes-mono/fsharp/fsharp.inc
@@ -0,0 +1,43 @@
+SUMMARY = "F# programming language"
+DESCRIPTION = "F# is a strongly-typed, functional-first programming language for writing simple code to solve complex problems."
+SECTION = "devel/mono"
+DEPENDS = "mono"
+LICENSE = "Apache-2.0"
+LIC_FILES_CHKSUM = "files://LICENSE;md5=512efb9375da0bd2fee9e2b9352c08af"
+
+inherit autotools
+
+# For some reason the URL template changes from version to version,
+# therefore use some variables for the directory and extension
+SRC_URI = "https://github.com/fsharp/fsharp/archive/${PV}.tar.gz"
+
+# AJL - Could split out mdb debugging files into -dbg package in future?
+FILES_${PN} += "\
+  ${libdir}/mono/* \  
+  ${libdir}/mono/xbuild/Microsoft/VisualStudio/* \
+  ${libdir}/mono/Microsoft F#/v4.0/* \
+  ${libdir}/mono/Microsoft SDKs/F#/3.0/* \
+  ${libdir}/mono/Microsoft SDKs/F#/3.1/* \
+  ${libdir}/mono/2.0/* \
+  ${libdir}/lib/mono/gac/* \
+  ${libdir}/mono/gac/FSharp.Compiler.Interactive.Settings/4.3.1.0__f536804aa0eb945b/* \
+  ${libdir}/mono/gac/FSharp.Compiler.Server.Shared/4.3.1.0__f536804aa0eb945b/* \
+  ${libdir}/mono/gac/FSharp.Data.TypeProviders/4.3.1.0__f536804aa0eb945b/* \
+  ${libdir}/mono/gac/policy.2.3.FSharp.Core/0.0.0.0__b03f5f7f11d50a3a/* \
+  ${libdir}/mono/gac/policy.2.3.FSharp.Core/0.0.0.0__b03f5f7f11d50a3a/* \
+  ${libdir}/mono/gac/policy.4.0.FSharp.Core/0.0.0.0__b03f5f7f11d50a3a/* \
+  ${libdir}/mono/gac/policy.3.3.FSharp.Core/0.0.0.0__b03f5f7f11d50a3a/* \
+  ${libdir}/mono/gac/policy.3.3.FSharp.Core/0.0.0.0__b03f5f7f11d50a3a/* \
+  ${libdir}/mono/gac/policy.2.0.FSharp.Core/0.0.0.0__b03f5f7f11d50a3a/* \
+  ${libdir}/mono/gac/FSharp.Core/2.3.98.1__b03f5f7f11d50a3a/* \
+  ${libdir}/mono/gac/FSharp.Core/2.3.1.0__b03f5f7f11d50a3a/* \
+  ${libdir}/mono/gac/FSharp.Core/4.3.1.0__b03f5f7f11d50a3a/* \
+  ${libdir}/mono/gac/FSharp.Core/2.3.99.1__b03f5f7f11d50a3a/* \
+  ${libdir}/mono/gac/FSharp.Compiler/4.3.1.0__f536804aa0eb945b/* \
+  ${libdir}/mono/gac/policy.4.3.FSharp.Core/0.0.0.0__b03f5f7f11d50a3a/* \
+  ${libdir}/mono/gac/FSharp.Build/* \
+  ${libdir}/mono/4.0/* \
+  ${libdir}/mono/monotouch/* \
+  ${libdir}/mono/monodroid/* \
+"
+
diff --git a/recipes-mono/fsharp/fsharp_3.1.1.1.bb b/recipes-mono/fsharp/fsharp_3.1.1.1.bb
new file mode 100644
index 0000000..bc3533f
--- /dev/null
+++ b/recipes-mono/fsharp/fsharp_3.1.1.1.bb
@@ -0,0 +1,7 @@
+require fsharp.inc
+
+inherit pkgconfig
+
+SRC_URI[md5sum] = "2900b258f57db34ca51d0caba58c9cd3"
+SRC_URI[sha256sum] = "ad3f53e835d18a0c53a12101c118619a1cb8e4f6c216001572790e9509679bcf"
+
-- 
1.7.9.5


