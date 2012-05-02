Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E7E2E00723
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 17:58:21 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 May 2012 17:58:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="138951537"
Received: from unknown (HELO envy.home) ([10.255.12.136])
	by orsmga002.jf.intel.com with ESMTP; 01 May 2012 17:58:20 -0700
Message-ID: <4FA0868C.5070902@linux.intel.com>
Date: Tue, 01 May 2012 17:57:48 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>, 
	Tom Zanussi <tom.zanussi@intel.com>
References: <cover.1335909082.git.dvhart@linux.intel.com>
In-Reply-To: <cover.1335909082.git.dvhart@linux.intel.com>
X-Enigmail-Version: 1.4.1
Subject: [PATCH 8/7] sys940x: Drop PREFERRED_VERSION for emgd driver
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
X-List-Received-Date: Wed, 02 May 2012 00:58:21 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

[and one more, also now on the contrib branch mentioned in 0/1]

Accept the default version of the emgd driver, 1.8 is no longer available
anyway. This avoids the warning about 1.8 not being available.

Signed-off-by: Darren Hart <dvhart@linux.intel.com>
---
 meta-sys940x/conf/machine/sys940x.conf |    1 -
 1 files changed, 0 insertions(+), 1 deletions(-)

diff --git a/meta-sys940x/conf/machine/sys940x.conf b/meta-sys940x/conf/machine/sys940x.conf
index 4b9b91d..58e2ba1 100644
--- a/meta-sys940x/conf/machine/sys940x.conf
+++ b/meta-sys940x/conf/machine/sys940x.conf
@@ -20,7 +20,6 @@ XSERVER ?= "${XSERVER_IA32_BASE} \
 PREFERRED_VERSION_xserver-xorg ?= "1.9.3"
 PREFERRED_VERSION_mesa-dri ?= "7.11"
 PREFERRED_VERSION_xf86-input-evdev ?= "2.6.0"
-PREFERRED_VERSION_emgd-driver-bin ?= "1.8"
 
 SERIAL_CONSOLE = "115200 ttyS0"
 APPEND += "console=ttyS0,115200 console=tty0"

