Return-Path: <raj.khem@gmail.com>
Received: from mail-gh0-f176.google.com (mail-gh0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06A14E01444
	for <yocto@yoctoproject.org>; Thu,  5 Jul 2012 21:52:30 -0700 (PDT)
Received: by ghbz10 with SMTP id z10so9360712ghb.35
	for <yocto@yoctoproject.org>; Thu, 05 Jul 2012 21:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:in-reply-to:references;
	bh=IyN3I65EeIhebL/Wdo8Xek7aqDMNQbcPSrHzC0PWIfQ=;
	b=cmlytG7t0p0BkoMqkhEvs23ME3s6KIAD9fiFuUmddREBZ32Fx2VBhqdA/+wNoB9MfR
	kdH56rKIHd373u53ERKiA8y9vu72qZ+cDDHDW8k7YvlYEDo1nUTimD2lq9RU7ePFG6oN
	36fBCCQe/hp3bR6CTAfqWIwqr6LPPcdrS7ga+jzbhp49/uRzbj277M5DS4Nim/zSIYF8
	OUJiJo3HP1/z/2yrKybKhP/ilrF6RtH84j6f9vfFhnemXPpjSQEOF/YHgAT77hEAxzkw
	g5+k/ZK1W3iM4AQxj1zX8FMBTfgJT5OdCaXGFBqlEMWzpajX/cn2GpQqOKz+FeTKhY6d
	UzkA==
Received: by 10.66.72.225 with SMTP id g1mr42771578pav.3.1341550349518;
	Thu, 05 Jul 2012 21:52:29 -0700 (PDT)
Received: from agate.agate.openembedded.org (oldbuilder.nslu2-linux.org.
	[140.211.169.168])
	by mx.google.com with ESMTPS id iv8sm21098494pbc.53.2012.07.05.21.52.27
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 05 Jul 2012 21:52:28 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  5 Jul 2012 21:51:55 -0700
Message-Id: <1341550315-9795-2-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <1341550315-9795-1-git-send-email-raj.khem@gmail.com>
References: <1341550315-9795-1-git-send-email-raj.khem@gmail.com>
Subject: [meta-fsl-ppc][PATCH 2/2] fsl.conf: Let linux-qoriq-sdk-headers-nativesdk provide linux-libc-headers-nativesdk
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
X-List-Received-Date: Fri, 06 Jul 2012 04:52:31 -0000

If not set by user then let distro policy be to use
linux-qoriq-sdk-headers-nativesdk for linux-libc-headers-nativesdk

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 conf/distro/fsl.conf |    1 +
 1 file changed, 1 insertion(+)

diff --git a/conf/distro/fsl.conf b/conf/distro/fsl.conf
index 6d4dc34..8bfb272 100644
--- a/conf/distro/fsl.conf
+++ b/conf/distro/fsl.conf
@@ -83,6 +83,7 @@ IMAGE_CLASSES = "image_types_uboot"
 
 PREFERRED_VERSION_u-boot-mkimage-native_powerpc = "2011.06"
 PREFERRED_PROVIDER_virtual/libx11 = "libx11"
+PREFERRED_PROVIDER_linux-libc-headers-nativesdk ?= "linux-qoriq-sdk-headers-nativesdk"
 
 SYSVINIT_ENABLED_GETTYS = ""
 USE_VT = ""
-- 
1.7.9.5


