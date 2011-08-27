Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7E0AAE00777
	for <yocto@yoctoproject.org>; Sat, 27 Aug 2011 16:30:01 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 27 Aug 2011 16:30:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.68,291,1312182000"; d="scan'208";a="11707544"
Received: from unknown (HELO [10.255.13.254]) ([10.255.13.254])
	by AZSMGA002.ch.intel.com with ESMTP; 27 Aug 2011 16:30:00 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Sat, 27 Aug 2011 18:29:44 -0500
Message-ID: <1314487784.8545.14.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Subject: [PATCH] meta-crownbay: prefer mesa version 7.8 for bernard
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
X-List-Received-Date: Sat, 27 Aug 2011 23:30:01 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

bernard uses emgd 1.5, which requires mesa 7.8.  It was inadvertently
picking up 7.10 instead - we need to explicitly specify 7.8.

Fixes [YOCTO #971]

Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
---
 meta-crownbay/conf/machine/crownbay.conf |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/meta-crownbay/conf/machine/crownbay.conf b/meta-crownbay/conf/machine/crownbay.conf
index 4591842..b1f95af 100644
--- a/meta-crownbay/conf/machine/crownbay.conf
+++ b/meta-crownbay/conf/machine/crownbay.conf
@@ -30,6 +30,7 @@ XSERVER ?= "xserver-xf86-emgd \
 
 PREFERRED_VERSION_xserver-xf86-emgd ?= "1.7.99.2"
 PREFERRED_VERSION_xserver-xf86-emgd-bin ?= "1.7.99.2"
+PREFERRED_VERSION_mesa-dri ?= "7.8.2"
 
 SERIAL_CONSOLE = "115200 ttyS0"
 
-- 
1.7.0.4




