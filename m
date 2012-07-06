Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C143E006EA
	for <yocto@yoctoproject.org>; Thu,  5 Jul 2012 21:52:28 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so16366815pbb.35
	for <yocto@yoctoproject.org>; Thu, 05 Jul 2012 21:52:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer;
	bh=S7a1PhgdqW7OCz4LNP5HmdTnt1iLq2S6pk0dMrju1hA=;
	b=UTdp+W4LGz0oaP+3J6roUGs8S/8EhgY11iSk9KPv4YNA2mdf9nEl083Ap/biXuft3C
	EwFGDCfaFliCAkuFdPVfOoVvmY1eR7CnePbKAzP5JR3dkN3M3jUr1WfOuMIxyDPhjwB+
	0/Ry8yPcLPiPPcvL8NKr9aIMOmNyusyUrFccuf3KHPo9Efv8W0JWhuIjGadoaaNe0f8F
	hGHDQk8OM3ZZ6gsx9rHiO1mftrDkF/Q3lQ5vsZZ/Eyd/MSOgpU3zaUdQSPAaOvl2hCK0
	rJ/oSp4RmUke3YyfZg4VQqF9rh+PQgsH+UJ2xGUzamoS5FTQPu2CJA8/Ng1ToKNIusqn
	EUCw==
Received: by 10.68.225.9 with SMTP id rg9mr33576159pbc.137.1341550347926;
	Thu, 05 Jul 2012 21:52:27 -0700 (PDT)
Received: from agate.agate.openembedded.org (oldbuilder.nslu2-linux.org.
	[140.211.169.168])
	by mx.google.com with ESMTPS id iv8sm21098494pbc.53.2012.07.05.21.52.26
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 05 Jul 2012 21:52:27 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  5 Jul 2012 21:51:54 -0700
Message-Id: <1341550315-9795-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.9.5
Subject: [meta-fsl-ppc][PATCH 1/2] machines: Dont lock linux-libc-headers-nativesdk preferred provider
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 06 Jul 2012 04:52:28 -0000

linux-libc-headers-nativesdk is for native bits in an SDK
its not required to be locked in machine conf files since
nothing depends on machine per se here. If its a mattetr of
policy then this should be added to distro conf which
in this layer is fsl.conf

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/machine/e500mc.inc    |    1 -
 conf/machine/e500v2.inc    |    1 -
 conf/machine/e5500-64b.inc |    1 -
 conf/machine/e5500.inc     |    1 -
 4 files changed, 4 deletions(-)

diff --git a/conf/machine/e500mc.inc b/conf/machine/e500mc.inc
index bfac9e6..479c513 100644
--- a/conf/machine/e500mc.inc
+++ b/conf/machine/e500mc.inc
@@ -8,7 +8,6 @@ MACHINE_FEATURES_RRECOMMENDS = ""
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-qoriq-sdk"
 PREFERRED_VERSION_virtual/kernel ?= "3.0.6"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-qoriq-sdk-headers"
-PREFERRED_PROVIDER_linux-libc-headers-nativesdk ?= "linux-qoriq-sdk-headers-nativesdk"
 
 KERNEL_IMAGETYPE ?= "uImage"
 # disable the images below for now
diff --git a/conf/machine/e500v2.inc b/conf/machine/e500v2.inc
index cf8f36c..6e2eb49 100644
--- a/conf/machine/e500v2.inc
+++ b/conf/machine/e500v2.inc
@@ -8,7 +8,6 @@ MACHINE_EXTRA_RRECOMMENDS = ""
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-qoriq-sdk"
 PREFERRED_VERSION_virtual/kernel ?= "3.0.6"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-qoriq-sdk-headers"
-PREFERRED_PROVIDER_linux-libc-headers-nativesdk ?= "linux-qoriq-sdk-headers-nativesdk"
 
 KERNEL_IMAGETYPE ?= "uImage"
 # disable the images below for now
diff --git a/conf/machine/e5500-64b.inc b/conf/machine/e5500-64b.inc
index 80dee5c..1e5d92b 100644
--- a/conf/machine/e5500-64b.inc
+++ b/conf/machine/e5500-64b.inc
@@ -9,7 +9,6 @@ MACHINE_FEATURES_RRECOMMENDS = ""
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-qoriq-sdk"
 PREFERRED_VERSION_virtual/kernel ?= "3.0.6"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-qoriq-sdk-headers"
-PREFERRED_PROVIDER_linux-libc-headers-nativesdk ?= "linux-qoriq-sdk-headers-nativesdk"
 
 KERNEL_IMAGETYPE ?= "uImage"
 # disable the images below for now
diff --git a/conf/machine/e5500.inc b/conf/machine/e5500.inc
index 965618e..f34c2c0 100644
--- a/conf/machine/e5500.inc
+++ b/conf/machine/e5500.inc
@@ -8,7 +8,6 @@ MACHINE_FEATURES_RRECOMMENDS = ""
 PREFERRED_PROVIDER_virtual/kernel ?= "linux-qoriq-sdk"
 PREFERRED_VERSION_virtual/kernel ?= "3.0.6"
 PREFERRED_PROVIDER_linux-libc-headers ?= "linux-qoriq-sdk-headers"
-PREFERRED_PROVIDER_linux-libc-headers-nativesdk ?= "linux-qoriq-sdk-headers-nativesdk"
 
 KERNEL_IMAGETYPE ?= "uImage"
 # disable the images below for now
-- 
1.7.9.5


