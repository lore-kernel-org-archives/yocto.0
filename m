Received: from mail5.wrs.com (mail5.wrs.com [192.103.53.11])
 by mx.groups.io with SMTP id smtpd.web12.399.1586384012896599635
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Apr 2020 15:13:33 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: windriver.com, ip: 192.103.53.11, mailfrom: randy.macleod@windriver.com)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id 038MCQUx032766
	(version=TLSv1 cipher=AES256-SHA bits=256 verify=FAIL);
	Wed, 8 Apr 2020 15:12:37 -0700
Received: from [172.25.44.3] (172.25.44.3) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.487.0; Wed, 8 Apr
 2020 15:12:15 -0700
Subject: Re: [yocto] Fw: Reducing rootfs size in yocto
To: Mikko Rapeli <mikko.rapeli@bmw.de>, <ajama@hcl.com>
CC: <yocto@lists.yoctoproject.org>
References: <HK0PR04MB29144DAFD598E96154278145B4CD0@HK0PR04MB2914.apcprd04.prod.outlook.com>
 <HK0PR04MB291491325C57709CD3461BB9B4CD0@HK0PR04MB2914.apcprd04.prod.outlook.com>
 <20200330065748.GS104502@korppu>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <a7a5729d-d626-4699-44dc-8ad0c4b50657@windriver.com>
Date: Wed, 8 Apr 2020 18:12:11 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200330065748.GS104502@korppu>
X-Originating-IP: [172.25.44.3]
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 2020-03-30 2:57 a.m., Mikko Rapeli wrote:
> Hi,
> 
> Generic approaches for reducing yocto target image size where buildhistory
> is an important source of information:
> 
>   * review and minimize distro features, enable only what you need
>     https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#ref-features-distro
> 
>   * review and minimize image recipe, install only those image features and packages
>     which you need
>     https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#ref-features-image
> 
>   * review the needed binary packages: traverse the tree of dependencies what you need,
>     review every single recipe and change PACKAGECONFIG or build flags to remove
>     features which you do not need. This it may be possible to remove large set
>     of dependencies from images, e.g. language bindings, debug tools. In some cases
>     one just needs a single binary executable or shared library but it is bundled
>     in a larger binary package with more complex dependencies. For these cases
>     add a bbappend to custom layers to change the packaging to only include what
>     you need.
>     https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#var-PACKAGECONFIG
> 
>   * change compiler flags from default O2 to Os optimization. This can work for
>     some recipes which are not prerformance critical or to the whole build. Note
>     that many SW components break this in their own build scripts by adding
>     O2 or even O3 by default. Check from buildhistory that binary sizes go smaller
>     after switch from O2 to Os and review every important recipe which did not.
>     You may be able to save up to 15% in rootfs size this way, but all depends
>     on the details of SW components and image contents.
>     see poky/meta/conf/bitbake.conf
> 
> I've followed this for multiple products and found out that poky is nice to work with
> but BSP layers add or depend on all kinds of extra things that products do not need.
> Thus I have ended by BBMASK'ing away large parts of BSP layer recipes in distro
> configs. This with multiple x86 and ARM BSP layers from various SoC vendors.

I've also seen this problem and was frustrated by it.

The BSP vendors/developers want to test the full feature set of the
hardware but they often don't bother stripping out packages after
confirming that everything works. This results in bloat that can
be a problem for some users.

Using BBMASK is a good coping mechanism! :)

It would also be good if BSP developers split the BSP into the
essential elements and extras. Where to draw the line between
two such categories can tricky. One could also have finer-grained
packagegroups but splitting things into essential and extras is
a good start.

In WR Linux, we have a setup tool that let's you add 'features'
This comes from a layer that improves ease of use for some people:
 
https://github.com/WindRiver-Labs/wr-template/blob/WRLINUX_10_19_BASE/README 

and is always used in the WR Linux distro.

And as can be seen here:
https://github.com/WindRiver-Labs/wrlinux/tree/WRLINUX_10_19_BASE/wrlinux-distro/templates/feature/bsp-extras

There is a generic BSP independent feature that you can add to
a setup:

feature/bsp-extras

     Adds some useful tools defined by the BSP_EXTRAS_PACKAGES option
     in the BSP layer.

     To see the list of available tools, run the bitbake -e command in
     a sourced terminal, and look for the BSP_EXTRAS_PACKAGES.

Maybe this description will help get BSP developers to agree on
doing something similar regardless of the 'setup/wr-template' layer.

Good luck and keep your BSPs minimal!

../Randy

> 
> Also, RTFM :)
> 
> https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#building-a-tiny-system
> 
> Hope this helps,
> 
> -Mikko
> 
> 
> 
> 


-- 
# Randy MacLeod
# Wind River Linux
