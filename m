Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C276AE009DA; Sun, 31 May 2015 05:16:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 975D1E0085D
	for <yocto@yoctoproject.org>; Sun, 31 May 2015 05:16:51 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga103.jf.intel.com with ESMTP; 31 May 2015 05:16:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,526,1427785200"; d="scan'208";a="500559145"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com)
	([10.252.31.211])
	by FMSMGA003.fm.intel.com with ESMTP; 31 May 2015 05:16:52 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Ed Sutter <ed.sutter@alcatel-lucent.com>,
	Trevor Woerner <twoerner@gmail.com>
Date: Sun, 31 May 2015 13:16:48 +0100
Message-ID: <1795848.uj7DDzVjdK@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.7 (Linux/3.19.7-200.fc21.x86_64; KDE/4.14.7; x86_64; ; )
In-Reply-To: <5568B2E1.2000507@gmail.com>
References: <556629F2.20605@alcatel-lucent.com> <5568B2E1.2000507@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: getting started...
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
X-List-Received-Date: Sun, 31 May 2015 12:16:55 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 29 May 2015 14:41:37 Trevor Woerner wrote:
> Hi Ed,
> 
> On 05/27/15 16:32, Ed Sutter wrote:
> > This year I have two ongoing iMX6 based linux projects, and may need
> > to use a beaglebone
> > or RPi for some other small project.
> > 
> > The point of the above detail is that I'd like to backup a bit and
> > attempt to use Yocto to
> > organize all four of these with one instance of Yocto/Poky.  Is that
> > practical?
> 
> Yes, that would be a great idea!Have a look at angstrom, for example:
> http://www.angstrom-distribution.org. They build one distro for a whole
> bunch of different machines. As such, they start with a whole bunch of
> different layers, most of which are BSP layers, and then simply do:
> 
> $ MACHINE=<machine> bitbake <image>
> 
> e.g.
> 
> $ MACHINE=raspberrypi2 bitbake angstrom-image
> $ MACHINE=beaglebone bitbake angstrom-image
> ...
> 
> and build the exact same image for a bunch of different boards/machines.
> 
> They've recently switched to using a repo manifest (which I think is a
> great idea): https://github.com/Angstrom-distribution/angstrom-manifest
> 
> I've been playing around with doing essentially the same thing for a
> "poky" distribution here (but it's still a work-in-progress and not
> really ready for prime time yet): https://github.com/twoerner/layer-repos
> 
> >   Seems
> > 
> > to me that is the ideal goal of Yocto, but I don't see many BSPs
> > listed under the project
> > downloads page.
> 
> Take a look here:
> http://layers.openembedded.org/layerindex/branch/master/layers this is
> the "master" list of all the "known" layers, recipes, etc. As you can
> see, there are quite a few BSP layers.

Furthermore, you can click on the "Machines" tab i.e.

http://layers.openembedded.org/layerindex/branch/master/machines/

Type in a keyword (or leave the box empty to see all) and hit Search, and 
you'll see a list of the matching machines provided by all the layers in the 
index.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

