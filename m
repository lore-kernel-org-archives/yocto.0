Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93F17E014D3
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2013 06:35:38 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 24 Apr 2013 06:35:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,542,1363158000"; d="scan'208";a="231453333"
Received: from unknown (HELO helios.localnet) ([10.255.13.249])
	by AZSMGA002.ch.intel.com with ESMTP; 24 Apr 2013 06:35:33 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Diego Santa Cruz <Diego.SantaCruz@spinetix.com>
Date: Wed, 24 Apr 2013 14:35:32 +0100
Message-ID: <3875695.6MzV3H4rrf@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.5.0-27-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <5177D5CB.8060706@windriver.com>
References: <364D31930BDB974AB40E22C5C2E584ED011E6155@asterix.SPINETIX.local>
	<5177D5CB.8060706@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: About running old kernels with Yoctoo 1.2 or 1.3
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
X-List-Received-Date: Wed, 24 Apr 2013 13:35:38 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 24 April 2013 08:53:31 Bruce Ashfield wrote:
> On 13-04-24 06:46 AM, Diego Santa Cruz wrote:
> > We are starting the development of a product based on TI DM814x SoC and
> > considering using Yocto to base our development on.
> > 
> > Unfortunately, TI does has only included support for this SoC on a
> > derivative of the 2.6.37 kernel and has not pushed the SoC specifics
> > upstream to mainline, so we are stuck to use that kernel as we cannot
> > engage in porting all the support to a newer kernel at this time.
> > 
> > I am new to Yocto, but as far as I got from the documentation versions 1.2
> > and 1.3 use a 3.4 kernel as the supported kernel. Would Yocto work with a
> > 2.6.37 kernel or are new features that have been introduced in newer
> > kernel
> > version required to run Yocto 1.2 or 1.3?
> 
> Each Yocto release uses a sliding set of kernel's that have had at least
> some level of testing with the associated userspace of the release.
> 
>   1.4 is: 3.2, 3.4 and 3.8
>   1.3 was: 3.4, 3.2 and 3.0
>   1.2 was: 3.2, 3.0 and 2.6.37
> 
> But obviously, the linux kernel has a very stable userspace ABI, so there
> shouldn't be any big compatibility issues with other kernel versions.
> It's just that we don't know for sure.
> 
> It is true that each of these releases with have a linux-libc-headers
> that is newer than the 2.6.x kernel you are talking about, which could
> expose syscalls or other interfaces to userspace that aren't supported
> in your kernel, but this typically degrades gracefully and the issue
> detected when you try your applications.

The usual problematic components are those that rely heavily upon the kernel 
e.g. udev and systemd. For such components you may find you need to downgrade 
or avoid them altogether; most of userspace should work just fine with an older 
kernel though.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

