Return-Path: <ajlennon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3373EE00B71; Mon,  2 Jun 2014 03:04:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.212.170 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97639E00B0B
	for <yocto@yoctoproject.org>; Mon,  2 Jun 2014 03:04:37 -0700 (PDT)
Received: by mail-wi0-f170.google.com with SMTP id bs8so3972633wib.5
	for <yocto@yoctoproject.org>; Mon, 02 Jun 2014 03:04:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=wYaPU4NsDo/iQsX+YCyvcEkJtmn0CJniYb1/4uyrsek=;
	b=QOxO/23mKzYSAy++JE4JnbvPJYbltXWhISJjM4RS+dfMJb0UuEUxWJOnPDE9wfjBnw
	+mvnMSHc/V63635Gb6++oQGyqNIjscAkSjydgr67DgOIRlWZ/q23gNvBRZBOT1/jTfZ0
	hqnNPRDf027HCZsABNmVxlKSqVx5gwWZVzIe4DJ4VVsyYfr2lzdTwtAPVKyCqIX/nvSi
	JMe3zJnPVpufKK5GU82n6GtTMBmmMJ/g0mRfSPJMpI8G+YpKa21jGyvV5NdpJUK0nBEZ
	3aUYCM/S6tqLS1sXOgQIJiMQu0xFqpPw5dOpTm+Sp2k5gi/N1aJbiNBFJljAu4plQbH0
	Fx/w==
X-Received: by 10.194.71.107 with SMTP id t11mr16795736wju.44.1401703476447;
	Mon, 02 Jun 2014 03:04:36 -0700 (PDT)
Received: from localhost.localdomain
	(cpc32-live22-2-0-cust59.17-2.cable.virginm.net. [82.36.253.60])
	by mx.google.com with ESMTPSA id
	kp5sm34175114wjb.30.2014.06.02.03.04.34 for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 02 Jun 2014 03:04:35 -0700 (PDT)
Sender: Alex Lennon <ajlennon@gmail.com>
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
To: yocto@yoctoproject.org, vaduva.jan.alexandru@gmail.com, andrei@gherzan.ro,
	gary@mlbassoc.com
Date: Mon,  2 Jun 2014 11:04:15 +0100
Message-Id: <25eecdf05ee2d0268d06082d2b904f43c503898e.1401703109.git.ajlennon@dynamicdevices.co.uk>
X-Mailer: git-send-email 2.0.0
In-Reply-To: <cover.1401703109.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1401703109.git.ajlennon@dynamicdevices.co.uk>
In-Reply-To: <cover.1401703109.git.ajlennon@dynamicdevices.co.uk>
References: <cover.1401703109.git.ajlennon@dynamicdevices.co.uk>
Subject: [meta-raspberrypi][PATCH 1/1] userland: Add '--no-as-needed' linker flag to ensure all specified shared libraries are linked against applications (e.g. raspivid)
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
X-List-Received-Date: Mon, 02 Jun 2014 10:04:39 -0000

libmmal_vc_client.so makes use of __attribute__(constructor) to ensure that supplier components (e.g. camera) are loaded when the static library is loaded.

raspivid, and possibly other applications, link against libmmal_vc_client.so, causing the ctor to execute, but there is no needed dependency.

Some build environments (e.g. Yocto/OpenEmbedded) pass the '--no-as-needed' linker flag which removes the dependency on libmmal_vc_client and thus components are not r

In this situation raspivid then gives an error of the form

  root@raspberrypi:~# raspivid -o test
  mmal: mmal_component_create_core: could not find component 'vc.ril.camera'
  mmal: Failed to create camera component
  mmal: main: Failed to create camera component
  mmal: Failed to run camera app. Please check for firmware updates

For further details see: https://lists.yoctoproject.org/pipermail/yocto/2014-June/019933.html

Change-Id: I7d6b3751d043f2d79ea06f2d1205e7430f6e926d
Signed-off-by: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
---
 recipes-graphics/userland/userland_git.bb | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index a348090..95e038b 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -11,14 +11,18 @@ PROVIDES = "virtual/libgles2 \
             virtual/egl"
 COMPATIBLE_MACHINE = "raspberrypi"
 
+SRCBRANCH = "master"
+SRCFORK = "raspberrypi"
 SRCREV = "eccb81050afd177da1923404b366c6226f29bfe0"
-SRC_URI = "git://github.com/raspberrypi/userland.git;protocol=git;branch=master \
+
+SRC_URI = "git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
           "
+
 S = "${WORKDIR}/git"
 
 inherit cmake
 
-EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release"
+EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release -DCMAKE_EXE_LINKER_FLAGS='-Wl,--no-as-needed'"
 
 # The compiled binaries don't provide sonames.
 SOLIBS = "${SOLIBSDEV}"
@@ -29,10 +33,10 @@ do_install_append() {
     rm -rf ${D}/opt
 }
 
+
 FILES_${PN} += "${libdir}/*${SOLIBS}"
 FILES_${PN}-dev = "${includedir} \
                    ${prefix}/src"
 FILES_${PN}-doc += "${datadir}/install"
 
 PACKAGE_ARCH = "${MACHINE_ARCH}"
-
-- 
2.0.0


