Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E41FE0027F
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 15:04:08 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q85M44RV030902;
	Wed, 5 Sep 2012 23:04:04 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 30798-01; Wed,  5 Sep 2012 23:03:58 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q85M3tUv030896
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Wed, 5 Sep 2012 23:03:56 +0100
Message-ID: <1346882635.21985.115.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: ml@communistcode.co.uk
Date: Wed, 05 Sep 2012 23:03:55 +0100
In-Reply-To: <5045BA26.9030104@communistcode.co.uk>
References: <50450DC6.20303@r-finger.com>
	<CADkTA4NbPk6UDbctuj=McV1PT4QZu=2LRTq2-GHSAAoeaasAUw@mail.gmail.com>
	<50451947.2090401@r-finger.com>
	<CADkTA4PX-ZAhhPi0OppbT4y4e5jiwDwgNFHONjebPimF8U21Yg@mail.gmail.com>
	<5045BA26.9030104@communistcode.co.uk>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 05 Sep 2012 22:04:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-09-04 at 09:21 +0100, Jack Mitchell wrote:
> On 03/09/12 22:08, Bruce Ashfield wrote:
> > On Mon, Sep 3, 2012 at 4:55 PM, Tomas Frydrych
> > <tf+lists.yocto@r-finger.com> wrote:
> >> snip...
> >>
> >>
> >>
> >> That being said, taking a step back, what are you trying to get out of
> >> meta-yocto in this scenario ? oe-core + meta-ti is probably what you
> >> should be using.
> >>
> 
> Sorry to jump in here, but this is actually a very interesting point. 
>  From coming to OpenEmbedded through Yocto and subsequently learning 
> about the ecosystem as a whole, I have always considered meta-yocto to 
> be providing a sane distro configuration. This implies that I believe 
> the oe-core default distro configuration, even though it will build, the 
> result won't be very satisfying - or maybe a bit disjointed.
>
> You seem to be saying above that the meta-yocto layer is only any good 
> for providing the kernel framework, and as he is not using the framework 
> (i.e. using meta-ti) then there is no point in using the meta-yocto 
> layer? So does the Poky distro config only really slap a name on the 
> oe-core default distro policy - or does it have some added value?

In the old days, there was no default distro config. OE-Core changed
that as an experiment which IMO has been relatively successful. The Poky
distro config inherits as much as possible from the core defaults. The
extras are (reading poky.conf):

* Example of Distro Branding
* Ensuring some particular kernel versions
* Particular SDK layout
* Minor tweaks to basic images/qemu images
* Mirror Setup (although OE-Core has these now too iirc)
* Sets connectivity check
* Sets list of compatible/tested distros
* Some signature stuff (now OE-Core default)
* Sets more stringent package sanity checks that OE-Core

So at least some of the above moved into the core as default although we
still need to remove the remnants from the poky.conf file. Others will
likely move in future too.

There isn't anything major above but there are several smaller usability
tweaks/optimisations and I'd argue there is some added value.

There are also example LSB and "tiny" profiles showing how to take the
system and customise it in different ways which I'd argue have value
too.

> I'm not trying to rile anyone up here, just trying to put the jigsaw 
> together as the picture looks different every time I revisit it!!

Its an evolving picture, hopefully in a good way :)

Cheers,

Richard



