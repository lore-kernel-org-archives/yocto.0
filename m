Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DF5BE011C0
	for <yocto@yoctoproject.org>; Mon,  1 Oct 2012 07:36:33 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 01 Oct 2012 07:36:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,517,1344236400"; d="scan'208";a="151110381"
Received: from unknown (HELO helios.localnet) ([10.252.122.40])
	by AZSMGA002.ch.intel.com with ESMTP; 01 Oct 2012 07:36:28 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Date: Mon, 01 Oct 2012 15:36:27 +0100
Message-ID: <2437778.YJDW3BfGOX@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.1 (Linux/3.2.0-31-generic-pae; KDE/4.9.1; i686; ; )
In-Reply-To: <70CC66F5C30A414DADDA6973E4CA391A6C4BCD@039-SN1MPN1-001.039d.mgd.msft.net>
References: <1716058.TZM8ukYCTx@helios> <2929338.Cetim2KrZW@helios>
	<70CC66F5C30A414DADDA6973E4CA391A6C4BCD@039-SN1MPN1-001.039d.mgd.msft.net>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Supported host distro updates
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
X-List-Received-Date: Mon, 01 Oct 2012 14:36:33 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 01 October 2012 14:21:47 McClintock Matthew-B29882 wrote:
> On Mon, Oct 1, 2012 at 3:00 AM, Paul Eggleton
> 
> <paul.eggleton@linux.intel.com> wrote:
> > On Monday 24 September 2012 19:03:57 McClintock Matthew-B29882 wrote:
> >> CentOS release 5.8 (Final)
> > 
> > OK, so do we keep 5.6 / 5.7 or remove them in favour of 5.8?
> 
> I don't think you can... each of these present different issues I've
> found and fixed along the way.

OK, I'll leave them in for the moment.

> >> Fedora release 13 (Goddard)
> > 
> > I think this is probably too old for us to be declaring support for, since
> > it has been unsupported upstream for some time now.
> 
> This has been working for me for a while (with a lot fewer issues to
> fix than CentOS 5.x) unless I'm missing something, I don't think it's
> too old.

I consider it too old because of its upstream support status, but also because 
broadly we commit to supporting N and N-1 (and usually N+1) where N is the 
most recent release of the distribution. Fedora 13 would be N-4.

Not having Fedora 13 (or any other distro or distro version, for that matter) 
in this list does not mean that you can't continue to use it, nor does it 
necessarily mean that we won't take patches to fix support for it should it 
break.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

