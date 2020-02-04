Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.3622.1580806319474947581
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Feb 2020 00:52:00 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=parse error for token &{10 18 sendgrid.net}: limit exceeded (domain: streamunlimited.com, ip: 140.211.169.56, mailfrom: quentin.schulz@streamunlimited.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B41AAE016A7; Tue,  4 Feb 2020 00:51:58 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 888E9E007AE
	for <yocto@yoctoproject.org>; Tue,  4 Feb 2020 00:51:56 -0800 (PST)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 48BdjR2rT3z5tlL;
	Tue,  4 Feb 2020 09:51:55 +0100 (CET)
Date: Tue, 4 Feb 2020 09:51:54 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Ryan Harkin <ryan.harkin@linaro.org>
Cc: yocto@yoctoproject.org, Nicolas Dechesne <nicolas.dechesne@linaro.org>
Subject: Re: [yocto] Building and selecting multiple kernel versions
Message-ID: <20200204085153.6wsex564rtrknfuq@qschulz>
References: <CAD0U-h+q4k-EywV8XEfZ2nsoHoRQaNyRy77E2kRLuos8dAmNTA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAD0U-h+q4k-EywV8XEfZ2nsoHoRQaNyRy77E2kRLuos8dAmNTA@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Ryan,

On Mon, Feb 03, 2020 at 05:34:23PM +0000, Ryan Harkin wrote:
> Hello all,
> 
> I'm looking for advice on how to support multiple kernel versions in my
> distro with minimal changes, and minimal disruption to my users.
> 
> Some background:
> 
> I have a legacy Sumo based distro with an image config, and a machine
> config, with the machine using a 4.9 kernel. Last year, I upgraded
> everything to Warrior, and moved to a 4.19 kernel.
> 
> Some of my users who are migrating from Sumo, wish to keep their 4.9
> kernel. So I'm trying to work out how to handle this in the simplest way.
> 
> I know that I can add a 4.9 recipes to my Warrior branches, set
> PREFERRED_VERSION in my distro.conf. But I don't want to change the default
> preferred version globally. And I don't really want users to update the
> distro.conf. Ideally, they should be able to take what I give them and
> "just" build it to get a 4.9 or 4.19 variant.
> 

You can make two machine configuration files. One with
PREFERRED_VERSION_virtual/kernel = "4.9%" and the other with 4.19.

They pick the correct machine when building, they should expect the
correct kernel in output. Only applies to images built for this machine
so I guess that's what you're looking for?

> Ideally, I don't want to *have* to build both kernels and then create two
> images. I expect that will cause confusion and lead to people flashing the
> wrong images. So I'd prefer it to be either/or. Of course, I have to test
> all of this, so I want to be able to build both variants in CI, which makes
> editing distro.conf even more  unattractive.
> 

Same image (POV of bitbake <image>) but different machines, does that
match your requirements?

FWIW, you can pass MACHINE= to the command line just before bitbake
<image> making it rather obvious which machine they pick.

Quentin
