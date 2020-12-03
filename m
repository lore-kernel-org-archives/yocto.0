Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web10.7494.1606986359634211597
 for <yocto@lists.yoctoproject.org>;
 Thu, 03 Dec 2020 01:06:00 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4Cmqgm00dKz5tlG;
	Thu,  3 Dec 2020 10:05:55 +0100 (CET)
Date: Thu, 3 Dec 2020 10:05:54 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Andrew Loader <andrew.loader@nz.abb.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Re: [yocto] Using OVERRIDES to set variables from outside the recipe file
Message-ID: <20201203090554.vjv4qh66mrywpvx3@qschulz>
References: <VI1PR0602MB34879BEDC0B4831D84C6C3EADAF20@VI1PR0602MB3487.eurprd06.prod.outlook.com>
MIME-Version: 1.0
In-Reply-To: <VI1PR0602MB34879BEDC0B4831D84C6C3EADAF20@VI1PR0602MB3487.eurprd06.prod.outlook.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Andrew,

On Thu, Dec 03, 2020 at 03:45:41AM +0000, Andrew Loader wrote:
> In the bitbake user manual it has an example of how to set the variable value using the OVERRIDE variable
> 
> OVERRIDES = "architecture:os:machine"
> TEST = "default"
> TEST_os = "osspecific"
> TEST_nooverride = "othercondvalue"
> 
> Lets say this is in the recipe called "test_0.1.bb" and we remove the OVERRIDES line from it
> 
> If we want to the OVERRIDES value to configure the recipe externally say in local.conf as I do not want to change the recipe how would I do that?
> 

OVERRIDES is set in configuration files usually (always?). It can be
either in a distro if you use DISTROOVERRIDES, in a machine if you use
MACHINEOVERRIDES, and you might be able to add manually to it from
local.conf or other ways but I think you should go with DISTROOVERRIDES
or MACHINEOVERRIDES.

Then, the OVERRIDES (which contains MACHINEOVERRIDES:DISTROOVERRIDES
among other things) will be used in all recipes you can find and it
should just work.

You can use bitbake -e my-recipe | grep -e "^OVERRIDES=" to check the
content of the OVERRIDES variable. Note that righmost "OVERRIDE" is the
one which takes precedence over all others.

Quentin
