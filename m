Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2FCFDE01507
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2013 02:41:25 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 18 Sep 2013 02:38:21 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,929,1371106800"; d="scan'208";a="379942422"
Received: from bensonmi-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.123.212])
	by orsmga001.jf.intel.com with ESMTP; 18 Sep 2013 02:41:23 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Anders Darander <anders@chargestorm.se>, Brad Litterell <brad@evidence.com>
Date: Wed, 18 Sep 2013 10:41:22 +0100
Message-ID: <3955475.5Ihbqp1Ot3@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-30-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <20130918084756.GA12397@ad.chargestorm.se>
References: <E51394554A503C4E852F9BEE46B03E8DEFE76C@TI-ODIN.tasernet.com>
	<20130918084756.GA12397@ad.chargestorm.se>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: QMake & externalsrc incompatible?
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
X-List-Received-Date: Wed, 18 Sep 2013 09:41:26 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 18 September 2013 10:47:56 Anders Darander wrote:
> * Brad Litterell <brad@evidence.com> [130917 21:20]:
> > I have a number of QT components that have qmake style .pro files.
> > 
> > In my recipe I inherit both externalsrc & qmake2.  I'm using qmake2 based
> > on the quicky sample recipe since I don't need X11 or the other GUI
> > libraries.
>
> I've got a similar recipe setup for some of my coworkers. The main
> difference being that we're inheriting qt4e instead of qmake2.
> 
> > In the bitbake work folder, the generated run.do_configure script
> > resembles
> > this:
> > 
> > cd /home/brad/ecom/build/toolchain/work/.../ecomapi-2.0-r0/ecomapi-2.0/
> > ...
> > PROFILES="`ls *.pro`"
> > 
> > This is the location where a tarball would normally be unpacked, but in
> > this case I'm using externalsrc and the source files are not here. 
> > Therefore the ls *.pro doesn't return anything for the automatic profile
> > detection and the build fails.
> > 
> > My recipe is very simple (removing the description & licensing):
> > 
> > PV = "2.0"
> > inherit externalsrc qmake2
> > S = "${OEBASE}/ecomapi"
> 
> To make it work correctly, I used:
> 
> S := "${THISDIR}/chargemanager"
> B := "${S}"
> 
> You shouldn't need to use :=, I was required to do that as I needed to
> use THISDIR (and thus I need the expansion to occur immediately).
> 
> Just setting S wasn't enough for me, I needed to also define B. Note,
> though, that this means that you can't build your recipe for multiple
> arch's etc.

This just looks like the value of PROFILES in qmake_base.bbclass needs to be 
fixed to look in ${S} instead of the current directory (which would be ${B}). 
I'm not sure if any other tweaks would be needed for qmake to allow S != B 
though.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

