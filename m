Return-Path: <raj.khem@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB85AE01447
	for <yocto@yoctoproject.org>; Sat,  8 Sep 2012 00:19:27 -0700 (PDT)
Received: by pbbrq13 with SMTP id rq13so836220pbb.35
	for <yocto@yoctoproject.org>; Sat, 08 Sep 2012 00:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=gPRu5IVOu2qf0B0OaKTtOW0kfOVWkDk5ur5dQ7avA+0=;
	b=X62NrSAAdhQloqeL6zX09D/kW3DrnIyjqSWkvdsq9azV5UDgqMZhXwI0Xe65P+yN8X
	qKKoujdlJ6AMWg6cmCLBmQEjiNTW+k2vi1dIJ/4Vta0MIlz5UaM1g4l2I7yBrgn+zCE1
	eept66qfw0iZAJYcBH8lQQzvNw3BdPSEHIC+Rvrv4r6M5H/z0WvM/4phmt6yIXEJm0vj
	P8l1PDMPsQgjUh+F/tSNiuoxcs6MWSr+zxOB/SE6XIy9qpXHPAzaUgqgEV2yDgfxN6m2
	ps2PmMbAjoXbkafGFbD19DRiEw4sSXQAOSvetUcVwrdmBqqlRGCf/5PsIRYWY9iPA9Ic
	niTw==
Received: by 10.68.240.138 with SMTP id wa10mr13922073pbc.145.1347088748683;
	Sat, 08 Sep 2012 00:19:08 -0700 (PDT)
Received: from sakrah.homelinux.org
	(99-57-140-209.lightspeed.sntcca.sbcglobal.net. [99.57.140.209])
	by mx.google.com with ESMTPS id mr2sm4704058pbb.16.2012.09.08.00.19.06
	(version=SSLv3 cipher=OTHER); Sat, 08 Sep 2012 00:19:07 -0700 (PDT)
Date: Sat, 8 Sep 2012 00:18:26 -0700
From: Khem Raj <raj.khem@gmail.com>
To: William Mills <wmills@ti.com>
Message-ID: <20120908071824.GA3903@sakrah.homelinux.org>
Mail-Followup-To: William Mills <wmills@ti.com>,
	Darren Hart <dvhart@linux.intel.com>, yocto@yoctoproject.org,
	"Dmytriyenko, Denys" <denys@ti.com>
References: <50450DC6.20303@r-finger.com>
	<CADkTA4NbPk6UDbctuj=McV1PT4QZu=2LRTq2-GHSAAoeaasAUw@mail.gmail.com>
	<50451947.2090401@r-finger.com>
	<CADkTA4PX-ZAhhPi0OppbT4y4e5jiwDwgNFHONjebPimF8U21Yg@mail.gmail.com>
	<5045C2B7.1070406@r-finger.com>
	<CADkTA4No3Y0K1eUF_w5OZApD7pfnmLD3YY2uiMG9rDe2okYtEg@mail.gmail.com>
	<504637F5.8090603@linux.intel.com> <504663C0.6050907@ti.com>
MIME-Version: 1.0
In-Reply-To: <504663C0.6050907@ti.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>, "Dmytriyenko,
	Denys" <denys@ti.com>
Subject: Re: yocto beagleboard.conf -- should it not go away?
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
X-List-Received-Date: Sat, 08 Sep 2012 07:19:28 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On (04/09/12 16:25), William Mills wrote:
> On 09/04/2012 01:18 PM, Darren Hart wrote:
> >
> >
> >On 09/04/2012 05:20 AM, Bruce Ashfield wrote:
> >>On Tue, Sep 4, 2012 at 4:58 AM, Tomas Frydrych
> >><tf+lists.yocto@r-finger.com>  wrote:
> >>>Hi Bruce,
> >>>
> >>>On 03/09/12 22:08, Bruce Ashfield wrote:
> >>>>That being said, taking a step back, what are you trying to get out of
> >>>>meta-yocto in this scenario ?
> >>>
> >>>a) I am targeting multiple chips, including TI Omap and Intel Atom.
> >>>meta-yocto is a prerequisite for the various machines in meta-intel, so
> >>>I have to include meta-yocto if I want to build images for an Intel
> >>>chip. Nothing unusual here.
> >>>
> >>>b) meta-yocto is the Poky distro layer; if you want to use Poky, then
> >>>you need meta-yocto.
> >>>
> >>>>see above. I misspoke. I don't think there's an intent to make meta-yocto
> >>>>and meta-ti work together, but oe-core + meta-ti, that's the combo that
> >>>>makes sense.
> 
> oe-core + meta-ti should work or it needs to get fixed.
> poky + meta-ti should work or it needs to get fixed.
> 
> However I suspect the 2nd is not in the nightly builds yet.
> 
> Denys is out for the next few days.  He can comment more when he gets back.
> 
> It has been our assumption that there is enough functionality in the
> layer mechanisms that any of the "light weight" BSPs in yocto layer
> could be completely overridden by a more complete layer (meta-ti in
> this example).  In addition the end system integrator should be able
> to override definitions in any BSP layer.
> 
> I suspect the current issue is just growing pains for a case that
> has not been tested.  Lets prove that false before taking more
> drastic action.
> 
> >>>
> >>>The basic problem with meta-yocto is that it combines BSP stuff
> >>>(meta-intel prerequisite, Atom&  Beagle config) with distro stuff (Poky,
> >>>Yocto branding). That's convenient for doing QA on a limited set of HW,
> >>>but suboptimal for real use; BSP layers simply should not be dependent
> >>>on distro layers, it largely defeats the purpose of having layers.
> 
> Darren: Is it true you can't get @ the Intel BSP's w/o also getting
> the poky distro defs?  That does seem to mixing things a bit.  (I am
> not claiming meta-ti is clean yet but I want to understand the Intel
> examples.)
> 

angstrom used meta-intel and it does not have meta-yocto that said I
have not built for Intel machines using Angstrom so there might be
issues but it parses fine for me so far.

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
-Khem

