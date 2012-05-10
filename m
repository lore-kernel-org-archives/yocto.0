Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F0DDE0044A
	for <yocto@yoctoproject.org>; Thu, 10 May 2012 14:23:53 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 10 May 2012 14:23:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="151580718"
Received: from unknown (HELO [10.255.12.70]) ([10.255.12.70])
	by fmsmga001.fm.intel.com with ESMTP; 10 May 2012 14:23:52 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <B92CF48D-EC98-44C0-94E1-4260EE7C8CEC@keylevel.com>
References: <8B59D504-F8BF-4329-92F8-EEC7F96FE207@keylevel.com>
	<1336682659.27808.9.camel@elmorro>
	<5E9AB811-0DDC-4B82-8C7C-67ADCFE06F27@keylevel.com>
	<1336683700.27808.12.camel@elmorro>
	<B92CF48D-EC98-44C0-94E1-4260EE7C8CEC@keylevel.com>
Date: Thu, 10 May 2012 16:23:51 -0500
Message-ID: <1336685031.27808.22.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Using meta-intel with Denzil
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
X-List-Received-Date: Thu, 10 May 2012 21:23:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-05-10 at 22:07 +0100, Chris Tapp wrote:
> On 10 May 2012, at 22:01, Tom Zanussi wrote:
> 
> > On Thu, 2012-05-10 at 21:54 +0100, Chris Tapp wrote:
> >> On 10 May 2012, at 21:44, Tom Zanussi wrote:
> >> 
> >>> On Thu, 2012-05-10 at 21:38 +0100, Chris Tapp wrote:
> >>>> I just tried to build 'crownbay' under Denzil but I got an error saying that xserver-xf86-dri-lite.inc could not be found.
> >>>> 
> >>>> It looks as if new meta is available in the git repository. Is there a plan for 7.0.0 downloads to be available from the downloads page?
> >>>> 
> >>> 
> >>> Yes, the plan these days is to release the meta-intel BSPs a few weeks
> >>> or so following the poky release.  We expect to have denzil BSP
> >>> downloads available from the downloads directory in a couple weeks...
> >> 
> >> 
> >> Thanks Tom.
> >> 
> >> Is there any information produced for a release to explain what needs looking at to bring a BSP in line with the release?
> >> 
> >> I found the above when I tried to bring something I'm working on in to Denzil. It would be really helpful if there was an easy way to find out what I need to consider ;-)
> >> 
> > 
> > I wish there were. ;-)  I don't know any substitute for that kind of
> > thing than looking at git history and trying to build.
> > 
> > BTW, I don't know why you'd be seeing that xserver-xf86-dri-lite.inc
> > error unless you had something out of date - the current master for
> > crownbay works find for me with poky/denzil...
> 
> 
> I've got an embryonic BSP based on meta-intel from an older version (6.0.1). It currently 'lives' within meta-intel/mybsp. When it didn't build I tried crownbay as I always start by assuming I've got something wrong in my code... ;-)
> 

Oh, I guess you must have been trying the edison crownbay with denzil
which has this and won't work with denzil:

meta-crownbay/conf/machine/crownbay.conf:PREFERRED_PROVIDER_virtual/xserver ?= "xserver-xf86-dri-lite"
meta-crownbay/conf/machine/crownbay.conf:PREFERRED_PROVIDER_virtual/xserver-xf86 ?= "xserver-xf86-dri-lite"
meta-crownbay/conf/machine/crownbay.conf:XSERVER ?=
"xserver-xf86-dri-lite \
meta-crownbay/conf/machine/crownbay.conf:PREFERRED_VERSION_xserver-xf86-dri-lite ?= "1.9.3"

You really should be looking at the current crownbay BSP in master -
there have been a lot of changes in this (matching changes for the X
overhaul in oe-core IIRC) and other areas since then...

Tom

> Chris Tapp
> 
> opensource@keylevel.com
> www.keylevel.com
> 
> 
> 



