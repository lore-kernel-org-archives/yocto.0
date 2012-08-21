Return-Path: <ross.burton@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC58FE0044A
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2012 03:46:48 -0700 (PDT)
Received: from mail-we0-f180.google.com ([74.125.82.180])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 21 Aug 2012 03:46:48 -0700
Received: by weyt11 with SMTP id t11so4055791wey.25
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2012 03:46:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=jMeQWTlqIOP3C+cxO4JlPofgP3VClNo83oYe6fvYt0c=;
	b=TCB5FSqhrc469YFMAND7so9F5s0D8Il2i3d0s8NV6fbO42hxAX1KdsWNcV7f4dx35c
	Gttrb58YyQ6HrJIEstOFef+DbPY+TY4bEKLfKaGy51I5cmLtt6DHFh+grGlz+7Vq8XRA
	jo7LbOVdJK5eJnUSyA8o4xNjBw+CnoHlmF5jvsc6qmj7chpnn2Xupuq22VtuBrs9/Hfj
	BKBBNUUtLKnfdmIiY2FZrsiyA83K5fwj4SpyxTxRl6htOM+94EcZ6gSwyu/AxUAcwIOW
	vvsezi87klpSsIWt5LMKKoBpyVRujTArognFrd1fnypqWlaS/HjLIychnE4LFQSFEnZv
	w3Dw==
Received: by 10.216.138.92 with SMTP id z70mr8725128wei.68.1345546006587;
	Tue, 21 Aug 2012 03:46:46 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id el6sm33042632wib.8.2012.08.21.03.46.45
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 21 Aug 2012 03:46:45 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: yocto@yoctoproject.org
Date: Tue, 21 Aug 2012 11:46:07 +0100
Message-Id: <1345545967-1386-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
X-Gm-Message-State: ALoCoQmSv5P8q2xp7Jx5AI3a9ijG6RIRj8QrQDCv81h89rRMLgCCGWYL+HQuKUToOMHxHyvReKP8
Subject: [PATCH] meta-emenlow: unset preferred providers for virtual/libgles[12]
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
X-List-Received-Date: Tue, 21 Aug 2012 10:46:49 -0000

The recent changes to enable GLES/EGL in mesa-dri have caused emenlow to fail:

ERROR: Trying to resolve runtime dependency libglu resulted in conflicting PREFERRED_PROVIDER entries being found.
The providers found were: ['/srv/home/pokybuild/yocto-autobuilder/yocto-slave/emenlow/build/yocto/meta-intel/meta-emenlow/recipes-graphics/xpsb-glx/xpsb-glx_0.18.bb', '/srv/home/pokybuild/yocto-autobuilder/yocto-slave/emenlow/build/meta/recipes-graphics/mesa/mesa-dri_8.0.4.bb']
The PREFERRED_PROVIDER entries resulting in this conflict were: ['PREFERRED_PROVIDER_mesa-dri = xpsb-glx', 'PREFERRED_PROVIDER_virtual/libgles1 = mesa-dri']

Because emenlow's xpsb-glx contains mesa, it needs to entirely replace
mesa-dri. We'd normally set virtual/libgles1 and virtual/libgles2 to xpsb-glx
but these drivers don't build the GLES libraries so that would be a lie.

So, unset the preferred provider entries so that bitbake doesn't look at
mesa-dri at all.
---
 meta-emenlow/conf/machine/emenlow.conf |    2 ++
 1 file changed, 2 insertions(+)

diff --git a/meta-emenlow/conf/machine/emenlow.conf b/meta-emenlow/conf/machine/emenlow.conf
index afb3866..65dcd5a 100644
--- a/meta-emenlow/conf/machine/emenlow.conf
+++ b/meta-emenlow/conf/machine/emenlow.conf
@@ -13,6 +13,8 @@ PREFERRED_PROVIDER_libdrm = "libdrm-poulsbo"
 PREFERRED_PROVIDER_drm = "libdrm-poulsbo"
 PREFERRED_PROVIDER_virtual/libx11 = "libx11-trim"
 PREFERRED_PROVIDER_virtual/libgl = "xpsb-glx"
+PREFERRED_PROVIDER_virtual/libgles1 = ""
+PREFERRED_PROVIDER_virtual/libgles2 = ""
 PREFERRED_PROVIDER_virtual/xserver = "xserver-psb"
 PREFERRED_PROVIDER_virtual/xserver-xf86 = "xserver-psb"
 PREFERRED_PROVIDER_mesa-dri = "xpsb-glx"
-- 
1.7.10


