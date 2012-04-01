Return-Path: <darren@apps.dvhart.com>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65293E013C2
	for <yocto@yoctoproject.org>; Sun,  1 Apr 2012 00:23:35 -0700 (PDT)
Received: by mail-pz0-f41.google.com with SMTP id x4so1345600daj.28
	for <yocto@yoctoproject.org>; Sun, 01 Apr 2012 00:23:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=sender:from:to:subject:date:message-id:x-mailer:in-reply-to
	:references:in-reply-to:references:x-gm-message-state;
	bh=NnNsvmuz+fQDvJdXI3kEQY/odqhy8eSvuLB3zTPffqY=;
	b=RflMO8eeFhiIjN2vis65SDgpmbnaEmi0Q97HzwgSEDX5LyEQ9Tn7xqE665KvB33yWw
	ZOxRtMjecAc95GmM9L1nqTB79vWqFQos4E2lUnePo8qv2fXYXQab52KWsOUkP6Q32Xcu
	60BsE/Ka42Nx2mMeK4Y2qzZx/USNqYOhwjWGDJkmN3I31Y0Q60BadVOZxlmybZPBs4oK
	tBUHK4WtVtmouBtOFhjz4YddipfGT53s081Q1dchDzD5Q7lVjnXr7wPHIhiJz2UwXGp1
	SXYxthTdecRnPepYrBBjit9XraG2NtcnVyvNJzwtmgTCC6UFoKUltug9Hfeienp8g4Qf
	Cspg==
Received: by 10.68.72.138 with SMTP id d10mr11259116pbv.15.1333265015286;
	Sun, 01 Apr 2012 00:23:35 -0700 (PDT)
Received: from localhost (static-50-53-99-101.bvtn.or.frontiernet.net.
	[50.53.99.101])
	by mx.google.com with ESMTPS id l4sm11334203pbl.27.2012.04.01.00.23.33
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 01 Apr 2012 00:23:34 -0700 (PDT)
Sender: Darren Hart <darren@apps.dvhart.com>
From: Darren Hart <dvhart@linux.intel.com>
To: Yocto Project <yocto@yoctoproject.org>,
	Richard Purdie <richard.purdie@linuxfoundation.org>,
	Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Sun,  1 Apr 2012 00:23:24 -0700
Message-Id: <70e59c06150646b60bff8f23edb359d941f407ae.1333264933.git.dvhart@linux.intel.com>
X-Mailer: git-send-email 1.7.5.4
In-Reply-To: <cover.1333264933.git.dvhart@linux.intel.com>
References: <cover.1333264933.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1333264933.git.dvhart@linux.intel.com>
References: <cover.1333264933.git.dvhart@linux.intel.com>
X-Gm-Message-State: ALoCoQnCfr5zn8BlOCwRyPMUYg2R6nMOZgyYkZbJ1igHi6+8zYq96O4XZcXOBvbR1nRgv9yzkDB5
Subject: [PATCH 1/1] linux-yocto-tiny: Prefer 3.2
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
X-List-Received-Date: Sun, 01 Apr 2012 07:23:35 -0000

With the move to 3.2 from 3.0 in oe-core, the 3.0 no longer exists.
Prefer 3.2 instead.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-yocto/conf/distro/poky-tiny.conf |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/meta-yocto/conf/distro/poky-tiny.conf b/meta-yocto/conf/distro/poky-tiny.conf
index 6fa4c90..395c6fb 100644
--- a/meta-yocto/conf/distro/poky-tiny.conf
+++ b/meta-yocto/conf/distro/poky-tiny.conf
@@ -37,7 +37,7 @@ DISTRO = "poky-tiny"
 # Distro config is evaluated after the machine config, so we have to explicitly
 # set the kernel provider to override a machine config.
 PREFERRED_PROVIDER_virtual/kernel = "linux-yocto-tiny"
-PREFERRED_VERSION_linux-yocto-tiny = "3.0%"
+PREFERRED_VERSION_linux-yocto-tiny = "3.2%"
 
 # We can use task-core-boot, but in the future we may need a new task-core-tiny
 #POKY_DEFAULT_EXTRA_RDEPENDS += "task-core-boot"
-- 
1.7.5.4


