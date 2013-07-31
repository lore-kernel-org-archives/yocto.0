Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 756A6E013B0
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 07:26:36 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 31 Jul 2013 07:26:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,787,1367996400"; d="scan'208";a="339575077"
Received: from unknown (HELO helios.localnet) ([10.252.122.226])
	by azsmga001.ch.intel.com with ESMTP; 31 Jul 2013 07:26:35 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Brian Karcz <briank@russound.com>
Date: Wed, 31 Jul 2013 15:26:33 +0100
Message-ID: <1583397.pl1NumHCto@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-27-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <7b2f59a6492f42069a9fe4820a76f7ac@HERMES.RUSSOUND.com>
References: <0a4bf31ea87549a1bf22c3d6e740804a@HERMES.RUSSOUND.com>
	<1549593.BXXGrf3Qbm@helios>
	<7b2f59a6492f42069a9fe4820a76f7ac@HERMES.RUSSOUND.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: recipe dependency on externally built binaries?
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
X-List-Received-Date: Wed, 31 Jul 2013 14:26:37 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 31 July 2013 14:04:05 Brian Karcz wrote:
> That's a better answer than I was fearing. I was starting to think that
> Yocto/Poky was only intended to build/assemble versioned or released code.

Most of the time that's the way the system operates, but we're not limited to 
it. The main purpose of the checksums is to allow you to update patches or 
configuration files referred to in SRC_URI, but it works for this case as well.

The only thing I'd advise is to take care that you have mechanisms in place 
that will allow you to easily reproduce older branches. You may already have 
taken care of this; it's just that it's easy to overlook when you point to a 
local file that is not under the control of the build system.

> We are still using Edison. I started going through the cycles of trying to
> upgrade us to Dylan a month or so ago, but ran into an assortment of issues
> regarding udev (at runtime) and some issues with do_fetch/do_unpack not
> executing on an image re-build like they do in Edison. My priority list got
> adjusted a bit, and I had to abandon that effort for a while. This
> information definitely adds a little more to the benefit column of moving
> us forward.

Right. FYI, the traditional way of working with edison and older was just to 
bump PR each time you want the recipe to rebuild.

> Are you saying that if I were to move our build system forward to danny or
> Dylan that the dependency behavior I'm looking for in these recipes would
> start to work as intended? 

Yes, that's correct. If you enable the PR server you can even have PR 
incremented automatically each time a change is made, assuming this helps i.e. 
you have package management enabled on the target.

> Would this behavior survive the use of the rm_work directive?

Yes, it should interact just fine with rm_work.
 
Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

