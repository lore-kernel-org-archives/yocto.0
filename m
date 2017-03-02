Return-Path: <denis@denix.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34D0EE0049D; Thu,  2 Mar 2017 15:02:32 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mailout4.zoneedit.com (mailout4.zoneedit.com [64.68.198.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE6CAE0049D
	for <yocto@yoctoproject.org>; Thu,  2 Mar 2017 15:02:28 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mailout4.zoneedit.com (Postfix) with ESMTP id E0B9420B64;
	Thu,  2 Mar 2017 23:02:27 +0000 (UTC)
Received: from mailout4.zoneedit.com ([127.0.0.1])
	by localhost (zmo03-pco.easydns.vpn [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id P-7CIUumfCUz; Thu,  2 Mar 2017 23:02:27 +0000 (UTC)
Received: from mail.denix.org (pool-100-15-95-79.washdc.fios.verizon.net
	[100.15.95.79])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mailout4.zoneedit.com (Postfix) with ESMTPSA id C0C5B2088F;
	Thu,  2 Mar 2017 23:02:26 +0000 (UTC)
Received: by mail.denix.org (Postfix, from userid 1000)
	id 103E41623A6; Thu,  2 Mar 2017 18:02:26 -0500 (EST)
Date: Thu, 2 Mar 2017 18:02:26 -0500
From: Denys Dmytriyenko <denis@denix.org>
To: SatyaNarayana Sampangi <satya.2891@gmail.com>
Message-ID: <20170302230225.GR7350@denix.org>
References: <CAF1M0z6zfKC8QZsmfyCrf_zoSdzomeNa9SciPdGgaZpR+X3Tqw@mail.gmail.com>
	<1488469685.28256.36.camel@linux.intel.com>
	<CAF1M0z5VQxpnDurb7aW3DynL22-PnXo=MGMrvtaZ7ExsTMjK7g@mail.gmail.com>
	<CAJTo0LZTwVepmvsQTWNAW0gJiMtsYp9bF8Xa92oEP_gWW4QU2Q@mail.gmail.com>
	<20170302165637.GO7350@denix.org>
	<CAF1M0z40DS-FDwhomoP4bLkj29RrNDAHS6oB_Z5zLecfVoPC=Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAF1M0z40DS-FDwhomoP4bLkj29RrNDAHS6oB_Z5zLecfVoPC=Q@mail.gmail.com>
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
X-List-Received-Date: Thu, 02 Mar 2017 23:02:32 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Fri, Mar 03, 2017 at 02:31:42AM +0530, SatyaNarayana Sampangi wrote:
> Hi Denys,
> 
> I build, system with krogoth and meta-ti with both version same, after
> running on the beaglebone it is showing like below,
> 
> anything I need to change.
> 
> No lease, forking to background
> done.
> hwclock: can't open '/dev/misc/rtc': No such file or directory
> Starting syslogd/klogd: done
> INIT: Id "O0" respawning too fast: disabled for 5 minutes
> [   92.942038] random: nonblocking pool is initialized
> INIT: Id "O0" respawning too fast: disabled for 5 minutes
> 
> Note: This I did not get in Daisy 1.6 and meta-ti with compatible.
> 
> Could you help me here.

Would be nice to understand which kernel and which image you are building and 
using. The console in recent kernels moved from ttyO to ttyS, although our 
kernel has fallback mechanism and should still boot with ttyO, hence the 
question.

-- 
Denys


> On Thu, Mar 2, 2017 at 10:26 PM, Denys Dmytriyenko <denis@denix.org> wrote:
> 
> > On Thu, Mar 02, 2017 at 04:19:33PM +0000, Burton, Ross wrote:
> > > On 2 March 2017 at 16:14, SatyaNarayana Sampangi <satya.2891@gmail.com>
> > > wrote:
> > >
> > > > I am using beagle bone black, for which meta-ti layer and poky versions
> > > > compatible is daisy 1.6 as mention in the official website of yocto.
> > If I
> > > > upgrade the poky to the latest version, then compatibity will be lost.
> > Pls
> > > > help me out here.
> > > >
> > >
> > > http://git.yoctoproject.org/cgit/cgit.cgi/meta-ti/ has branches for
> > krogoth
> > > (2.1) and morty (2.2).  Where did you see that 1.6 is the last release
> > > supported?
> >
> > ^^^^^^^^^^ This is all that matters! The rest is just fluff...
> >
> > --
> > Denys
> >

