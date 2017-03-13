Return-Path: <denis@denix.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2422E00546; Mon, 13 Mar 2017 10:00:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84978E004D2
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 09:59:56 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id AA80F20B94;
	Mon, 13 Mar 2017 16:59:54 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo03-pco.easydns.vpn [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 0L6FoFMA1lOr; Mon, 13 Mar 2017 16:59:54 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-85-143.washdc.fios.verizon.net
	[100.15.85.143])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id 897E1208FB;
	Mon, 13 Mar 2017 16:59:53 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id 2863E1623E7; Mon, 13 Mar 2017 12:59:53 -0400 (EDT)
Date: Mon, 13 Mar 2017 12:59:53 -0400
From: Denys Dmytriyenko <denis@denix.org>
To: SatyaNarayana Sampangi <satya.2891@gmail.com>
Message-ID: <20170313165953.GH15664@denix.org>
References: <CAF1M0z6zfKC8QZsmfyCrf_zoSdzomeNa9SciPdGgaZpR+X3Tqw@mail.gmail.com>
	<1488469685.28256.36.camel@linux.intel.com>
	<CAF1M0z5VQxpnDurb7aW3DynL22-PnXo=MGMrvtaZ7ExsTMjK7g@mail.gmail.com>
	<CAJTo0LZTwVepmvsQTWNAW0gJiMtsYp9bF8Xa92oEP_gWW4QU2Q@mail.gmail.com>
	<20170302165637.GO7350@denix.org>
	<CAF1M0z40DS-FDwhomoP4bLkj29RrNDAHS6oB_Z5zLecfVoPC=Q@mail.gmail.com>
	<20170302230225.GR7350@denix.org>
	<CAF1M0z7a9xcTVZgi=UpfiGoEq+3GPKpU+Uh1QvfzTiwFKY78-g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAF1M0z7a9xcTVZgi=UpfiGoEq+3GPKpU+Uh1QvfzTiwFKY78-g@mail.gmail.com>
User-Agent: Mutt/1.5.20 (2009-06-14)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Devtool: Script Not found
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
X-List-Received-Date: Mon, 13 Mar 2017 17:00:01 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Mar 03, 2017 at 10:06:21AM +0530, SatyaNarayana Sampangi wrote:
> Hi Denys,
> 
> I am using linux-ti-staging 4.4,
> 
> zImage--4.4.41+git0+7c580a51af-r22a-beaglebone-20170302194632.bin
> 
> Image: core-image-minimal
> 
> Could you pls clarify where i am going wrong?

Numerous people are reporting 4.4 working for them just fine. Not sure what 
defconfig you are using. Have you tried using am335x-evm machine instead?


> On Fri, Mar 3, 2017 at 4:32 AM, Denys Dmytriyenko <denis@denix.org> wrote:
> 
> > On Fri, Mar 03, 2017 at 02:31:42AM +0530, SatyaNarayana Sampangi wrote:
> > > Hi Denys,
> > >
> > > I build, system with krogoth and meta-ti with both version same, after
> > > running on the beaglebone it is showing like below,
> > >
> > > anything I need to change.
> > >
> > > No lease, forking to background
> > > done.
> > > hwclock: can't open '/dev/misc/rtc': No such file or directory
> > > Starting syslogd/klogd: done
> > > INIT: Id "O0" respawning too fast: disabled for 5 minutes
> > > [   92.942038] random: nonblocking pool is initialized
> > > INIT: Id "O0" respawning too fast: disabled for 5 minutes
> > >
> > > Note: This I did not get in Daisy 1.6 and meta-ti with compatible.
> > >
> > > Could you help me here.
> >
> > Would be nice to understand which kernel and which image you are building
> > and
> > using. The console in recent kernels moved from ttyO to ttyS, although our
> > kernel has fallback mechanism and should still boot with ttyO, hence the
> > question.
> >
> > --
> > Denys
> >
> >
> > > On Thu, Mar 2, 2017 at 10:26 PM, Denys Dmytriyenko <denis@denix.org>
> > wrote:
> > >
> > > > On Thu, Mar 02, 2017 at 04:19:33PM +0000, Burton, Ross wrote:
> > > > > On 2 March 2017 at 16:14, SatyaNarayana Sampangi <
> > satya.2891@gmail.com>
> > > > > wrote:
> > > > >
> > > > > > I am using beagle bone black, for which meta-ti layer and poky
> > versions
> > > > > > compatible is daisy 1.6 as mention in the official website of
> > yocto.
> > > > If I
> > > > > > upgrade the poky to the latest version, then compatibity will be
> > lost.
> > > > Pls
> > > > > > help me out here.
> > > > > >
> > > > >
> > > > > http://git.yoctoproject.org/cgit/cgit.cgi/meta-ti/ has branches for
> > > > krogoth
> > > > > (2.1) and morty (2.2).  Where did you see that 1.6 is the last
> > release
> > > > > supported?
> > > >
> > > > ^^^^^^^^^^ This is all that matters! The rest is just fluff...
> > > >
> > > > --
> > > > Denys
> > > >
> >

