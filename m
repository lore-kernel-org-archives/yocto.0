Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 350A6E0070C
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 10:02:25 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 26 Jun 2012 10:02:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="170259312"
Received: from unknown (HELO helios.localnet) ([10.252.120.190])
	by fmsmga001.fm.intel.com with ESMTP; 26 Jun 2012 10:02:24 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Tue, 26 Jun 2012 18:02:23 +0100
Message-ID: <7137339.IoCmExdDEI@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.3 (Linux/3.2.0-25-generic-pae; KDE/4.8.3; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1206261247100.5915@oneiric>
References: <alpine.DEB.2.02.1206260459040.8547@oneiric>
	<3228700.TZNO2vyRAD@helios>
	<alpine.DEB.2.02.1206261247100.5915@oneiric>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: <rant>the current yocto FAQ is pretty much valueless</rant>
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
X-List-Received-Date: Tue, 26 Jun 2012 17:02:25 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 26 June 2012 12:51:15 Robert P. J. Day wrote:
> On Tue, 26 Jun 2012, Paul Eggleton wrote:
> > On Tuesday 26 June 2012 12:26:28 Robert P. J. Day wrote:
> > >   i thought that was the technique for centralizing personal config
> > > 
> > > preferences that you *didn't* want to manually copy into every
> > > local.conf file you created.  if you add that personal content into
> > > each local.conf, then of course you don't need those options.
> > 
> > I guess it depends on what you mean by "personal content". Certain
> > settings are really part of distro policy and if you're finding that
> > you're setting them all the time for all of the builds that you're
> > doing, it would make more sense to create a distro layer that sets
> > them - then it's simply a matter of ensuring that layer is added to
> > your bblayers.conf and you set DISTRO as appropriate.
> > 
> > AFAIK the command line options in question were added to allow
> > frontends to inject configuration into bitbake rather than something
> > the user would normally use directly.
> 
>   ok, that makes sense.  but would it also make sense for bitbake to
> perhaps support another option that *does* allow personal content to,
> say, be effectively appended to one's local.conf.  for instance, every
> single local.conf i create immediately gets this added to the end:
> 
> SOURCE_MIRROR_URL ?= "file:///home/rpjday/dl/"
> INHERIT += "own-mirrors"
> BB_GENERATE_MIRROR_TARBALLS = "1"
> # BB_NO_NETWORK = "1"

OK, looking at the settings you've listed, I think these are the kinds of 
things that site.conf was invented for - stuff that is specific not to the 
builds you are doing but to the host machine / site. You can simply put these 
settings in a file called site.conf next to local.conf and they'll be read from 
there; for new build directories you can just copy it in or symlink it from 
some common location.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

