Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
 by mx.groups.io with SMTP id smtpd.web12.9747.1584461087592967982
 for <yocto@lists.yoctoproject.org>;
 Tue, 17 Mar 2020 09:04:48 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: streamunlimited.com, ip: 213.33.87.16, mailfrom: quentin.schulz@streamunlimited.com)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 48hdKS6WBWz5tl9;
	Tue, 17 Mar 2020 17:04:44 +0100 (CET)
Date: Tue, 17 Mar 2020 17:04:43 +0100
From: "Quentin Schulz" <quentin.schulz@streamunlimited.com>
To: Emily <easmith5555@gmail.com>
Cc: yocto@lists.yoctoproject.org
Subject: Re: [yocto] How to PROVIDE boost-python
Message-ID: <20200317160443.6pyp7zuonargxrux@qschulz>
References: <CAAV2bM0B6pWK3ypKip+NJ4XzJbgqFNNXRrfHtiKMuAORUt+PCg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAAV2bM0B6pWK3ypKip+NJ4XzJbgqFNNXRrfHtiKMuAORUt+PCg@mail.gmail.com>
User-Agent: NeoMutt/20180716
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Emily,

On Tue, Mar 17, 2020 at 10:44:10AM -0500, Emily wrote:
> Hi all -
> 
> I'm trying to build an opca recipe (
> https://github.com/kratsg/meta-l1calo/blob/add/opcServer/recipes-core/opc-ua/opc-ua-server-gfex_git.bb)
> and it's giving me a build error like:
> 
> |
> /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot-native/usr/bin/aarch64-poky-linux/../../libexec/aarch64-poky-linux/gcc/aarch64-poky-linux/7.3.0/ld:
> cannot find -lboost_python-mt
> 
> Which seems to indicated I need to add boost-python to my list of DEPENDS.
> When I do that I get the error:
> 
> ERROR: Nothing PROVIDES 'boost-python' (but
> /local/d6/easmith5/rocko_bitbake/meta-l1calo/recipes-core/opc-ua/
> opc-ua-server-gfex_git.bb DEPENDS on or otherwise requires it). Close
> matches:
>   boost RPROVIDES boost-python
> 
> I've tried adding PACKAGECONFIG_pn-boost="python" to both my local.conf and
> to the image definition as I saw this online, but neither seems to work. It
> seems like boost-python is being built (I can see it in the list when I run
> oe-pkgdata-utils list-pkgs -p boost) but it doesn't seem to be available at
> build for this recipe.
> 
> If I remove boost from my list of DEPENDS I get an error about that, so
> obviously boost itself is available at build for the original recipe. I've
> also tried adding boost-native to DEPENDS, also did not work.
> 
> Is there something obvious I'm missing, or some trick to making
> boost-python available at build for this other recipe?
> 

Ok so two things.

Yes, I'd say you need python in PACKAGECONFIG for boost. However, it
seems it's already part of the default value of PACKAGECONFIG, c.f.
http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-support/boost/boost.inc?h=master#n45
so if no bbappend is overriding it, I'd say you're safe. Better check
with the version in your layer that it's there.
If you don't want to check manually, try `bitbake -e boost | grep -e
"^PACKAGECONFIG="`

DEPENDS contains only recipes (well, PROVIDES but PROVIDES has the name
of the recipe in it at all times) while RDEPENDS_* (usually ${PN}*) contains
only packages.

So you need to DEPENDS on boost, not boost-python. That should be enough
hopefully!

Quentin
