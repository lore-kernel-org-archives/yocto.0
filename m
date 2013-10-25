Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A966FE01773
	for <yocto@yoctoproject.org>; Fri, 25 Oct 2013 11:44:30 -0700 (PDT)
Received: by mail-la0-f48.google.com with SMTP id ev20so3342691lab.21
	for <yocto@yoctoproject.org>; Fri, 25 Oct 2013 11:44:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=7BMyYHoZHg3k+gnTQWK7NMF7mZd5sVbV5yCjxF7wz9E=;
	b=Eoz9346W45bc2mSxMjIrf3C3f6fGXXmjpi2tRTfQ6bDebO9g8HPO2OFec1EgmdFfft
	BHi465U/KrRBHukLB3trHYNOzX3w/W5dAvn3dhYjqu/M/cHIb5DKqZ1kDeV4/YFx+I9t
	OkS3YJAEaJYLhGpghr2ysgKeW9xCiZbQHdYzXxt6hpF5j6bveu16Vcda5wqwY97OoNNS
	zC3JxGKMY6lpJAGVAC17f7VCYlFutMwgUGaQvcZmzlH9lF2SRikRowVustqmfqSiA02X
	b+f1XEWPuBVdORR0+yXqnAxGZTm2oAwZqgrxvdZjD6G38bKGZ1D/lCbzYjqPJhxj6lxB
	7WuQ==
MIME-Version: 1.0
X-Received: by 10.152.23.5 with SMTP id i5mr5997020laf.8.1382726668086; Fri,
	25 Oct 2013 11:44:28 -0700 (PDT)
Received: by 10.112.14.200 with HTTP; Fri, 25 Oct 2013 11:44:28 -0700 (PDT)
In-Reply-To: <CAMCfZKG1A_c-oy6KLZuctX4Nmca7f1ryBKRaR-sqFVVqNwuSrA@mail.gmail.com>
References: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>
	<CA+gsK-o6n24Aqp2dtpOwnmrCBjWE=HDSJvfqyYy2pvJYrHqXmQ@mail.gmail.com>
	<CAAQYJAu+wU0ODvVoTrRBFhVOUVh+CdMg3mimfgGkj-pwJh3A1g@mail.gmail.com>
	<CAMCfZKF_Rp=uds8tnDPSD9k3GO5dEiHSx9WfYjZ0yPkmh_9YPg@mail.gmail.com>
	<CAMCfZKFh8iJH4655mzFveFYfz8ebLXkGftSa-MR5mEcMEFV8Vw@mail.gmail.com>
	<CADkTA4MgxmiOofDLynbOLR=hV-KQ1ic+Eagjm0yetYOtB6FJzw@mail.gmail.com>
	<CAMCfZKF3aHG4wFMRx2XcdroJJ6ga5v6KHF5DbBTWV7jXOGNX-g@mail.gmail.com>
	<525FDD08.90400@windriver.com>
	<CAMCfZKHz82sPsHXjqxbFDJjFNi7ck+BS=_OtyGmb2FYDAxoe1A@mail.gmail.com>
	<525FE3C9.3070003@windriver.com>
	<CAMCfZKGUYAcO5FtOKC9iP_XZjRxJ_Xq12ERN=BL_JHA7FJW51w@mail.gmail.com>
	<5260BDA6.4020807@windriver.com>
	<CAMCfZKFf3iJCyjMgGQ=y6ng6Kh3_MeEMymgZTE=bTnLpBGN9Mg@mail.gmail.com>
	<5261974C.7010202@windriver.com> <5266A665.8030303@alphalem.com>
	<52686723.4080305@windriver.com>
	<CAMCfZKG1A_c-oy6KLZuctX4Nmca7f1ryBKRaR-sqFVVqNwuSrA@mail.gmail.com>
Date: Fri, 25 Oct 2013 14:44:28 -0400
Message-ID: <CADkTA4OWiOmDYDskpe6=uCX+XEE8R0C2aUxjCph+tAjdX=Ae2Q@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Diego Sueiro <diego.sueiro@gmail.com>
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
X-List-Received-Date: Fri, 25 Oct 2013 18:44:31 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Oct 25, 2013 at 7:43 AM, Diego Sueiro <diego.sueiro@gmail.com> wrote:
> Bruce,
>
> Regarding the defconfig not used, I've found this thread on Angstrom devel
> ML:
> http://www.mail-archive.com/angstrom-distro-devel@linuxtogo.org/msg06721.html
>
> I've replaced "FILESEXTRAPATHS_prepend" with "FILESPATH_prepend" and removed
> the custom "do_configure_prepend" function and bitbake is now using my
> defconfig.
> So, it seems that there is an issue with FILESEXTRAPATHS variable.
>

