Return-Path: <raj.khem@gmail.com>
Received: from mail-wg0-f42.google.com (mail-wg0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B5B6E00283
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 20:03:35 -0700 (PDT)
Received: by wgbfm10 with SMTP id fm10so1090965wgb.5
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 20:03:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=BWvBXdkM6JpvdF/uUH7TYNgjLvkBp7+n6z94E7+XHGg=;
	b=d3/M3Me+RIy1LqU6A5l+0Su63OAOdE3lCIi1yd3PDgxtmVp8Q820FUUQZDEPkZvgr0
	6l9JCMZ3+efc9SptrMT6K5t9oKisj+b8KflMPtcMVx+NiDhE5TSqjzuGqgUNdz0XFfKj
	lsk6BFgL7Qhe9/LHAvJJXNpULXnXxJ2RE4GuBMnICNlJguv1Sbj6HaukICTpRc3woDq+
	k+KbrvRL0YeNp+fgHN27VQtRYHki0W7Z5ojlkKITcUaE3pTB968nZH6JQMwvd8/rmPrE
	lXFMk6FFZu1IcERUc1c82Bkga5GT4gwlSJi1Jn+U9Zf48FvaawCO6VUQ9a4hJF1XBHcn
	0SoA==
Received: by 10.180.109.129 with SMTP id hs1mr8622475wib.0.1346468614033; Fri,
	31 Aug 2012 20:03:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.42.197 with HTTP; Fri, 31 Aug 2012 20:03:03 -0700 (PDT)
In-Reply-To: <CA+gsK-r_rXoS2mGntN87jS_VHjMO3FVhFFGgug0N73Wv7qjUnA@mail.gmail.com>
References: <504144D8.40605@intel.com>
	<CA+gsK-r_rXoS2mGntN87jS_VHjMO3FVhFFGgug0N73Wv7qjUnA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 31 Aug 2012 20:03:03 -0700
Message-ID: <CAMKF1so68xho-Bpf2Pw8C7HJskfx1G1zdLf=hDXsznwrbfvTog@mail.gmail.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>
Cc: yocto@yoctoproject.org, Scott Garman <scott.a.garman@intel.com>
Subject: Re: Beaglebone BSP for denzil?
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
X-List-Received-Date: Sat, 01 Sep 2012 03:03:36 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Aug 31, 2012 at 6:44 PM, Rudolf Streif
<rstreif@linuxfoundation.org> wrote:
> Hey Scott,
>
> I am doing the same thing for a Linux Foundation class.
>
> The root filesystem that YP builds for the BBoard works just fine for the
> BBone. That's at least true for core-image-minimal. I tested that with the
> kernel that comes with the BBone.
>
> The kernel does not work. The BBoard has an OMAP3 CPU the BBoard has an
> AM3359 CPU.
>
> I built a kernel with YP from kernel.org some patches and a defconfig. My
> goal is to use linux-yocto so I started from scratch and did not use
> meta-ti. And it's educational too.
>
> I still used MLO and UBoot that came with the BBone. My next steps are to
> build the kernel using linux-yocto and then eventually also building UBoot
> with YP.

you need to add the right .config and may be patches. But there are lot
of patches see meta-ti for more details.

>
> I can give more info but right now I am just typing this on a mobile with no
> access to my dev box. I will follow up.
>
> Cheers,
> Rudi
>
> On Aug 31, 2012 4:11 PM, "Scott Garman" <scott.a.garman@intel.com> wrote:
>>
>> Hello,
>>
>> Am I correct in understanding that the TI Beagleboard BSP from
>> yoctoproject.org should work with the Beaglebone, or do I need meta-ti? I'm
>> not looking for accelerated graphics or anything - this will just be used in
>> a classroom setting where there will be Beaglebones I'd like to boot up to a
>> minimal console image.
>>
>> I'll be doing this with the denzil release.
>>
>> Thanks,
>>
>> Scott
>>
>> --
>> Scott Garman
>> Embedded Linux Engineer - Yocto Project
>> Intel Open Source Technology Center
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

