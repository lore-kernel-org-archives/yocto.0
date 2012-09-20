Return-Path: <wmills@ti.com>
Received: from comal.ext.ti.com (comal.ext.ti.com [198.47.26.152])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02DCDE00655
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 13:32:26 -0700 (PDT)
Received: from dlelxv30.itg.ti.com ([172.17.2.17])
	by comal.ext.ti.com (8.13.7/8.13.7) with ESMTP id q8KKWQLP007320;
	Thu, 20 Sep 2012 15:32:26 -0500
Received: from DLEE74.ent.ti.com (dlee74.ent.ti.com [157.170.170.8])
	by dlelxv30.itg.ti.com (8.13.8/8.13.8) with ESMTP id q8KKWPZ6016771;
	Thu, 20 Sep 2012 15:32:26 -0500
Received: from dlelxv22.itg.ti.com (172.17.1.197) by DLEE74.ent.ti.com
	(157.170.170.8) with Microsoft SMTP Server id 14.1.323.3;
	Thu, 20 Sep 2012 15:32:25 -0500
Received: from gtwmills.gt.design.ti.com (gtwmills.gt.design.ti.com
	[158.218.102.52])	by dlelxv22.itg.ti.com (8.13.8/8.13.8) with ESMTP id
	q8KKWPRU026416;	Thu, 20 Sep 2012 15:32:25 -0500
Message-ID: <505B7D59.3020306@ti.com>
Date: Thu, 20 Sep 2012 16:32:25 -0400
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.27) Gecko/20120216 Thunderbird/3.1.19
MIME-Version: 1.0
To: Evade Flow <evadeflow@gmail.com>
References: <CAMAb8ZO=KzrgNoW4VPADtCn27KUfviP4QL84_ia5sAUbj_9a3Q@mail.gmail.com>	<505A5FB9.4010802@mlbassoc.com>	<CAMAb8ZN0Yb4km-X0wyUDsbRYYSC53B62F+ZPYRVNEmae7QeVsA@mail.gmail.com>	<4100342.qsm4CZIotx@helios>	<CAMAb8ZPXYXNTgk_v_PG55C1FYERrT4s08FGLQO7frsE=J4pGDA@mail.gmail.com>
	<CAMAb8ZOAk-oF_gJmVvAVjAEN+JpS12=WpbxZjhqD0Tx6h=f4Zw@mail.gmail.com>
In-Reply-To: <CAMAb8ZOAk-oF_gJmVvAVjAEN+JpS12=WpbxZjhqD0Tx6h=f4Zw@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: BB_NO_NETWORK and own-mirrors not working with	meta-systemd
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 20 Sep 2012 20:32:27 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 09/20/2012 04:08 PM, Evade Flow wrote:
> To bring this full circle... if you want to build behind a restrictive
> firewall using pre-mirrored sources and BB_NO_NETWORK, be aware that
> recipes which:
>
>    1. Specify a git repo as the source, and,
>
>    2. Specify the revision to be built using a tag name
>
>
> will cause your build to abort when bitbake tries to run 'git ls-remote'
> to resolve the tag name.  So don't specify SRC_URI like this:
>
>
>    SRC_URI = "git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git;protocol=git;tag=v${PV}"
>
> Instead, use:
>
>    SRC_URI = "git://git.kernel.org/pub/scm/utils/kernel/kmod/kmod.git;protocol=git;tag=8885ced062131214448fae056ef453f094303805;branch=master"
>
>
> I added a note about this to the Wiki:
>
>    - http://wiki.yoctoproject.org/wiki/How_do_I#Non-networked_Builds_and_Cached_Git_Respositories
>
> I'm still new to Yocto, so someone please chime in if any of this
> information is incorrect...
>

If true, this seems very unfortunate.  This seems to push people in the 
wrong direction.  Is there a reason the fetchers don't pull down the 
tags when they mirror in the first place?


