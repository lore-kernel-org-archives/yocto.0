Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63526E0044D
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 12:52:53 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 01 May 2012 12:52:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="95172752"
Received: from unknown (HELO [10.255.12.170]) ([10.255.12.170])
	by AZSMGA002.ch.intel.com with ESMTP; 01 May 2012 12:52:50 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
In-Reply-To: <CACW_hTagO1jCa4OSL+VYb=LMXrRh3M2y-9++y0k3hsAvjP0_Yw@mail.gmail.com>
References: <CACW_hTYtBp5Px_7bYcKY86fqisZEgX7PvJS4kk6JPf2Xrn8TDA@mail.gmail.com>
	<4F9FF7E2.7010308@gmail.com>
	<CACW_hTagO1jCa4OSL+VYb=LMXrRh3M2y-9++y0k3hsAvjP0_Yw@mail.gmail.com>
Date: Tue, 01 May 2012 14:52:50 -0500
Message-ID: <1335901970.27056.129.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: bsp experiences
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
X-List-Received-Date: Tue, 01 May 2012 19:52:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-05-01 at 21:21 +0200, Frans Meulenbroeks wrote:
> 2012/5/1 Khem Raj <raj.khem@gmail.com>:
> > -----BEGIN PGP SIGNED MESSAGE-----
> > Hash: SHA1
> >
> > On 05/01/2012 07:21 AM, Frans Meulenbroeks wrote:
> >
> >>
> >> Tried to use yocto-bsp with the standard 7.0 setup (where there is
> >> a poky-denzil-7.0-build dir adjacent to the soruce dir). yocto-bsp
> >> when invoked complained with: IOError: [Errno 2] No such file or
> >> directory:
> >> '/home/frans/poky-denzil-7.0/scripts/../build/conf/bblayers.conf'
> >>
> >
> > Did you use the environment script (oe-init-build-env) to initialize
> > your build env ?
> >
> 
> Yes.
> I used the quick start guide to make sure I did not miss any step.
> 
> I did:
>     $ wget http://downloads.yoctoproject.org/releases/yocto/yocto-1.2/poky-denzil-7.0.tar.bz2
>      $ tar xjf poky-denzil-7.0.tar.bz2
>      $ source poky-denzil-7.0/oe-init-build-env poky-denzil-7.0-build
> as suggested by the manual.
> 
> In order to have yocto-bsp work without problem it might have been
> better to do something like
> source poky-denzil-7.0/oe-init-build-env poky-denzil-7.0/build
> 
> Not sure if the yocto-bsp script could be improved or the manual.
> 

The yocto-bsp script could be improved, and this was actually fixed by
this patchset:

http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=tzanussi/yocto-bsp-fixes-2219-2330

It wasn't pulled in in time, so until it hits 1.2.1, we'll have to just
document it, either using your suggestion or maybe it would make sense
to change the quickstart to use the following setup:

 $ tar xjf poky-denzil-7.0.tar.bz2
 $ cd poky-denzil-7.0
 $ source oe-init-build-env

Which seems easier to have people start with anyway, and also allows the
released script to work without the patchset...

Tom

> Frans
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



