Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web10.12077.1585317349139299781
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Mar 2020 06:55:49 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 48pk0253fpz5tl9;
	Fri, 27 Mar 2020 14:55:46 +0100 (CET)
Date: Fri, 27 Mar 2020 14:55:45 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: stefan.wenninger@evopro-ag.de
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] Mechanism behind pkg_postinst_ontarget_${PN} #yocto
Message-ID: <20200327135545.qs7hbtnmd6ok2oss@qschulz>
References: <20200327130927.dwe5tooql4p4s2d4@qschulz>
 <17939.1585316517056146913@lists.yoctoproject.org>
MIME-Version: 1.0
In-Reply-To: <17939.1585316517056146913@lists.yoctoproject.org>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Stefan,

On Fri, Mar 27, 2020 at 06:41:57AM -0700, stefan.wenninger@evopro-ag.de wrote:
> Hi Quentin,
> I have now read up on the exact meaning of PROVIDES and PACKAGES and I do understand your response.
> It does sound like I am talking about PACKAGES since I did suspect PROVIDES to work like that.
> Well at least if PROVIDES would work like that, it would explain why my postinstall did not work previously.
> 
> But I did use PROVIDES, which I now know is basically just a alias.
> 
> Here is the situation I had before and how I solved it:
> 
> Previous attempt:
> *my_recipe.bb:*
> ...
> PROVIDES += "my_recipes_package"

Your recipe can now be used in DEPENDS of other recipes with both "my-recipe"
and "my-recipe-package". N.B.: please do not use underscore in recipe
names, it can have weird consequences (been there, trust me). I assume
it's only for the sake of an example so it's fine.

> RPROVIDES_${PN} += "my_recipes_package"
> 

Here, you mean, ${PN} (packaged named my-recipe which is the main
package usually) can also be known as my-recipes-package, it's another
alias, for different thing but still nothing crazy.

> pkg_postinst_ontarget_${PN} () {
> #!/bin/sh
> file=$D/home/root/test/test.txt
> printf "hello world\n" > $file
> }
> 
> *my_image.bb:*
> IMAGE_INSTALL += " my_recipes_package "
> 

"Please install my-recipes-package which is an alias to my-recipe
package."

This actually seems okay to me. So if no typo and no underscore, I'm
clueless.

Can you try that exact same recipe but with:
pkg_postinst_ontarget_my-recipes-package instead of
pkg_postinst_ontarget_${PN} ()?

And another try, with the exact same recipe (so not the modification
asked above), with IMAGE_INSTALL += "my-recipe"?

In any case, this seems to me to be bug that should be reported.

Quentin
