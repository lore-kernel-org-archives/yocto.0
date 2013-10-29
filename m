Return-Path: <andrea.adami@gmail.com>
Received: from mail-la0-f44.google.com (mail-la0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB127E0179E
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 04:00:11 -0700 (PDT)
Received: by mail-la0-f44.google.com with SMTP id ep20so6374600lab.3
	for <yocto@yoctoproject.org>; Tue, 29 Oct 2013 04:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=VQmTk+GQ3V/aG1f8j/uLgfzpo059mik8g1+jTqVbTUc=;
	b=rNIuou+YEDknaJ1XYEW1PaRWJKBE81WmI5lddfqe09SGj3I0guuakw3qw5HuituBAj
	xAb9zFwS3XeIo5UAt2G9xFkcMPqWTANt4xlpqXH5EeGwqL61G3ElpByNjK6A4Myih4fk
	cDUbDwmVIx3+iV89+AvR9RX5XIQWJpnz2SkxfRdOAXgXtnA/zieoRInVRokLmUcnHviC
	B5Uxs1dLpOo5GSt0wjK4/BUWQwkOICnx8QJRZFdsJS49c60uoeCwbJhBSMyAJzIBygoe
	8qkY8VZKwAlLrgV624MY3LcuR2VAJJNWT065Hy4zYFgKI7/3wiVofFBaUaT4OkFuDZjd
	JMJA==
MIME-Version: 1.0
X-Received: by 10.152.116.109 with SMTP id jv13mr4936033lab.30.1383044410185; 
	Tue, 29 Oct 2013 04:00:10 -0700 (PDT)
Received: by 10.112.52.74 with HTTP; Tue, 29 Oct 2013 04:00:10 -0700 (PDT)
In-Reply-To: <CAMCfZKFnYB3DKSejuZ3JT-uwo=rNekOT3bUcFvuAHdnJnqFONg@mail.gmail.com>
References: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>
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
	<CADkTA4OWiOmDYDskpe6=uCX+XEE8R0C2aUxjCph+tAjdX=Ae2Q@mail.gmail.com>
	<526B18BC.5050302@alphalem.com>
	<CAMCfZKHuH4egX=Sid-fSaEscGBr_mX-3PC492syD1hD3+fY+rQ@mail.gmail.com>
	<526ECFF3.4060207@windriver.com>
	<CAMCfZKFnYB3DKSejuZ3JT-uwo=rNekOT3bUcFvuAHdnJnqFONg@mail.gmail.com>
Date: Tue, 29 Oct 2013 12:00:10 +0100
Message-ID: <CAAQYJAuCDgpYKA9VPA35pYEq31HRhxN3gM1S6LRrNqcJbTFK0Q@mail.gmail.com>
From: Andrea Adami <andrea.adami@gmail.com>
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
X-List-Received-Date: Tue, 29 Oct 2013 11:00:17 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Oct 29, 2013 at 11:33 AM, Diego Sueiro <diego.sueiro@gmail.com> wrote:
>
> 2013/10/28 Bruce Ashfield <bruce.ashfield@windriver.com>
>>
>> I'm using dylan for my yocto checkout (not oe-core standalone, since
>> this is a yocto list/question),
>
> I thought that opemenbedded-core and poky were sharing the same core
> components, classes and functions.
>
>>
>> My build shows:
>>
>> meta
>> meta-yocto
>> meta-yocto-bsp    = "dylan:3dc4505f0e744177ae4ddff1e1ce8b31b95dfaa6"
>> meta-ti           = "master:c14c386946e1ea341faeea292580e37d538d645d"
>> meta-alphalem     = "master:a5c0e8ff51297a4090cd47d669b4fc9c94696908"
>> meta-alphalem-bsp = "master:56086e4dc618e975c9a46491793041f0d18e47a2"
>>
>> Mike indicated that he was using dylan for meta-ti, but that doesn't
>> make a difference either, since for our purposed. It's kernel.bbclass
>> and the yocto kernel processing that matters.
>
> I'll build a setup with yocto (dylan), meta-beagleboard (dylan) and
> meta-mine to check if I can reproduce the issues.
>
>>
>> In meta-alphalem-bsp, I have linux-mainline_3.2.bbappend, with the
>> following content:
>>
>> > cat linux-mainline_3.2.bbappend
>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.2:"
>>
>> inherit kernel
>> require recipes-kernel/linux/linux-yocto.inc
>>
>> COMPATIBLE_MACHINE = "(beagleboard)"
>>
>> SRC_URI_append = " file://defconfig"
>> SRC_URI_append = " file://my_frag.cfg"
>>
>> And I added a fragment which has:
>>
>> > cat my_frag.cfg
>> CONFIG_WATCHDOG_NOWAYOUT=y
>> CONFIG_NTFS_FS=y
>> CONFIG_NTFS_RW=y
>>
>> When both are applied to the kernel build, we should see CONFIG_NTFS_FS
>> transition from =m to =y:
>>
>> > grep CONFIG_NTFS_FS *
>> defconfig:CONFIG_NTFS_FS=m
>> my_frag.cfg:CONFIG_NTFS_FS=y
>>
>> After invoking linux-mainline's configure task, I see the following:
>>
>> > grep CONFIG_NTFS_FS linux-beagleboard-standard-build/.config
>> CONFIG_NTFS_FS=y
>>
>> And other elements of the defconfig and fragment are properly applied
>> to the configuration phase.
>>
>> I'm also seeing good results on master, which means that I'm at a
>> standstill to reproduce any problems.
>>
>> Diego: can you confirm for me what triggers you are seeing that shows
>> the defconfig and fragment are not used. I assume the config options
>> are not present, but I just want to be sure.
>
> For the full defconfig replacement after doing a do_configure I've checked
> .config on ${S} and it did not included my CONFIGS.
> For config fragment it got stuck on do_patch task.
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
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

I'll jump in one more time...

Have you tried putting defconfig and patch under <machine> subdir?

recipes-kernel/linux/linux-yocto-3.2/<machine>
defconfig
my-own.patch

I've recently added two similar entries for 3.10 and it works.
Afaik it was impossible to put a common patch under /linux-yocto-.3.2
at the time.

Regards

Andrea

