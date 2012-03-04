Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D63DE0044D
	for <yocto@yoctoproject.org>; Sun,  4 Mar 2012 08:42:44 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 04 Mar 2012 08:42:44 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="114396115"
Received: from unknown (HELO [10.255.15.167]) ([10.255.15.167])
	by orsmga001.jf.intel.com with ESMTP; 04 Mar 2012 08:41:43 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Stewart, David C" <david.c.stewart@intel.com>
In-Reply-To: <CDED78A957032E45B3239CDDA7642D150846F91D@ORSMSX105.amr.corp.intel.com>
References: <alpine.DEB.2.02.1203040759260.2396@oneiric>
	<CDED78A957032E45B3239CDDA7642D150846F91D@ORSMSX105.amr.corp.intel.com>
Date: Sun, 04 Mar 2012 10:40:51 -0600
Message-ID: <1330879251.2319.125.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: some observations about yocto wiki page, "from git checkout to meta-intel BSP"
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
X-List-Received-Date: Sun, 04 Mar 2012 16:42:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2012-03-04 at 16:14 +0000, Stewart, David C wrote:
> Yeah, the example is pretty old, dating back to the 1.0 (bernard) release. 
> 
> Tom - it might be time to retire it, you think?
> 

Apparently, they're still useful to people, so I think updating rather
than retiring them makes more sense at this point (or they or something
similar get merged into the Developer's guide?  For now, it's a
relatively small effort to update them, and we can decide whether to
move them later, I'm thinking).

Tom

> >-----Original Message-----
> >From: yocto-bounces@yoctoproject.org [mailto:yocto-
> >bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
> >Sent: Sunday, March 04, 2012 5:09 AM
> >To: Yocto discussion list
> >Subject: [yocto] some observations about yocto wiki page, "from git checkout
> >to meta-intel BSP"
> >
> >
> >  yes, i know it's an editable wiki but i'd rather someone else make
> >the changes just in case i'm misreading something.  it's early, and
> >there's only decaf in the place.  this is bad.
> >
> >  anyway, using this page as grist for discussion:
> >
> >https://wiki.yoctoproject.org/wiki/Transcript:_from_git_checkout_to_meta-
> >intel_BSP
> >
> >"To build and run a meta-intel BSP, you need to check out a local copy
> >of the poky repo ..."
> >
> >  i think that sentence demonstrates the yocto vs poky confusion koen
> >was talking about -- a regular waffling between "yocto" sources and
> >"poky" repos.
> >
> >  below that, there are references to
> >git://git.pokylinux.org/poky.git -- should those references be updated
> >to refer to the git.yoctoproject.org repos?
> >
> >  there's a reference to "poky-qemu qemux86" -- change to "runqemu
> >qemux86"?  or is that the correct name in the last released version?
> >(i rarely look at released versions.)
> >
> >  and i'm pretty sure that there's a missing reference to the
> >meta-yocto layer here:
> >
> >BBLAYERS = " \
> >  /usr/local/src/Yocto/meta \
> >  /usr/local/src/Yocto/meta-intel/meta-fishriver \
> >  "
> >
> >unless that's also correct for the last released version.
> >
> >  further down,
> >
> >  $ bitbake poky-image-sato-live
> >
> >there's no such bitbake target these days.
> >
> >  anyway, that was about 60 seconds worth of perusing.  if some
> >meta-intel person wants to mess with that page, it's all yours.
> >
> >rday
> >
> >--
> >
> >===========================================================
> >=============
> >Robert P. J. Day                                 Ottawa, Ontario, CANADA
> >                        http://crashcourse.ca
> >
> >Twitter:                                       http://twitter.com/rpjday
> >LinkedIn:                               http://ca.linkedin.com/in/rpjday
> >===========================================================
> >=============
> >_______________________________________________
> >yocto mailing list
> >yocto@yoctoproject.org
> >https://lists.yoctoproject.org/listinfo/yocto
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