Aha. That does make sense.

Mike: does that same change fix your issues ?

Bruce

> Regards,
>
> --
> *dS
> Diego Sueiro
>
> /*long live rock 'n roll*/
>
>
> 2013/10/23 Bruce Ashfield <bruce.ashfield@windriver.com>
>>
>> On 13-10-22 12:23 PM, Mike Lewis wrote:
>>>
>>> Hi Bruce,
>>>
>>> I'm trying to accomplish the nearly the same thing (i.e. adding config
>>> fragment) and I'm having the same issue at the do_patch step. Were you
>>> able to reproduce this on your end?
>>
>>
>> Mike,
>>
>> Is you config/layer somewhere than I can have a look at it ? I was trying
>> some builds here, and my tests are working. But I'd like to try it
>> with your config as well.
>>
>> Bruce
>>
>>
>>>
>>> Thanks,
>>> Mike
>>>
>>> On 10/18/2013 01:17 PM, Bruce Ashfield wrote:
>>>>
>>>> On 13-10-18 05:17 AM, Diego Sueiro wrote:
>>>>>
>>>>>
>>>>> 2013/10/18 Bruce Ashfield <bruce.ashfield@windriver.com
>>>>> <mailto:bruce.ashfield@windriver.com>>
>>>>>
>>>>>     I fell behind today .. i had 2300 unread email to start this
>>>>> morning :)
>>>>>     Is there a way that I can get a copy of your recipes and layers ?
>>>>> If
>>>>>     I can do a build myself, I can easily debug and fix this ..
>>>>>     otherwise, we'll
>>>>>     go back and forth many times debugging.
>>>>>
>>>>>     Cheers,
>>>>>
>>>>>     Bruce
>>>>>
>>>>>
>>>>> I'm using the environment provided by Angstrom from it's github setup
>>>>> scripts.
>>>>> If you want to exactly reproduce it you need to:
>>>>>
>>>>>     git clone
>>>>> https://github.com/Angstrom-distribution/setup-scripts.git
>>>>>     cd setup-scripts
>>>>>     git checkout angstrom-v2013.06-yocto1.4
>>>>>     MACHINE=beaglebone ./oebb.sh config beaglebone
>>>>>
>>>>> Here is the setup and files for meta-mine:
>>>>>
>>>>> bblayers.conf:
>>>>>
>>>>>     BBLAYERS = \"
>>>>>
>>>>>         ...
>>>>>         ${TOPDIR}/sources/meta-mine \
>>>>>         "
>>>>>
>>>>> meta-mine/conf/layer.conf:
>>>>>
>>>>>     # We have a conf and classes directory, append to BBPATH
>>>>>     BBPATH .= ":${LAYERDIR}"
>>>>>     # We have a recipes directory, add to BBFILES
>>>>>     BBFILES += "${LAYERDIR}/recipes*/*/*.bb
>>>>>     ${LAYERDIR}/recipes*/*/*.bbappend"
>>>>>     BBFILE_COLLECTIONS += "mine-layer"
>>>>>     BBFILE_PATTERN_mine-layer := "^${LAYERDIR}/"
>>>>>     BBFILE_PRIORITY_mine-layer = "10"
>>>>>     LAYERDEPENDS_mine-layer = "angstrom-layer"
>>>>>
>>>>> meta-mine/recipes-kernel/linux/linux-mainline_3.8.bbappend:
>>>>>
>>>>>     FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.8:"
>>>>>     inherit kernel
>>>>>     require recipes-kernel/linux/linux-yocto.inc
>>>>>     COMPATIBLE_MACHINE_beaglebone = "(beaglebone)"
>>>>>     SRC_URI += " file://config-addons.cfg "
>>>>>
>>>>> meta-mine/recipes-kernel/linux/linux-mainline-3.8/config-addons.cfg:
>>>>>
>>>>>     CONFIG_WATCHDOG_NOWAYOUT=y
>>>>>     CONFIG_NTFS_FS=y
>>>>>     CONFIG_NTFS_RW=y
>>>>>
>>>>>
>>>>>
>>>>> But I think that instead of using the whole Angstrom you can just use
>>>>> poky and meta-beagleboard/common-bsp on dylan branch.
>>>>
>>>>
>>>> Great. I'll launch some test builds and see what breaks (or works) :)
>>>>
>>>> Bruce
>>>>
>>>>>
>>>>>
>>>>> Regards,
>>>>>
>>>>> --
>>>>> *dS
>>>>> Diego Sueiro
>>>>>
>>>>> /*long live rock 'n roll*/
>>>>
>>>>
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

