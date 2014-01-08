Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B0B6E0082D
	for <yocto@yoctoproject.org>; Wed,  8 Jan 2014 07:39:07 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 08 Jan 2014 07:35:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,625,1384329600"; d="scan'208";a="463559565"
Received: from unknown (HELO helios.localnet) ([10.252.122.128])
	by orsmga002.jf.intel.com with ESMTP; 08 Jan 2014 07:39:05 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Tarek El-Sherbiny <tarek.elsherbiny@gmail.com>
Date: Wed, 08 Jan 2014 15:39:04 +0000
Message-ID: <2104439.ERPX2TAWut@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-35-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <CAB3sqtaURWiPHOBHe4a5n3SGEskGrohRseT6S1X97K0SNcqZnw@mail.gmail.com>
References: <CAB3sqtY8VkwaU8fLT3C28a-WWkW6rTHST6WEv+ijZj6_moT-_w@mail.gmail.com>
	<8631278.WqvAtfDsah@helios>
	<CAB3sqtaURWiPHOBHe4a5n3SGEskGrohRseT6S1X97K0SNcqZnw@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Smart PM for upgrade the full image
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
X-List-Received-Date: Wed, 08 Jan 2014 15:39:08 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 08 January 2014 14:07:57 Tarek El-Sherbiny wrote:
> On Wed, Jan 8, 2014 at 1:33 PM, Paul Eggleton <paul.eggleton@linux.intel.com
> > wrote:
> > On Wednesday 08 January 2014 12:52:42 Tarek El-Sherbiny wrote:
> > > I have several targets deployed in multiple sites. Each target might  be
> > > running  a different version of the product rootfs image. When I release
> > > a new rootfs image I would like to use the smart command on each target
> > > at the customer site to upgrade the software to the latest image. Going
> > > through each package and install it separately is inefficient way of
> > > handling the upgrade and I don't expect the customer to have the
> > > knowledge for doing so.
> > > 
> > > What we really need is a smart command to compare the latest rootfs
> > > image and install, remove or un-change packages based on what is
> > > currently installed.
> > > 
> > > Can the smart command achieve that or do I need to write my own script?
> > 
> > Isn't this the same question you asked the other day? i.e., this is "smart
> > upgrade".
>
> Smart upgrade only upgrades packages that is currently installed. It
> doesn't install new packages nor remove unwanted packages.
> Is that not true?

That is true, yes. As far as I know, smart has no capabilities in this area 
beyond what is offered through conflicts - and for situations where one package 
replaces another, with any of the package management backends we support you 
should use RPROVIDES + RREPLACES + RCONFLICTS to ensure that the old name is 
redirected to the new name, new package is installed automatically, and the 
old package is removed (respectively).

If it's a straight old image -> new image upgrade, you'll probably have to 
look at other tools; package managers don't really handle this situation well 
- at least not out of the box.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

