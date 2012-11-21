Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AC6CFE00294
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2012 15:45:36 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 21 Nov 2012 15:45:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.83,295,1352102400"; d="scan'208";a="171196348"
Received: from unknown (HELO helios.localnet) ([10.252.122.211])
	by AZSMGA002.ch.intel.com with ESMTP; 21 Nov 2012 15:45:27 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Date: Wed, 21 Nov 2012 23:45:26 +0000
Message-ID: <1480713.ustzgh0ezL@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.3 (Linux/3.2.0-33-generic-pae; KDE/4.9.3; i686; ; )
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946AC664C@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1211211718070.14208@oneiric>
	<2124581.mHRnlHMV84@helios>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946AC664C@ORSMSX101.amr.corp.intel.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 21 Nov 2012 23:45:36 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 21 November 2012 23:01:22 Rifenbark, Scott M wrote:
> >-----Original Message-----
> >From: yocto-bounces@yoctoproject.org [mailto:yocto-
> >bounces@yoctoproject.org] On Behalf Of Paul Eggleton
> >Sent: Wednesday, November 21, 2012 2:51 PM
> >To: Robert P. J. Day
> >Cc: yocto@yoctoproject.org
> >Subject: Re: [yocto] inconsistent pages out there for setting up your
> >yocto dev host
> >
> >On Wednesday 21 November 2012 17:23:56 Robert P. J. Day wrote:
> >>   i've noticed there are various web pages purporting to explain how
> >> 
> >> to set up a proper OE/yocto development host, but they give what is
> >> pretty clearly contradictory information.
> >> 
> >>   as one example, there's this page on getting started with OE:
> >> http://www.openembedded.org/wiki/Getting_started
> >
> >I produced this page recently; FWIW I also came up with the pared-down
> >package
> >lists that went into the Quick Start Guide which this page borrows. How
> >is
> >this contradictory if it uses the same information?
> >
> >> that claims to steal from a number of sources including the yocto QS
> >> guide, but look at the packages one is instructed to install on that
> >> page, particularly under fedora: python, perl, git, and so on.
> >
> >So I don't recall exactly how perl got on that list; but python and git
> >are
> >absolutely required on the host. That's why they're in ASSUME_PROVIDED.
> 
> Paul - Should I remove perl from the essentials list for fedora and centos?

Let's leave it there for the moment - you can't have git installed on either 
distro without perl anyway so it's not going to make too much difference.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

