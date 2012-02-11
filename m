Return-Path: <raj.khem@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 178C0E003E3
	for <yocto@yoctoproject.org>; Fri, 10 Feb 2012 17:45:51 -0800 (PST)
Received: by pbcuo1 with SMTP id uo1so3276357pbc.35
	for <yocto@yoctoproject.org>; Fri, 10 Feb 2012 17:45:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=xKJ3Vq4eXqLtHt5ueUhTDTdItdazsz3LAKwyczczIVM=;
	b=UO6/mLACqmNEMxHd1e4RWmpsiqhWq3EVuqJWb3bG1tKtQ5fT84QcHS1cvyYY+a9kAt
	tCCB6tch2yKQ6MprTUtAeVawRcFwl3iVaADcUUMpz0fI9BOME/rKzKez3eUk4QpXdE78
	FE1hbMkmVl5i/Noy+KCko/8JCTVfEI5j42d2Y=
Received: by 10.68.220.227 with SMTP id pz3mr21591060pbc.86.1328924750304;
	Fri, 10 Feb 2012 17:45:50 -0800 (PST)
Received: from sakrah.homelinux.org
	(99-57-140-209.lightspeed.sntcca.sbcglobal.net. [99.57.140.209])
	by mx.google.com with ESMTPS id w4sm17859733pbf.4.2012.02.10.17.45.47
	(version=TLSv1/SSLv3 cipher=OTHER);
	Fri, 10 Feb 2012 17:45:48 -0800 (PST)
Date: Fri, 10 Feb 2012 17:45:39 -0800
From: Khem Raj <raj.khem@gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Message-ID: <20120211014526.GA2095@sakrah.homelinux.org>
Mail-Followup-To: Darren Hart <dvhart@linux.intel.com>,
	Martin Jansa <martin.jansa@gmail.com>,
	Paul Eggleton <paul.eggleton@linux.intel.com>,
	yocto@yoctoproject.org
References: <9c76056351fe4e2b9537729ffca3b4506b720513.1328135056.git.dvhart@linux.intel.com>
	<4F2AE4E8.3080809@linux.intel.com>
	<4F2AFBF7.8010307@linux.intel.com> <1405123.nGGmjXUAYO@helios>
	<4F306968.9000902@linux.intel.com>
	<20120207070631.GA3893@jama.jama.net>
	<4F35B2D5.30601@linux.intel.com>
MIME-Version: 1.0
In-Reply-To: <4F35B2D5.30601@linux.intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: [pull-sys940x 2/4] ranpwd: Add ranpwd recipe
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
X-List-Received-Date: Sat, 11 Feb 2012 01:45:51 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On (10/02/12 16:14), Darren Hart wrote:
> 
> 
> On 02/06/2012 11:06 PM, Martin Jansa wrote:
> > On Mon, Feb 06, 2012 at 03:59:36PM -0800, Joshua Lock wrote:
> >> On 06/02/12 08:17, Paul Eggleton wrote:
> >>> On Thursday 02 February 2012 13:11:19 Joshua Lock wrote:
> >>>> Apologies. I'm wrong here. It was PRIORITY which we agreed to drop.
> >>>
> >>> It's worth noting however, at the same time PRIORITY removal was discussed it
> >>> was acknowledged that SECTION was questionable. Logical grouping of
> >>> recipes/packages is a useful thing but coming up with groupings that are
> >>> meaningful in all contexts is hard :(
> >>
> >> Glad to know my recollection isn't wildly off the mark.
> >>
> >> I noticed that there are similar, yet different, SECTION values being 
> >> used. If we opt to keep SECTION I wonder if we should try and 
> >> standardise/sanitise it?
> > 
> > If there is standardised SECTION variable why not use
> > recipes-${SECTION}/foo_1.0.bb as we already have couple of recipe-*
> > directories and it's sometimes hard to decide to which directory
> > something belongs.
> > 
> > Or other way around, standartise recipes-* directories and let bitbake
> > decide SECTION from it (like it does for PV and PN).

thats a good idea

