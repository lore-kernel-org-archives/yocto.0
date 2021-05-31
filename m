Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web11.41847.1622452174641918388
 for <yocto@lists.yoctoproject.org>;
 Mon, 31 May 2021 02:09:35 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4FtqHG6jBFz5tlG;
	Mon, 31 May 2021 11:09:30 +0200 (CEST)
Date: Mon, 31 May 2021 11:09:29 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Stefan Seefeld <stefan@seefeld.name>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] precedence problem with custom xserver-xf86-config_0.1.bbappend recipe
Message-ID: <20210531090929.il2xtwgahhtdczlt@qschulz>
References: <50c175fb-325e-e7e7-af17-f55bb4d18662@seefeld.name>
MIME-Version: 1.0
In-Reply-To: <50c175fb-325e-e7e7-af17-f55bb4d18662@seefeld.name>
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Stefan,

On Sun, May 30, 2021 at 06:10:48PM -0400, Stefan Seefeld wrote:
> Hello,
> 
> I'm trying to add a custom `xorg.conf` file to my yocto build, by defining a
> `recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend` recipe to
> my layer.
> 
> However, it seems like I always end up getting the (empty) `xorg.conf` file
> from `meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend`,
> even though poky's `meta-yocto-bsp` layer has lower priority (5) than my own
> (6).
> I do get my own `xorg.conf` file if I remove (or rename) the meta-yocto-bsp
> recipe, so this really looks like a precedence problem.
> 
> Any idea what I may be missing ?
> 

A common mistake would be the forgotten semi-colon and/or _prepend:
FILESEXTRAPATHS_prepend := "${THISDIR}/files"

Another common mistake is to not respect the tree layout of the original
path relative to the original recipe (or for that matter, the one you
want to override coming from the bbappend) for xorg.conf.
In that case, you can see that in meta-yocto-bsp, there's a parent
directory of xorg.conf that is not the one listed in
FILESEXTRAPATHS_prepend. You should add this directory in the path of
your bbappend.

https://pretalx.com/media/yocto-project-summit-2021/submissions/WTT3UV/resources/Demystifying_the_OVERRIDES_mechan_no6J6fb.pdf
slides 70 to 80 might help you. The recording should be available in a
few days/weeks.

Cheers,
Quentin
