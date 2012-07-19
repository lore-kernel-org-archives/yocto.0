Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34D12E00739
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 20:26:45 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 18 Jul 2012 20:26:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="174052226"
Received: from unknown (HELO [10.255.12.184]) ([10.255.12.184])
	by orsmga002.jf.intel.com with ESMTP; 18 Jul 2012 20:26:44 -0700
Message-ID: <1342668398.2338.227.camel@trz-ThinkPad-T420>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
Date: Wed, 18 Jul 2012 22:26:38 -0500
In-Reply-To: <ADD6A3980E8C39419A432FF422031B4C03188C9C@ORSMSX106.amr.corp.intel.com>
References: <cover.1342504457.git.nitin.a.kamble@intel.com>
	<1342620801.2338.160.camel@trz-ThinkPad-T420>
	<ADD6A3980E8C39419A432FF422031B4C03188C9C@ORSMSX106.amr.corp.intel.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1] meta: update crownbay.scc for newer emgd driver
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
X-List-Received-Date: Thu, 19 Jul 2012 03:26:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2012-07-18 at 19:58 -0700, Kamble, Nitin A wrote:
> 
> > -----Original Message-----
> > From: Zanussi, Tom
> > Sent: Wednesday, July 18, 2012 7:43 PM
> > To: Kamble, Nitin A
> > Cc: yocto@yoctoproject.org; bruce.ashfield@windriver.com
> > Subject: Re: [PATCH 0/1] meta: update crownbay.scc for newer emgd driver
> > 
> > On Mon, 2012-07-16 at 22:57 -0700, nitin.a.kamble@intel.com wrote:
> > > From: Nitin A Kamble <nitin.a.kamble@intel.com>
> > >
> > > This commit changes emgd kernel driver for crownbay bsp to the emgd-
> > 1.14.
> > >
> > 
> > Nitin,
> > 
> > Doesn't switching this over in the kenrnel require emgd-1.14 userspace
> > recipe updates to work?  Did I miss those?
> > 
> > Tom
> > 
> Tom,
>     I am holding the emgd 1.14 userspace commits until the kernel repository change goes upstream. The kernel recipe will need new SRCREV (with emgd 1.14 kernel parts) for the user level emgd 1.14 parts to work. And that dependency will get satisfied once this commit is in.
> 

Yeah, I understand, the crownbay is typically the most complicated
update for all of those reasons - simultaneous new kernel
version/recipe, new emgd branch, and new emgd userspace recipe all at
the same time.

In the past I've submitted them all at the same time for simultaneous
review and some coordination with Bruce - once the kernel parts are in,
the kernel recipe and the userspace parts can then be pulled in along
with a simple follow-on patch to update the SRCREVs Bruce give us.

The thing is that if Bruce pulls in the patch to switch to emgd-1.14 and
only at that point do you post the userspace recipe, and it ends up
needing some rework, in the meantime the graphics remain non-functional
(I know, they already are, thanks to the package re-ordering patches
breaking the current recipe, but hopefully the 1.14 changes will be in
and we don't have to worry about it any more.).

Does that make sense, and can you just post the userspace and kernel
recipe parts before we give Bruce the go-ahead in making the kernel
changes?  (I'd also like to try it out myself as well...).

Thanks,

Tom 

> Nitin
> 



