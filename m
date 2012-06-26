Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66352E0070C
	for <yocto@yoctoproject.org>; Tue, 26 Jun 2012 10:09:28 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 26 Jun 2012 10:09:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="170264110"
Received: from unknown (HELO helios.localnet) ([10.252.120.190])
	by fmsmga001.fm.intel.com with ESMTP; 26 Jun 2012 10:09:27 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Tue, 26 Jun 2012 18:09:26 +0100
Message-ID: <1447441.xnbSj4QHNd@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.3 (Linux/3.2.0-25-generic-pae; KDE/4.8.3; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1206261304290.6025@oneiric>
References: <alpine.DEB.2.02.1206260459040.8547@oneiric>
	<7137339.IoCmExdDEI@helios>
	<alpine.DEB.2.02.1206261304290.6025@oneiric>
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
X-List-Received-Date: Tue, 26 Jun 2012 17:09:28 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 26 June 2012 13:05:21 Robert P. J. Day wrote:
> On Tue, 26 Jun 2012, Paul Eggleton wrote:
> > On Tuesday 26 June 2012 12:51:15 Robert P. J. Day wrote:
> > >   ok, that makes sense.  but would it also make sense for bitbake to
> > > perhaps support another option that *does* allow personal content to,
> > > say, be effectively appended to one's local.conf.  for instance, every
> > > single local.conf i create immediately gets this added to the end:
> > > 
> > > SOURCE_MIRROR_URL ?= "file:///home/rpjday/dl/"
> > > INHERIT += "own-mirrors"
> > > BB_GENERATE_MIRROR_TARBALLS = "1"
> > > # BB_NO_NETWORK = "1"
> > 
> > OK, looking at the settings you've listed, I think these are the
> > kinds of things that site.conf was invented for - stuff that is
> > specific not to the builds you are doing but to the host machine /
> > site. You can simply put these settings in a file called site.conf
> > next to local.conf and they'll be read from there; for new build
> > directories you can just copy it in or symlink it from some common
> > location.
> 
>   that still requires just a touch of user intervention.  no totally
> automatic way to do that, then?  it's at least an improvement over
> manual copying, thanks.

I have thought about this - it would be great if oe-init-build-env could 
copy/symlink your customised version from somewhere automatically every time; 
however the question would be how would it know where to copy it from? I'm not 
sure an added command-line option would be much better than just getting 
people to copy/symlink it in manually.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

