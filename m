Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.2932.1580720929561558706
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Feb 2020 01:08:50 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 sendgrid.net}: limit exceeded (domain: streamunlimited.com, ip: 140.211.169.56, mailfrom: quentin.schulz@streamunlimited.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05FA3E01697; Mon,  3 Feb 2020 01:08:49 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 294A4E007EE
	for <yocto@yoctoproject.org>; Mon,  3 Feb 2020 01:08:47 -0800 (PST)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 48B27K4vhRz5tlD;
	Mon,  3 Feb 2020 10:08:45 +0100 (CET)
Date: Mon, 3 Feb 2020 10:08:44 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] How to make a local patch without a commit number, or will not be possible?
Message-ID: <20200203090844.gi4ts6ivdmmvmswi@qschulz>
References: <CAA=hcWSYJQSpDxwmYO=iKj50Cxxawq+N+E_ysXgEmE03AZPGEw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAA=hcWSYJQSpDxwmYO=iKj50Cxxawq+N+E_ysXgEmE03AZPGEw@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi JH,

On Mon, Feb 03, 2020 at 06:06:18PM +1100, JH wrote:
> Hi,
> 
> I want to make a patch file for mx6ullevk.h in
> meta-freescale/recipes-bsp/u-boot/u-boot-imx_2017.03.bb, to customize
> mtdparts, bootcmd and bootargs as I could not find a simple way to do
> it in a bbapaend, but I got an error of unable to fetch URL from any
> source because the mx6ullevk.h.patch ls my local one, it does have a
> commit number. Is it possible to do it or not?
> 

I think you're looking for `git format-patch`. This creates a patch for
the latest commit (HEAD). Take this .patch and add it to your SRC_URI in
a bbappend.

Also as Gabrielle said, U-Boot is having more and more options in
Kconfig instead of board header files, so maybe there's an Kconfig
option you can modify with menuconfig to set the mtdparts, bootcmd
and/or bootargs in which case I suggest you to follow what Gabrielle
said.

Note that you could technically pass a local git repo by changing the
URL to git:///path/to/local/git/repo (that should be enough) and then
you'd be able to use your local SRCREV (BUT, that should be used just
for *testing*).

BR,
Quentin
