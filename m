Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE8CAE00460
	for <yocto@yoctoproject.org>; Sat, 26 Oct 2013 07:54:29 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r9QEsNt1019049
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 26 Oct 2013 07:54:23 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.20.239) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.2.347.0; Sat, 26 Oct 2013 07:54:22 -0700
Message-ID: <526BD79D.20501@windriver.com>
Date: Sat, 26 Oct 2013 10:54:21 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:24.0) Gecko/20100101 Thunderbird/24.0.1
MIME-Version: 1.0
To: Diego Sueiro <diego.sueiro@gmail.com>, Mike Lewis <mikelewis@alphalem.com>
References: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>	<CAMCfZKF_Rp=uds8tnDPSD9k3GO5dEiHSx9WfYjZ0yPkmh_9YPg@mail.gmail.com>	<CAMCfZKFh8iJH4655mzFveFYfz8ebLXkGftSa-MR5mEcMEFV8Vw@mail.gmail.com>	<CADkTA4MgxmiOofDLynbOLR=hV-KQ1ic+Eagjm0yetYOtB6FJzw@mail.gmail.com>	<CAMCfZKF3aHG4wFMRx2XcdroJJ6ga5v6KHF5DbBTWV7jXOGNX-g@mail.gmail.com>	<525FDD08.90400@windriver.com>	<CAMCfZKHz82sPsHXjqxbFDJjFNi7ck+BS=_OtyGmb2FYDAxoe1A@mail.gmail.com>	<525FE3C9.3070003@windriver.com>	<CAMCfZKGUYAcO5FtOKC9iP_XZjRxJ_Xq12ERN=BL_JHA7FJW51w@mail.gmail.com>	<5260BDA6.4020807@windriver.com>	<CAMCfZKFf3iJCyjMgGQ=y6ng6Kh3_MeEMymgZTE=bTnLpBGN9Mg@mail.gmail.com>	<5261974C.7010202@windriver.com>
	<5266A665.8030303@alphalem.com>	<52686723.4080305@windriver.com>	<CAMCfZKG1A_c-oy6KLZuctX4Nmca7f1ryBKRaR-sqFVVqNwuSrA@mail.gmail.com>	<CADkTA4OWiOmDYDskpe6=uCX+XEE8R0C2aUxjCph+tAjdX=Ae2Q@mail.gmail.com>	<526B18BC.5050302@alphalem.com>
	<CAMCfZKHuH4egX=Sid-fSaEscGBr_mX-3PC492syD1hD3+fY+rQ@mail.gm!
	ail.com>
In-Reply-To: <CAMCfZKHuH4egX=Sid-fSaEscGBr_mX-3PC492syD1hD3+fY+rQ@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Custom defconfig is not used
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 26 Oct 2013 14:54:32 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-10-26 6:57 AM, Diego Sueiro wrote:
> Bruce,
>
> We have two scenarios here:
>
>  1. bbapend with full defconfig replacement
>  2. bbapend with config fragments
>
> The first scenario just worked when using FILESPATH_prepend. For me it
> does not make sense, since on YP manual says that
> FILESEXTRAPATHS_prepend must be use [1].
>
> The second scenario did not worked even changing to FILESPATH_prepend.
>

No problem. I'm going to continue looking into this, since we do want
consistent behaviour with all the methods.

Leave it with me and I'll take care of it, I just wanted to be sure you
could move forward while I dig into things (now that I'm back in the
office).

Bruce


