Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6FF17E00723
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 03:49:22 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 May 2012 03:49:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="139587189"
Received: from unknown (HELO helios.localnet) ([10.252.120.59])
	by orsmga002.jf.intel.com with ESMTP; 03 May 2012 03:49:10 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Elvis Dowson <elvis.dowson@gmail.com>, yocto@yoctoproject.org
Date: Thu, 03 May 2012 11:49:08 +0100
Message-ID: <3705393.MBXsxixX8C@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.2 (Linux/3.0.0-19-generic-pae; KDE/4.8.2; i686; ; )
In-Reply-To: <44738C6D-691F-4F6D-ACCC-11A51F9CE4B2@gmail.com>
References: <44738C6D-691F-4F6D-ACCC-11A51F9CE4B2@gmail.com>
MIME-Version: 1.0
Subject: Re: Is it necessary to specify TARGET_ARM = "arm" ?
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
X-List-Received-Date: Thu, 03 May 2012 10:49:22 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 03 May 2012 12:42:24 Elvis Dowson wrote:
> Hi,
>       If in my overo.inc file, I specify the following:
> 
> SOC_FAMILY = "omap3"
> require conf/machine/include/soc-family.inc
> 
> require conf/machine/include/omap3.inc
> require conf/machine/include/tune-cortexa8.inc
> 
> Is it necessary to specify TARGET_ARCH = "arm"  for the machine
> configuration?

This already comes in via omap3.inc, so you don't need to do this in your 
machine config.

Also, it's worth noting that in current meta-ti master you don't need to 
require tune-cortexa8.inc either since omap3.inc does this too (unless you're 
wanting to support use with an older version of the meta-ti layer).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

