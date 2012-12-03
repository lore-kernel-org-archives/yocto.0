Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D764EE00770
	for <yocto@yoctoproject.org>; Mon,  3 Dec 2012 02:34:15 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 03 Dec 2012 02:34:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,205,1355126400"; d="scan'208";a="258163900"
Received: from unknown (HELO helios.localnet) ([10.252.122.191])
	by fmsmga002.fm.intel.com with ESMTP; 03 Dec 2012 02:34:14 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Mon, 03 Dec 2012 10:34:13 +0000
Message-ID: <5274191.3YuTQ9B7sW@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.3 (Linux/3.5.0-18-generic; KDE/4.9.3; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1212030315220.6264@oneiric>
References: <50BBDB70.2040803@intel.com> <2546786.VL41nEahXp@helios>
	<alpine.DEB.2.02.1212030315220.6264@oneiric>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Use of BBPATH in a layer.conf file.
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
X-List-Received-Date: Mon, 03 Dec 2012 10:34:16 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 03 December 2012 03:16:10 Robert P. J. Day wrote:
> On Sun, 2 Dec 2012, Paul Eggleton wrote:
> > On Sunday 02 December 2012 15:35:54 you wrote:
> > > On 12/02/2012 03:24 PM, Paul Eggleton wrote:
> > > > On Sunday 02 December 2012 14:51:28 Scott Garman wrote:
> > > >> Robert Day has brought up an inconsistency in the way we append to
> > > >> BBPATH within a couple of our layer.conf files.
> > > >> 
> > > >> In meta-hob, meta-yocto-bsp, and meta-intel, we do:
> > > >> 
> > > >> BBPATH := "${BBPATH}:${LAYERDIR}"
> > > >> 
> > > >> but in meta-yocto, we do:
> > > >> 
> > > >> BBPATH := "${LAYERDIR}:${BBPATH}"
> > > >> 
> > > >> Unless someone explains to me that it's necessary to use this
> > > >> different
> > > >> ordering in meta-yocto's layer.conf, I will submit a patch to make
> > > >> this
> > > >> more consistent.
> > > > 
> > > > I think it actually ought to be:
> > > > 
> > > > BBPATH .= ":${LAYERDIR}"
> > > 
> > > Oh? Would this apply just to meta-yocto or all layer.conf files?
> > 
> > All, really. Functionally it makes no real difference, but I think it's
> > preferred stylistically based on previous discussions.
> 
>   hang on ... i thought the ordering of BBPATH would affect the
> processing of "include" directives.  no?

Yes, it does. What I mean is, functionally _within layer.conf_ the following 
two are equivalent:

BBPATH := "${BBPATH}:${LAYERDIR}"

BBPATH .= ":${LAYERDIR}"

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

