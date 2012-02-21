Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 279B0E0044B
	for <yocto@yoctoproject.org>; Tue, 21 Feb 2012 09:37:22 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 21 Feb 2012 09:37:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="127796227"
Received: from unknown (HELO helios.localnet) ([10.252.123.19])
	by fmsmga002.fm.intel.com with ESMTP; 21 Feb 2012 09:37:20 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Tue, 21 Feb 2012 17:37:19 +0000
Message-ID: <3649674.1xRD95lOgH@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.0 (Linux/3.0.0-16-generic-pae; KDE/4.8.0; i686; ; )
In-Reply-To: <4F4380AA.2010401@linux.intel.com>
References: <4F4380AA.2010401@linux.intel.com>
MIME-Version: 1.0
Subject: Re: Issue building meta-toolchain
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
X-List-Received-Date: Tue, 21 Feb 2012 17:37:22 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 21 February 2012 11:31:54 John Toomey wrote:
> I am getting the following error when trying to build meta-toolchain:
> 
>     NOTE: Resolving any missing task queue dependencies
>     ERROR: Nothing PROVIDES 'libx11-nativesdk' (but
>    
> virtual:nativesdk:[path]/jtoomey/poky/meta/recipes-graphics/libsdl/libsdl_1
> .2.14.bb DEPENDS on or otherwise requires it)
>     ERROR: libx11-nativesdk was skipped: X11 not enabled for this DISTRO
>     NOTE: Runtime target 'qemu-nativesdk' is unbuildable, removing...
>     Missing or unbuildable dependency chain was: ['qemu-nativesdk',
>     'libsdl-nativesdk', 'libx11-nativesdk']
>     NOTE: Runtime target 'task-sdk-host-nativesdk' is unbuildable,
>     removing...
>     Missing or unbuildable dependency chain was:
>     ['task-sdk-host-nativesdk', 'qemu-nativesdk', 'libsdl-nativesdk',
>     'libx11-nativesdk']
>     ERROR: Required build target 'meta-toolchain' has no buildable
>     providers.
>     Missing or unbuildable dependency chain was: ['meta-toolchain',
>     'task-sdk-host-nativesdk', 'qemu-nativesdk', 'libsdl-nativesdk',
>     'libx11-nativesdk']
> 
> I dont really need or want X11 but the toolchain seems to depend on
> parts of it.

I'm guessing this is because we haven't tested building meta-toolchain when 
x11 has been removed from DISTRO_FEATURES; at minimum it seems we would need 
to fix the libsdl recipe to be able to build without libx11 when x11 is not in 
DISTRO_FEATURES.

Would you mind filing a bug for this in the Yocto Project bugzilla 
(http://bugzilla.yoctoproject.org)?

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

