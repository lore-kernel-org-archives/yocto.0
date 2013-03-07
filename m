Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5422FE01506
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 06:36:06 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 07 Mar 2013 06:36:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,803,1355126400"; d="scan'208";a="273147176"
Received: from unknown (HELO helios.localnet) ([10.255.12.181])
	by orsmga001.jf.intel.com with ESMTP; 07 Mar 2013 06:36:04 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>
Date: Thu, 07 Mar 2013 14:36:04 +0000
Message-ID: <2959543.NlCbEYz43t@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10 (Linux/3.5.0-24-generic; KDE/4.10.0; i686; ; )
In-Reply-To: <CA+gsK-o81MjUVKjGBbbat0EGOm_Z+2ow+1rMvZ8Jdik9g++3JA@mail.gmail.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A5989BCAB@ORSMSX101.amr.corp.intel.com>
	<50F5C999.2020307@bsmucker.eu.org>
	<CA+gsK-o81MjUVKjGBbbat0EGOm_Z+2ow+1rMvZ8Jdik9g++3JA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Busybox still old version: Still looking for a clear understanding of an old mystery.
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
X-List-Received-Date: Thu, 07 Mar 2013 14:36:06 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 15 January 2013 15:28:25 Rudolf Streif wrote:
> What are you exactly referring to as "new version"? The package version
> that bitbake builds is defined by the recipe, through the version
> designation in the recipe's file name or through explicitly setting PV.
> 
> I think what you are trying to do is to modify the busybox configuration
> and then recompile and package. Bitbake will not automatically recompile
> after menuconfig. Menuconfig does not invslidate the shared state cache.

I think it possibly should though, since it does for the kernel.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

