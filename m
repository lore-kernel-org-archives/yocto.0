Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49230E0123C
	for <yocto@yoctoproject.org>; Tue, 28 Feb 2012 14:28:24 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1S2VWx-00071w-Ap; Tue, 28 Feb 2012 17:28:23 -0500
Date: Tue, 28 Feb 2012 17:28:17 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Koen Kooi <koen@beagleboard.org>
In-Reply-To: <D8B2FCF1-09C3-4DEF-BFFB-3E0A421C61AE@beagleboard.org>
Message-ID: <alpine.DEB.2.02.1202281723110.9200@oneiric>
References: <alpine.DEB.2.02.1202281349020.2440@oneiric>
	<4F4D457F.7000306@windriver.com>
	<alpine.DEB.2.02.1202281651040.8024@oneiric>
	<D8B2FCF1-09C3-4DEF-BFFB-3E0A421C61AE@beagleboard.org>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: proper recipe for building for beagle xM? meta-ti?
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
X-List-Received-Date: Tue, 28 Feb 2012 22:28:24 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 28 Feb 2012, Koen Kooi wrote:

>
> Op 28 feb. 2012, om 22:55 heeft Robert P. J. Day het volgende geschreven:
>
> > On Tue, 28 Feb 2012, Bruce Ashfield wrote:
> >
> >> It is true that the beagleboard is a hardware reference board in the
> >> yocto consolidated kernel tree and meta-yocto layers. That means
> >> that it gets the yocto standard QA builds and boot testing.
> >>
> >> That being said, if you are looking for the latest + specific
> >> features then you've been pointed in a good direction .. meta-ti
> >> will meet your needs.
> >>
> >> As for disentangling and reducing questions in this area .. rest
> >> assured, we are working on it.
> >
> >  ok, that's perfectly reasonable -- meta-yocto provides a generic,
> > well-tested product, while the meta-ti layer provides more
> > leading-edge content, correct?
>
> No, the amount of testing is not the difference, the amount of
> support for the board is. Meta-ti supports the camera interfaces, 3d
> engine, dsp, crypto engines, expansion boards, etc. Meta-yocto lacks
> all that for beagleboard.

  i understand that reasonably well, and i'll make one more
observation, then i'll shut up.

  i cloned the meta-ti layer into my yocto clone, and here's the
majority of the meta-ti README:

===== start

This layer depends on:

URI: git://git.openembedded.org/openembedded-core
branch: master
revision: HEAD

URI: git://git.openembedded.org/meta-openembedded
branch: master
revision: HEAD

URI: git://git.angstrom-distribution.org/meta-angstrom
branch: master
revision: HEAD

Currently meta-ti only works with the Angstrom distribution and hence
requires the meta-angstrom layer. There are known issues when using
gcc-4.6 based toolchain from OpenEmbedded-Core, thus gcc-4.5
toolchain, provided by meta-openembedded, is needed. It is planned to
fix these shortcomings in the near future and allow building the base
BSP part of meta-ti with different distributions and layer stacks,
such as: distro-less (only with OE-Core), with Yocto/Poky, with
Angstrom or Arago.

Due to the above, it is now recommended to follow the instructions at
http://www.angstrom-distribution.org/building-angstrom

This will set it up for the OpenEmbedded-core layout instead of the
old "Classic" OpenEmbedded-dev layout. You can optionally tweak
sources/layers.txt and conf/bblayers.conf to (de)select BSP layers.

===== end

  by the time i'm done reading that, i'm not sure whether i've been
told i can use yocto as long as i do the necessary prep first, or that
i should give up on yocto and just use angstrom directly.  i'm fine
with either approach, but the README seems to just waffle *totally* on
which strategy to use.

  quite simply, that README seems to provide nothing but more
confusion than anything else.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

