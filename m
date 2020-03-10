Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.2010.1583832566985972425
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Mar 2020 02:29:27 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 sendgrid.net}: limit exceeded (domain: streamunlimited.com, ip: 140.211.169.56, mailfrom: quentin.schulz@streamunlimited.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AD5EE0180F; Tue, 10 Mar 2020 02:29:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/, low
	*      trust
	*      [213.33.87.16 listed in list.dnswl.org]
Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1CE1E0180A
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2020 02:29:25 -0700 (PDT)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 48c8tW3rxLz5tlH;
	Tue, 10 Mar 2020 10:29:23 +0100 (CET)
Date: Tue, 10 Mar 2020 10:29:21 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>
Subject: Re: [yocto] What is the Yocto / OE recipe for u-boot-fw-utils how can append it?
Message-ID: <20200310092921.ezmnfiwemhcyno6a@qschulz>
References: <CAA=hcWTpbcM=_WCD6eRfD8jbq520R4jo++b=wC0m12d0cEJtQw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAA=hcWTpbcM=_WCD6eRfD8jbq520R4jo++b=wC0m12d0cEJtQw@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi JH,

On Tue, Mar 10, 2020 at 08:23:37PM +1100, JH wrote:
> Hi,
> 
> I could not find u-boot-fw-utils recipe from OE git repository, when I
> added it to build package, it did build u-boot-fw-utils/1_2019.07-r0
> from git://git.denx.de/u-boot.git, but I could not make a bbapend to
> it as I don't know what is the bb name.
> 

It was recently changed to libubootenv IIRC. Are you sure it was taken
from u-boot git repo?

In zeus you have both available if you have meta-swupdate layer but
u-boot-fw-utils is still present in openembedded-core.

In master, only libubootenv exists in openembedded-core.

Are you using master for poky/openembedded?

FWIW, what a recipe provides either at runtime or at buildtime is
(R)PROVIDES, c.f.:
http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-bsp/u-boot/libubootenv_0.2.bb?h=master

Quentin
