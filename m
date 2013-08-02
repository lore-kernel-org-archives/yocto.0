Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA95DE003D3
	for <yocto@yoctoproject.org>; Fri,  2 Aug 2013 09:29:30 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 02 Aug 2013 09:26:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,802,1367996400"; d="scan'208";a="356341630"
Received: from unknown (HELO helios.localnet) ([10.252.122.201])
	by orsmga001.jf.intel.com with ESMTP; 02 Aug 2013 09:29:28 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Date: Fri, 02 Aug 2013 17:29:27 +0100
Message-ID: <29267744.MPX6MP22Kv@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <91586D499ADFD74FBCFB8425266A5DE40153ADA9D49E@pluto.melinkcorp.local>
References: <91586D499ADFD74FBCFB8425266A5DE4013B910EC9FD@pluto.melinkcorp.local>
	<CALmOhg=kywWNAFeKac4kVT-f9QBTjKjV0Uqzr7it2Go5imO56g@mail.gmail.com>
	<91586D499ADFD74FBCFB8425266A5DE40153ADA9D49E@pluto.melinkcorp.local>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Creating a core-image-minimal image with package support
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
X-List-Received-Date: Fri, 02 Aug 2013 16:29:31 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 01 August 2013 14:51:27 Bryan Evenson wrote:
> Trevor Woerner wrote:
> > Bryan Evenson wrote:
> > > What more do I need to add to the image recipe so that the image
> > > knows what packages were installed on it?  And what do I need to add so
> > > that the /var/lib/opkg directory is created?
> > 
> > Without "package-management" in the configuration opkg is not installed
> > in the image (as expected). However, with "package-management" in the
> > configuration the opkg tools are installed in the image, but
> > /var/lib/opkg is still empty and the "$ opkg list"
> > command returns empty.
> 
> I'm also working off of poky/dylan.  I added "opkg opkg-collateral" to the
> IMAGE_INSTALL variable, in addition to having the "package-management"
> feature in IMAGE_FEATURES.  With that setup, my image contains opkg and has
> the list of packages installed.

Er, I'm a bit confused. Weren't you already doing this in your original 
example? Is this a case where it fails in danny but not in dylan?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

