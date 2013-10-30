Return-Path: <laurentiu.palcu@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1911EE0173C
	for <yocto@yoctoproject.org>; Wed, 30 Oct 2013 07:41:11 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 30 Oct 2013 07:41:10 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="427099407"
Received: from lpalcu-linux.rb.intel.com (HELO lpalcu-linux) ([10.237.105.41])
	by orsmga002.jf.intel.com with ESMTP; 30 Oct 2013 07:41:09 -0700
Date: Wed, 30 Oct 2013 16:41:08 +0200
From: Laurentiu Palcu <laurentiu.palcu@intel.com>
To: Brian Hutchinson <b.hutchman@gmail.com>
Message-ID: <20131030144108.GA1061@lpalcu-linux>
References: <CAFZh4h8aKoop0wdU7THaBD6+5FnEgfPKW0zM_-wqpOOcLgXdsg@mail.gmail.com>
	<CAFZh4h-ULci3FhdeNJDE1zEFRqAQpwVJyLY95-PVW0z2sQFGHQ@mail.gmail.com>
	<20131030054112.GA23839@lpalcu-linux>
	<CAFZh4h_oN02R_Z2ymVd6Df0RRnyWichQAD0dtvarUefd4k_eSQ@mail.gmail.com>
	<20131030133451.GA25490@lpalcu-linux>
	<CAFZh4h_fdSXqN5KoacQn9FfTjLNAC4UijS3eM2HPd+eHXMXdew@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFZh4h_fdSXqN5KoacQn9FfTjLNAC4UijS3eM2HPd+eHXMXdew@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: Getting a relocate_sdk.py issue when installing a sdk on Centos
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
X-List-Received-Date: Wed, 30 Oct 2013 14:41:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Oct 30, 2013 at 10:00:14AM -0400, Brian Hutchinson wrote:
> 
> On Oct 30, 2013 9:36 AM, "Laurentiu Palcu" <laurentiu.palcu@intel.com> wrote:
> >
> > On Wed, Oct 30, 2013 at 09:19:56AM -0400, Brian Hutchinson wrote:
> > > On Wed, Oct 30, 2013 at 1:41 AM, Laurentiu Palcu <laurentiu.palcu@intel.com
> >
> > > wrote:
> > >
> > >                     ^
> > >     This commit:
> > >
> > >     commit 39356f622d3d2226f12c4930beeaf4b392d90ca5
> > >     Author: Konrad Scherer <Konrad.Scherer@windriver.com>
> > >     Date:   Thu Oct 17 10:17:20 2013 -0400
> > >
> > >         relocate_sdk.py: Allow script to work with Python 2.4 and 3.
> > >
> > >     should fix your issue.
> > >
> > >     Thanks,
> > >     Laurentiu
> > >
> > >
> > > Hi Laurentiu,
> > >
> > > Which git repo?  I couldn't find it?   Is this contrib or mainline?
> > http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=
> 39356f622d3d2226f12c4930beeaf4b392d90ca5
> >
> > or
> >
> > http://cgit.openembedded.org/openembedded-core/commit/?id=
> 1e2ec5f576f167673d7980737826987fefdc74a9
> >
> > Laurentiu
> > >
> > > Regards,
> > >
> > > Brian
> > >
> 
> Thanks!  I don't know why my searches didn't find that.
> 
> Helps to read the release notes ... I wonder if I shouldn't also make folks
> with these older Centos boxes also install buildtools-tarball so everyone has
> the same rev of Python etc.  That might make the SDK install go better too.
If those folks are just users of the SDK then I don't think this is
necessary, provided that the one that generated the SDK tarball had the fix
installed.

Laurentiu

> 
> Regards,
> 
> Brian
> 

