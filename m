Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-da0-f52.google.com (mail-da0-f52.google.com
	[209.85.210.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B273BE014CB
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 00:24:25 -0700 (PDT)
Received: by mail-da0-f52.google.com with SMTP id f10so92342dak.11
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 00:24:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:from:to:cc:subject:date:message-id:x-mailer:in-reply-to
	:references:x-gm-message-state;
	bh=wGefyt8cFCIhLBbdCjoZ1XbG+kXq2RwFxjcjYoeWDYA=;
	b=jtYSlnvUcxENSipR6Ms11rZxCiBIdNCXYxwhX6GfRUcF/Z6bdO5kZB4Hu4OUklSmyu
	rVqazTTJr+HbAZ2gaa+ny+kAhr2sduGnffV3hw0Og3Lscact4ggfsaFwiQWSDv7lpeto
	yTQBc5k0uU1EZtY2eUaKG+OougsB31CzS4+SQ3KK8kNqSESnwota0syg7pljEpx2FIC4
	RXpIUdh4vH6tk9Kg7IYcFYv2Flx2pHKoja0U1ZN5STAJRfnxXqu0r4bo4saWjErRenn2
	NStKXNPioIXlYAvXbRyeMUXGcieSHD3h3zyBCNTYQBgcHjzd/kr1iqeajKRx2W5ALL/t
	Z8Bg==
X-Received: by 10.66.121.104 with SMTP id lj8mr1989627pab.51.1365578665556;
	Wed, 10 Apr 2013 00:24:25 -0700 (PDT)
Received: from avartita.hsd1.or.comcast.net.
	(c-24-21-207-18.hsd1.or.comcast.net. [24.21.207.18])
	by mx.google.com with ESMTPS id t16sm5394105pbs.32.2013.04.10.00.24.24
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 10 Apr 2013 00:24:24 -0700 (PDT)
From: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
Date: Wed, 10 Apr 2013 00:23:43 -0700
Message-Id: <c0e08b39b16a8b690fa314e0215d148b3683ae31.1365578515.git.elizabeth.flanagan@intel.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1365578515.git.elizabeth.flanagan@intel.com>
References: <cover.1365578515.git.elizabeth.flanagan@intel.com>
X-Gm-Message-State: ALoCoQn/+C17N2E39IhNzUSpiINpJLybJN44H5w2o4EWetoZanZy8H+rv3tLhQ918Ircq4CHl3Ob
Subject: [PATCH 1/1] poky.conf: Flipping vars for dylan release
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
X-List-Received-Date: Wed, 10 Apr 2013 07:24:25 -0000

DISTRO/SDKVERSION etc need to be flipped for dylan. This
commit is valid only for the dylan branch.

Signed-off-by: Elizabeth Flanagan <elizabeth.flanagan@intel.com>
---
 meta-yocto/conf/distro/poky.conf |    7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/meta-yocto/conf/distro/poky.conf b/meta-yocto/conf/distro/poky.conf
index 538f343..b9c2758 100644
--- a/meta-yocto/conf/distro/poky.conf
+++ b/meta-yocto/conf/distro/poky.conf
@@ -1,9 +1,9 @@
 DISTRO = "poky"
-DISTRO_NAME = "Poky 8.0 (Yocto Project 1.3 Reference Distro)"
-DISTRO_VERSION = "1.3+snapshot-${DATE}"
+DISTRO_NAME = "Poky 9.0 (Yocto Project 1.4 Reference Distro)"
+DISTRO_VERSION = "1.4"
 DISTRO_CODENAME = "dylan"
 SDK_VENDOR = "-pokysdk"
-SDK_VERSION := "${@'${DISTRO_VERSION}'.replace('snapshot-${DATE}','snapshot')}"
+SDK_VERSION := "${@'${DISTRO_VERSION}'}"
 
 MAINTAINER = "Poky <poky@yoctoproject.org>"
 
@@ -70,6 +70,7 @@ CONNECTIVITY_CHECK_URIS ?= " \
              http://bugzilla.yoctoproject.org/report.cgi"
 
 SANITY_TESTED_DISTROS ?= " \
+            Yocto-1.3 \n \
             Yocto-1.2 \n \
             Poky-1.2 \n \
             Poky-1.3 \n \
-- 
1.7.9.5


