Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.3694.1581076534514557936
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Feb 2020 03:55:35 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 sendgrid.net}: limit exceeded (domain: streamunlimited.com, ip: 140.211.169.56, mailfrom: quentin.schulz@streamunlimited.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0822AE016DB; Fri,  7 Feb 2020 03:55:34 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00FD6E016D9
	for <yocto@yoctoproject.org>; Fri,  7 Feb 2020 03:55:32 -0800 (PST)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 48DYdk3dXkz5tl9;
	Fri,  7 Feb 2020 12:55:22 +0100 (CET)
Date: Fri, 7 Feb 2020 12:55:21 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: JH <jupiter.hce@gmail.com>
Cc: Pelle Windestam <Pelle.Windestam@tagmaster.com>,
	Meta Freescale <meta-freescale@yoctoproject.org>,
	Yocto discussion list <yocto@yoctoproject.org>,
	linux-mtd <linux-mtd@lists.infradead.org>,
	Andy Pont <andy.pont@sdcsystems.com>,
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] [yocto] Support UBI u-boot
Message-ID: <20200207115521.i7flzwf6e24obq5r@qschulz>
References: <CAA=hcWSCZROrpDBWV5ZAA+LV6j0cjRSKxyjonOfWS4mCZAtdHg@mail.gmail.com>
 <em86bbcd60-f004-4acb-b508-4471dac5c7c1@andys-imac.leeshillfarm.local>
 <CAA=hcWQsP1N58iqrxEggZBdSksgHk+gfuG7yz0+C3G7o0=DzOw@mail.gmail.com>
 <c159fe1d7cc14f5c80878fe81a957bb4@tagmaster.com>
 <CAA=hcWQPrfb3UrYsfyhs4as8wGDf5DsyEtF=cgCo4gJprx=b1Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAA=hcWQPrfb3UrYsfyhs4as8wGDf5DsyEtF=cgCo4gJprx=b1Q@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi JH,

On Fri, Feb 07, 2020 at 07:52:35PM +1100, JH wrote:
> Hi Pelle,
> 
> Aplogize for cross posting.
> 
> On 2/7/20, Pelle Windestam <Pelle.Windestam@tagmaster.com> wrote:
> > In my case u-boot uses a default config called imx8qxp_var_som_defconfig
> > stored under the configs directory in u-boot (not sure if its in the
> > official repositories, I use a vendor supplied u-boot repo, but the
> > procedure should be the same either way), then I have created a
> > .bbappend-file for the u-boot recipe, and added a patch that modifies the
> > defconfig file to include the options I want to enable. Then as u-boot is
> > built, it will use the patched defconfig with the appropriate options
> > enabled. In the meta-freescale layer the u-boot recipes are under
> > meta-freescale/recipes-bsp/u-boot.
> 
> Thanks for the tip, that is quite helpful. I created bbappend file,
> run the make menuconfig to enable NAND and CONFIG_CMD_UBI, but then
> failed in build, missing all MTD, NAND, UBI references, the MTD, NAND,
> UBI are all selected, what I could be missing?
> 
> /build/Installer/sa_platform_build/Source/Yocto/build/tmp-glibc/work/solar-oe-linux-gnueabi/u-boot-imx/2017.03-r0/git/cmd/ubi.c:448:
> undefined reference to `mtdparts_init'

This function is not defined. So you look it up in the sources, find
where it's defined.

Is it in a file which is compiled/included somewhere?
Is it surrounded by #ifdef? And by surrounded, I mean the #ifdef can
be several thousands of lines above the function definition.

In that case, I couldn't find the sources of u-boot-imx (didn't take the
time) but from upstream:
https://elixir.bootlin.com/u-boot/v2017.03/source/cmd/nand.c#L35

It's surrounded by #if defined(CONFIG_CMD_MTDPARTS) so you need
CMD_MTDPARTS to be enabled. Do the same for all the other calls. There's
no magic thing, you thus have to look it up yourself most of the time.
Even though arguably, that's a mistake from upstream (there should be a
dependency on MTDPARTS in Kconfig, anyway...).

Quentin