>
> [1] -
> http://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#var-FILESEXTRAPATHS
>
>
>
> Regards,
>
> --
> *dS
> Diego Sueiro
>
> /*long live rock 'n roll*/
>
>
> 2013/10/25 Mike Lewis <mikelewis@alphalem.com
> <mailto:mikelewis@alphalem.com>>
>
>     Bruce: yep, fixed my issue. Sorry for the bother!
>
>     Diego: thanks for the solution!
>
>     - Mike
>
>
>     On 10/25/2013 11:44 AM, Bruce Ashfield wrote:
>
>         On Fri, Oct 25, 2013 at 7:43 AM, Diego Sueiro
>         <diego.sueiro@gmail.com <mailto:diego.sueiro@gmail.com>> wrote:
>
>             Bruce,
>
>             Regarding the defconfig not used, I've found this thread on
>             Angstrom devel
>             ML:
>             http://www.mail-archive.com/__angstrom-distro-devel@__linuxtogo.org/msg06721.html
>             <http://www.mail-archive.com/angstrom-distro-devel@linuxtogo.org/msg06721.html>
>
>             I've replaced "FILESEXTRAPATHS_prepend" with
>             "FILESPATH_prepend" and removed
>             the custom "do_configure_prepend" function and bitbake is
>             now using my
>             defconfig.
>             So, it seems that there is an issue with FILESEXTRAPATHS
>             variable.
>
>         Aha. That does make sense.
>
>         Mike: does that same change fix your issues ?
>
>         Bruce
>
>             Regards,
>
>             --
>             *dS
>             Diego Sueiro
>
>             /*long live rock 'n roll*/
>
>
>             2013/10/23 Bruce Ashfield <bruce.ashfield@windriver.com
>             <mailto:bruce.ashfield@windriver.com>>
>
>                 On 13-10-22 12 <tel:13-10-22%2012>:23 PM, Mike Lewis wrote:
>
>                     Hi Bruce,
>
>                     I'm trying to accomplish the nearly the same thing
>                     (i.e. adding config
>                     fragment) and I'm having the same issue at the
>                     do_patch step. Were you
>                     able to reproduce this on your end?
>
>
>                 Mike,
>
>                 Is you config/layer somewhere than I can have a look at
>                 it ? I was trying
>                 some builds here, and my tests are working. But I'd like
>                 to try it
>                 with your config as well.
>
>                 Bruce
>
>
>                     Thanks,
>                     Mike
>
>                     On 10/18/2013 01:17 PM, Bruce Ashfield wrote:
>
>                         On 13-10-18 05 <tel:13-10-18%2005>:17 AM, Diego
>                         Sueiro wrote:
>
>
>                             2013/10/18 Bruce Ashfield
>                             <bruce.ashfield@windriver.com
>                             <mailto:bruce.ashfield@windriver.com>
>                             <mailto:bruce.ashfield@__windriver.com
>                             <mailto:bruce.ashfield@windriver.com>>>
>
>                                   I fell behind today .. i had 2300
>                             unread email to start this
>                             morning :)
>                                   Is there a way that I can get a copy
>                             of your recipes and layers ?
>                             If
>                                   I can do a build myself, I can easily
>                             debug and fix this ..
>                                   otherwise, we'll
>                                   go back and forth many times debugging.
>
>                                   Cheers,
>
>                                   Bruce
>
>
>                             I'm using the environment provided by
>                             Angstrom from it's github setup
>                             scripts.
>                             If you want to exactly reproduce it you need to:
>
>                                   git clone
>                             https://github.com/Angstrom-__distribution/setup-scripts.git
>                             <https://github.com/Angstrom-distribution/setup-scripts.git>
>                                   cd setup-scripts
>                                   git checkout angstrom-v2013.06-yocto1.4
>                                   MACHINE=beaglebone ./oebb.sh config
>                             beaglebone
>
>                             Here is the setup and files for meta-mine:
>
>                             bblayers.conf:
>
>                                   BBLAYERS = \"
>
>                                       ...
>                                       ${TOPDIR}/sources/meta-mine \
>                                       "
>
>                             meta-mine/conf/layer.conf:
>
>                                   # We have a conf and classes
>                             directory, append to BBPATH
>                                   BBPATH .= ":${LAYERDIR}"
>                                   # We have a recipes directory, add to
>                             BBFILES
>                                   BBFILES += "${LAYERDIR}/recipes*/*/*.bb
>                                   ${LAYERDIR}/recipes*/*/*.__bbappend"
>                                   BBFILE_COLLECTIONS += "mine-layer"
>                                   BBFILE_PATTERN_mine-layer :=
>                             "^${LAYERDIR}/"
>                                   BBFILE_PRIORITY_mine-layer = "10"
>                                   LAYERDEPENDS_mine-layer = "angstrom-layer"
>
>                             meta-mine/recipes-kernel/__linux/linux-mainline_3.8.__bbappend:
>
>                                   FILESEXTRAPATHS_prepend :=
>                             "${THISDIR}/${PN}-3.8:"
>                                   inherit kernel
>                                   require
>                             recipes-kernel/linux/linux-__yocto.inc
>                                   COMPATIBLE_MACHINE_beaglebone =
>                             "(beaglebone)"
>                                   SRC_URI += " file://config-addons.cfg "
>
>                             meta-mine/recipes-kernel/__linux/linux-mainline-3.8/__config-addons.cfg:
>
>                                   CONFIG_WATCHDOG_NOWAYOUT=y
>                                   CONFIG_NTFS_FS=y
>                                   CONFIG_NTFS_RW=y
>
>
>
>                             But I think that instead of using the whole
>                             Angstrom you can just use
>                             poky and meta-beagleboard/common-bsp on
>                             dylan branch.
>
>
>                         Great. I'll launch some test builds and see what
>                         breaks (or works) :)
>
>                         Bruce
>
>
>                             Regards,
>
>                             --
>                             *dS
>                             Diego Sueiro
>
>                             /*long live rock 'n roll*/
>
>
>                         _________________________________________________
>                         yocto mailing list
>                         yocto@yoctoproject.org
>                         <mailto:yocto@yoctoproject.org>
>                         https://lists.yoctoproject.__org/listinfo/yocto
>                         <https://lists.yoctoproject.org/listinfo/yocto>
>
>
>                 _________________________________________________
>                 yocto mailing list
>                 yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>                 https://lists.yoctoproject.__org/listinfo/yocto
>                 <https://lists.yoctoproject.org/listinfo/yocto>
>
>
>
>             _________________________________________________
>             yocto mailing list
>             yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>             https://lists.yoctoproject.__org/listinfo/yocto
>             <https://lists.yoctoproject.org/listinfo/yocto>
>
>
>
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


