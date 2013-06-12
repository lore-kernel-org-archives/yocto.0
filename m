Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 171C6E01567
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 01:46:40 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 12 Jun 2013 01:44:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,850,1363158000"; d="scan'208";a="328134234"
Received: from unknown (HELO helios.localnet) ([10.252.122.12])
	by orsmga001.jf.intel.com with ESMTP; 12 Jun 2013 01:46:38 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Edward Vidal <vidal.develone@gmail.com>
Date: Wed, 12 Jun 2013 09:46:37 +0100
Message-ID: <342759437.lM4YV1qFtO@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.3 (Linux/3.8.0-23-generic; KDE/4.10.3; i686; ; )
In-Reply-To: <CANwz6nxwUaGiXncQGQa1OGK=7s4b8TjTWphy4VL=qyiTFe3Z+Q@mail.gmail.com>
References: <CANwz6nxwUaGiXncQGQa1OGK=7s4b8TjTWphy4VL=qyiTFe3Z+Q@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Yocto branches with other meta-data sets
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
X-List-Received-Date: Wed, 12 Jun 2013 08:46:46 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Edward,

On Tuesday 11 June 2013 08:50:49 Edward Vidal wrote:
> I am trying to understand the various branches of poky.
> It appears that 1.4_M6 became dylan-9.0.0 which is DISTRO_VERSION    =
> "1.4".  Is this correct?

I don't see a 1.4_M6 branch, only a 1.4_M6.rc1 tag which is not the same as 
the dylan-9.0.0 tag. DISTRO_VERSION for the dylan-9.0.0 tag would be 1.4, yes.
 
> top level of meta-oe
> git branch -a
> * master
>   remotes/origin/HEAD -> origin/master
>   remotes/origin/danny
>   remotes/origin/danny-next
>   remotes/origin/denzil
>   remotes/origin/denzil-next
>   remotes/origin/dylan
>   remotes/origin/dylan-next
>   remotes/origin/master
> my conf/bblayers has the following entry
> /home/vidal/POKY/build060613_dylan/poky/meta-oe/meta-oe \
> 
> When I have the following in my conf/bblayers
> /home/vidal/POKY/build060613_dylan/poky/meta-oe \ I get errors.
> can not find conf/layer.conf.

meta-openembedded (the repository) contains a few different layers in 
subdirectories, one of which is meta-oe. I think you just need to add an 
additional "/meta-oe" onto the path you've given for the layer in 
bblayers.conf.

> When using meta-oe with Yocto which branch should I be using
>  origin/master, origin/dylan, or  origin/dylan-next?

I would say dylan; dylan-next is a proving temporary staging area for patches 
for the dylan branch and you should not rely upon it.

> My previous builds have been using origin/master
> For my Yocto I use the following
> 
> git clone git://git.yoctoproject.org/poky
> cd poky
> git checkout -b dylan origin/dylan
> Which I found in dev-manual 3.6.1. Repositories, Tags, and Branches
> I noticed that this started as DISTRO_VERSION    = "1.4" a few days ago and
> now it is DISTRO_VERSION    = "1.4.1".

If you're using the dylan branch of Poky or OE-Core then you're tracking a 
branch rather than a fixed version; we're preparing our upcoming point release 
of the dylan/1.4 series which will be 1.4.1, hence the recent version bump.
 
> When using meta-ti which I use to build images for beaglebone & pandaboard.
> top level of meta-ti
> git branch -a
> * master
>   remotes/origin/HEAD -> origin/master
>   remotes/origin/danny
>   remotes/origin/denzil
>   remotes/origin/master
>   remotes/origin/split
> 
> This branch works with origin/dylan of yocto meta-ti           =
> "(nobranch):d61bfa88ed3df9190ac9fd5643c27f77b34c5f01".
> I do not see a origin/dylan for meta-ti.

You should talk to the meta-ti maintainers about this (probably on the meta-ti 
mailing list).

> Is Yocto the main source of meta-data that other are creating same branches?
> Is Yocto project participation Yocto Project Compatible what is driving the
> same branches?

I don't know that there is any requirement about branches in version control 
within either of those programmes. I would certainly recommend people create 
branches corresponding to the release branches in OE-Core and use the same 
names to avoid confusion, but there's nothing forcing maintainers of other 
layers to do so.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

