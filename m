Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35331E0141C
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2012 14:51:01 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 21 Nov 2012 14:51:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,295,1352102400"; d="scan'208";a="171182769"
Received: from unknown (HELO helios.localnet) ([10.252.122.211])
	by AZSMGA002.ch.intel.com with ESMTP; 21 Nov 2012 14:50:59 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Wed, 21 Nov 2012 22:50:58 +0000
Message-ID: <2124581.mHRnlHMV84@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.3 (Linux/3.2.0-33-generic-pae; KDE/4.9.3; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1211211718070.14208@oneiric>
References: <alpine.DEB.2.02.1211211718070.14208@oneiric>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: inconsistent pages out there for setting up your yocto dev host
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
X-List-Received-Date: Wed, 21 Nov 2012 22:51:01 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 21 November 2012 17:23:56 Robert P. J. Day wrote:
>   i've noticed there are various web pages purporting to explain how
> to set up a proper OE/yocto development host, but they give what is
> pretty clearly contradictory information.
> 
>   as one example, there's this page on getting started with OE:
> 
> http://www.openembedded.org/wiki/Getting_started

I produced this page recently; FWIW I also came up with the pared-down package 
lists that went into the Quick Start Guide which this page borrows. How is 
this contradictory if it uses the same information?

> that claims to steal from a number of sources including the yocto QS
> guide, but look at the packages one is instructed to install on that
> page, particularly under fedora: python, perl, git, and so on.

So I don't recall exactly how perl got on that list; but python and git are 
absolutely required on the host. That's why they're in ASSUME_PROVIDED.

>   as i read it, the sanity.bbclass and ASSUME_PROVIDED will dictate
> what needs to be there and what will be used if it's installed
> natively, no?  it certainly seems that that wiki page is insructing
> the developer to install a lot of software that OE will handle
> automatically, no?

Er, no. Well, if by "handle automatically" you mean "error out when they are 
not present" then that's not very helpful - it's much easier if people just 
get a list of what they need to install up front.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

