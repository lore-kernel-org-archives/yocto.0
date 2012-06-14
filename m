Return-Path: <darren@apps.dvhart.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5E72E01408
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 22:19:37 -0700 (PDT)
Received: by mail-pb0-f48.google.com with SMTP id rq8so3951251pbb.35
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 22:19:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references:x-gm-message-state;
	bh=Dn8AW8t5/5y+JrmDWrdJHFInw8ak+MYANx6/iBMgYI8=;
	b=BIXUWpf+mTlIYvFIPIcao8QeT6DQkxgN0RNlncwh5DLEUL3sOeet/MdoruiYFV9H0o
	svtrNIvyBVauj4eitvjAYfxABdW3/nzkA7sRDwivucPwQAwSvqTyft/NYbHgNlfSWgQK
	Lh3bHlQvLGv2O2cXeEoMdIMQ3lRLdGz3tVgrv0XGH26Pv+Z5s9xW3H+rj9zBwqmPLBVM
	BefLN2AZpCf2PByNILmJ8UKt7dZvv39HJvAdmg6awL0UCgb4Fty53AP8MatJvfhUWdB5
	ALz9K3TLIlq2Nz5IIJzVuC9D0NtPhGPMf3N8wLqGoWc7/hcVK7AbiHavN6WM3F5SOz0n
	dZug==
Received: by 10.68.225.6 with SMTP id rg6mr3879270pbc.100.1339651177743;
	Wed, 13 Jun 2012 22:19:37 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id wi8sm8244093pbc.11.2012.06.13.22.19.36
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 13 Jun 2012 22:19:37 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>
Date: Wed, 13 Jun 2012 22:19:31 -0700
Message-Id: <efd98912c20662ad17a4b6e6fb35d8673d70c52c.1339650859.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1339650859.git.dvhart@linux.intel.com>
References: <cover.1339650859.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1339650859.git.dvhart@linux.intel.com>
References: <cover.1339650859.git.dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQkxXJChv5cEnmmohMhpmNl93EQ7hTQORpWRKVvB2VDmrS/GmpyNkjVeQI4J/vmBqwz/l9nG
Cc: Darren Hart <dvhart@linux.intel.com>
Subject: [PATCH 1/3] poky-tiny: Define the "tiny" DISTRO_FEATURE
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
X-List-Received-Date: Thu, 14 Jun 2012 05:19:37 -0000

Enable recipes such as busybox to modify their configuration based on
a DISTRO_FEATURE for tiny distributions.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-yocto/conf/distro/poky-tiny.conf |    6 ++----
 1 files changed, 2 insertions(+), 4 deletions(-)

diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
index a34c7dc..d6295f7 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -31,9 +31,6 @@
 require conf/distro/poky.conf
 DISTRO = "poky-tiny"
 
-# FIXME: consider adding a new "tiny" feature
-#DISTRO_FEATURES_append = " tiny"
-
 # Distro config is evaluated after the machine config, so we have to explicitly
 # set the kernel provider to override a machine config.
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-tiny"
@@ -84,7 +81,8 @@ DISTRO_FEATURES_USB = "usbhost"
 #DISTRO_FEATURES_USBGADGET = "usbgadget"
 #DISTRO_FEATURES_WIFI = "wifi"
 
-DISTRO_FEATURES = "${DISTRO_FEATURES_TINY} \
+DISTRO_FEATURES = "tiny \
+                   ${DISTRO_FEATURES_TINY} \
                    ${DISTRO_FEATURES_NET} \
                    ${DISTRO_FEATURES_USB} \
                    ${DISTRO_FEATURES_USBGADGET} \
-- 
1.7.5.4


