Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9CCEE0152B
	for <yocto@yoctoproject.org>; Tue, 23 Jul 2013 10:19:43 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 23 Jul 2013 10:17:07 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,729,1367996400"; d="scan'208";a="375204018"
Received: from unknown (HELO helios.localnet) ([10.252.122.157])
	by orsmga002.jf.intel.com with ESMTP; 23 Jul 2013 10:19:41 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Brian Hutchinson <b.hutchman@gmail.com>
Date: Tue, 23 Jul 2013 18:19:41 +0100
Message-ID: <4860044.KltMD8WHhS@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-26-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAFZh4h9-+XQBWxHh22zQ+jwQBYiaUwifzcdpLPF2kU+kn5Pg9A@mail.gmail.com>
References: <CAFZh4h9-+XQBWxHh22zQ+jwQBYiaUwifzcdpLPF2kU+kn5Pg9A@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Should I be worried about this nativesdk-packagegroup-sdk-host warning while building meta-toolchain
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
X-List-Received-Date: Tue, 23 Jul 2013 17:19:43 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Brian,

On Tuesday 23 July 2013 10:13:10 Brian Hutchinson wrote:
> WARNING: The recipe nativesdk-packagegroup-sdk-host is trying to install
> files into a shared area when those files already exist. Those files and
> their manifest location are:
> 
>  /home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-linu
> x/nativesdk-packagegroup-sdk-host Matched in
> manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata
> 
>  /home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-linu
> x/runtime/nativesdk-packagegroup-sdk-host.packaged Matched in
> manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata
> 
>  /home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-linu
> x/runtime/nativesdk-packagegroup-sdk-host Matched in
> manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata
> 
>  /home/hutch/yocto_master_beaglebone/poky/build/tmp/pkgdata/all-pokysdk-linu
> x/runtime-reverse/nativesdk-packagegroup-sdk-host Matched in
> manifest-x86_64-nativesdk-packagegroup-sdk-host.packagedata Please verify
> which package should provide the above files.
> 
> 
> Should I be worried or do I need to do something about the
> nativesdk-packagegroup-sdk-host warnings?
> 
> I've never seen them before and I couldn't find anyone else talking about
> them so I thought I'd ask.

Did you perhaps build meta-toolchain and then change MACHINE and build it 
again? What happened prior to this build?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

