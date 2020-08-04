Received: from bsmtp.bon.at (bsmtp.bon.at [213.33.87.14])
 by mx.groups.io with SMTP id smtpd.web12.1108.1596528507855308475
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Aug 2020 01:08:29 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.14, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp.bon.at (Postfix) with ESMTPSA id 4BLS7C61r5z5tlC;
	Tue,  4 Aug 2020 10:08:21 +0200 (CEST)
Date: Tue, 4 Aug 2020 10:08:19 +0200
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: "Soi, Sheng Leong" <sheng.leong.soi@intel.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] How to disable specific default recipe to be included in Yocto? #linux #yocto #cups #hplip
Message-ID: <20200804080819.3ojpzldilrinrtco@qschulz>
References: <TrZe.1596525506407384003.CLar@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <TrZe.1596525506407384003.CLar@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Sheng Leong,

On Tue, Aug 04, 2020 at 12:18:26AM -0700, Soi, Sheng Leong wrote:
> Hi,
> 
> Does anyone here know how to disable specific default recipe (e.g. CUPS and HPLIP) to be included in Yocto image?
> 

Start from a core-image-minimal and add packages manually. Only the
packages that are specified to be installed explicitly in your image
recipe and the packages specified in RDEPENDS and RRECOMMENDS of those
packages will be installed in the recipe.

Some packages are also pulled because of configuration files (machine,
distro or local.conf).

If there are RRECOMMENDS you don't want, you can use BAD_RECOMMENDATIONS
in your image recipe to ask the image to not pull them in.

If it's an RDEPENDS that you don't want, maybe it's pulled because of a
selected PACKAGECONFIG that you don't need, in that case create a
bbappend for that recipe and set PACKAGECONFIG accordingly.

If that still does not do it, you'll have to dig deeper into what can be
removed from RDEPENDS and for which reason (is it a mistake? is is safe
in one specific configuration).

The way to know which package is pulling which package is to use `-g`
as argument of bitbake. DO not attempt to create a scheme/drawing/image
from the dot files, they are too big for dot to handle properly (takes
hours and the result is unusable). "recipeA:do_foo" => "recipeB:do_bar"
means that do_foo task from recipeA depends on do_bar from recipeB.

Hope that helps, if not, please be a bit more explicit with what you
want to do, what's happening and what you're expecting, so we can help
you the best way we can.

Cheers,
Quentin
