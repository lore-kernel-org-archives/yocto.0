Return-Path: <ross.burton@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA53FE00348
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 09:08:30 -0700 (PDT)
Received: from mail-we0-f200.google.com ([74.125.82.200])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 30 Oct 2012 09:08:30 -0700
Received: by mail-we0-f200.google.com with SMTP id t11so340535wey.11
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2012 09:08:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=from:to:cc:subject:date:message-id:x-mailer:x-gm-message-state;
	bh=HQofjJ4/EMPYbHg7Ogr14q8XxOaiXLZH/jvcO6Of7uo=;
	b=Lmd5SfmN9NAJGb4Z0McR6waoPyoK7LvYecDYRJle2PLe3kFVZBLmzW90Naxni2K2QU
	WS+vpOWKMTziIv63J9ZOoeEUY1ScT+31z7pgUQmn5Jlvzsx2Y6AuaysKbxd9oCXgX02a
	LSLPl6R5ckjW4CS/kkaDksputL9qdNtEFBFkbX8IUI13wUsd6JOiHLns+BxCvv5A2HY7
	ZdeN8dO3bRcRizcmfI+V5MgHUytuGMB4hLv7hlKG9oauY+0SIl0hIxVkEcO04FKKMHvL
	NtuHPyiEq+hyOs50G0d+s0yHbplpHchTRFIMxkEdzmDPpCH6l5ckIInUixRRu4KHLybT
	yglw==
Received: by 10.180.102.131 with SMTP id fo3mr3832309wib.1.1351613308334;
	Tue, 30 Oct 2012 09:08:28 -0700 (PDT)
Received: by 10.180.102.131 with SMTP id fo3mr3832291wib.1.1351613308125;
	Tue, 30 Oct 2012 09:08:28 -0700 (PDT)
Received: from melchett.burtonini.com (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id j8sm14474626wiy.9.2012.10.30.09.08.26
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 30 Oct 2012 09:08:27 -0700 (PDT)
From: Ross Burton <ross.burton@intel.com>
To: kishore.k.bodke@intel.com
Date: Tue, 30 Oct 2012 16:07:13 +0000
Message-Id: <1351613233-2977-1-git-send-email-ross.burton@intel.com>
X-Mailer: git-send-email 1.7.10
X-Gm-Message-State: ALoCoQk6H+1i/ZBXfWwnh2qCs0U1XDnZOJUyG4rlSjBEFDGZw7s/BE6FXHcLkmyWqoytDl0hUb88WIu5VHRT9batMaeERBheCOvuCvfKS1DGc3bY9z82/NxFLBAPjoO1/7inaaobtTFabmnhQSbRwTGupihyURu0BA==
Cc: yocto@yoctoproject.org
Subject: [PATCH] meta-cedartrail: bump mesa-dri preferred version to 8.04
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
X-List-Received-Date: Tue, 30 Oct 2012 16:08:31 -0000

There isn't a 7.11 anywhere for it to build, so use 8.04.

Signed-off-by: Ross Burton <ross.burton@intel.com>
---
 meta-cedartrail/conf/machine/cedartrail.conf |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cedartrail/conf/machine/cedartrail.conf b/meta-cedartrail/conf/machine/cedartrail.conf
index 7efe584..aa2a46a 100644
--- a/meta-cedartrail/conf/machine/cedartrail.conf
+++ b/meta-cedartrail/conf/machine/cedartrail.conf
@@ -17,7 +17,7 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
            "
 PREFERRED_VERSION_linux-yocto ?= "3.0%"
 PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
-PREFERRED_VERSION_mesa-dri ?= "7.11"
+PREFERRED_VERSION_mesa-dri ?= "8.04"
 PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
 
 SYSLINUX_OPTS = "serial 0 115200"
-- 
1.7.10


