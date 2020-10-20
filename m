Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web09.3472.1603188183924935576
 for <yocto@lists.yoctoproject.org>;
 Tue, 20 Oct 2020 03:03:04 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4CFq1x5DYsz5tlJ;
	Tue, 20 Oct 2020 12:03:01 +0200 (CEST)
Date: Tue, 20 Oct 2020 12:03:00 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Zoltan Kerenyi Nagy <kerenyi.nagy.zoltan@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: Private: Re: [yocto] network-manager #yocto #nmcli
Message-ID: <20201020100300.wazte5ty3trgigdp@qschulz>
References: <20201020085740.wmadecvuajrpcit7@qschulz>
 <2995.1603187726816843811@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <2995.1603187726816843811@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Please keep the mailing list in copy so everyone can benefit from your
progress/the solution, thanks!

On Tue, Oct 20, 2020 at 02:55:26AM -0700, Zoltan Kerenyi Nagy wrote:
> I'll do this, thanks.
> 
> Interestingly there is a line in the recipe file, which suggests that nmtui will be included.
> -with-nmtui=yes \

This is an option at build time (i.e. for the **recipe**). It just
configures the piece of SW you're trying to build.

A bitbaked recipe's outcome is **packages**. In **most** cases, the main
package is named after the recipe (which is usually a source of
confusion for people). However, to slim down the main package, most
recipes split their output into multiple packages.

In your case, networkmanager is configured to be compiled with nmtui
support. However, the recipe is asked to put the resulting
binaries/conf files/libs into a separate package (called
networkmanager-nmtui).

When you're installing networmanager, you're not installing the whole
outcome of networkmanager recipe (nor the recipe itself) but the main
package that is the outcome of said recipe. It might not contain all you
want, hence the need for installing other packages for enabling all
features you want/need.

Hope this helps,
Quentin
