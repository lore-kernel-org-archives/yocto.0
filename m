Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5A6BE006B3
	for <yocto@yoctoproject.org>; Mon, 17 Feb 2014 07:00:53 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 17 Feb 2014 07:00:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,861,1384329600"; d="scan'208";a="476547345"
Received: from nithyasr-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.123.246])
	by fmsmga001.fm.intel.com with ESMTP; 17 Feb 2014 07:00:52 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Isak Lichtenstein <Isak.Lichtenstein@kistler.com>
Date: Mon, 17 Feb 2014 15:00:49 +0000
Message-ID: <2078236.vTA7uRNSFF@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.2 (Linux/3.12.10-300.fc20.x86_64; KDE/4.12.2; x86_64; ;
	)
In-Reply-To: <91B4C1B91AAEFD42AC985EA0F3D4E6684B31BBDB@kihagwinex01.int.kistler.com>
References: <91B4C1B91AAEFD42AC985EA0F3D4E6684B31BBDB@kihagwinex01.int.kistler.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Remove major version number from package name
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
X-List-Received-Date: Mon, 17 Feb 2014 15:01:01 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Isak,

On Monday 17 February 2014 14:45:24 Isak Lichtenstein wrote:
> I'm relatively new to yocto and open embedded.
> 
> I created a few library packages like libdsp for our DSP libraries.
> 
> Now when I list all installable packages for libdsp, I noticed that the main
> package gets the major version number added to its name: libdsp0
> 
> # opkg list | grep libdsp
> libdsp-dbg - 0.1-r26 - libdsp version 0.1-r26 - Debugging files  Board
> support library for the libdsp-dev - 0.1-r26 - libdsp version 0.1-r26 -
> Development files  Board support library for the libdsp-staticdev - 0.1-r26
> - libdsp version 0.1-r26 - Development files (Static Libraries)  Board
> libdsp-test - 0.1-r26 - libdsp version 0.1-r26  Board support library for
> the libdsp0 - 0.1-r26 - libdsp version 0.1-r26  Board support library for
> the
> 
> What can I add to my recipe to suppress the automatic addition of the major
> version number to the package name?

This is Debian-style library package naming, which we enable by default. If 
you don't want it for a particular recipe, you can remove it by setting 
DEBIAN_NOAUTONAME_${PN} = "1". You may also need to set this for the other 
packages in PACKAGES for the recipe, e.g. DEBIAN_NOAUTONAME_${PN}-dbg = "1", 
DEBIAN_NOAUTONAME_${PN}-dev = "1" etc.

If you want to turn it off everywhere, you'd need to set INHERIT_DISTRO such 
that it does not include "debian" in your custom distro config file.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

