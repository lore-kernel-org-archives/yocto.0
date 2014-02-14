Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF40AE007B6;
	Fri, 14 Feb 2014 09:26:33 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 14 Feb 2014 09:25:41 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,845,1384329600"; d="scan'208";a="481669067"
Received: from pas9-mobl2.gar.corp.intel.com (HELO [10.254.185.145])
	([10.254.185.145])
	by fmsmga002.fm.intel.com with ESMTP; 14 Feb 2014 09:25:09 -0800
User-Agent: Microsoft-MacOutlook/14.3.9.131030
Date: Fri, 14 Feb 2014 09:25:32 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: Koen Kooi <koen@dominion.thruhere.net>, <meta-intel@lists.yoctoproject.org>
Message-ID: <CF23915D.6D6B7%dvhart@linux.intel.com>
Thread-Topic: [meta-intel] [common][dora][PATCH] emgd-driver-bin: limit build
	to x86*
References: <1392391313-2901-1-git-send-email-koen@dominion.thruhere.net>
In-Reply-To: <1392391313-2901-1-git-send-email-koen@dominion.thruhere.net>
Mime-version: 1.0
Cc: yocto@lists.yoctoproject.org
Subject: Re: [meta-intel] [common][dora][PATCH] emgd-driver-bin: limit build to x86*
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
X-List-Received-Date: Fri, 14 Feb 2014 17:26:34 -0000
Content-type: text/plain;
	charset="US-ASCII"
Content-transfer-encoding: 7bit

On 2/14/14, 7:21, "Koen Kooi" <koen@dominion.thruhere.net> wrote:

>When building GL apps for non-x86 machines (e.g. raspberrypi)
>emgd-driver-bin is being
>dragged in as a valid provider. To avoid build breakage fix it at the
>source by limiting emgd-driver-bin to x86 architectures.
>
>Signed-off-by: Koen Kooi <koen@dominion.thruhere.net>
>---
> common/recipes-graphics/xorg-driver/emgd-driver-bin_1.16.bb | 2 ++
> common/recipes-graphics/xorg-driver/emgd-driver-bin_1.18.bb | 2 ++
> 2 files changed, 4 insertions(+)
>
>diff --git a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.16.bb
>b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.16.bb
>index c8ca726..8cb088e 100644
>--- a/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.16.bb
>+++ b/common/recipes-graphics/xorg-driver/emgd-driver-bin_1.16.bb
>@@ -9,6 +9,8 @@ LICENSE = "Intel-software-license-emgd-1.16 &
>Intel-user-space-graphics-driver-b
> LICENSE_FLAGS = "license_${PN}_${PV}"
> PR = "r0"
> 
>+COMPATIBLE_HOST = "(i.86|x86_64).*-linux"

And you can drop the x86_64 as well as this is a 32bit only driver.

-- 
Darren Hart
Yocto Project - Linux Kernel
Intel Open Source Technology Center





