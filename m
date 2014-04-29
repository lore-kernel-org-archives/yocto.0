Return-Path: <sstncr@gmail.com>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54C20E009A6
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 07:43:20 -0700 (PDT)
Received: by mail-wi0-f182.google.com with SMTP id d1so566795wiv.15
	for <yocto@yoctoproject.org>; Tue, 29 Apr 2014 07:43:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=/WbPu4Nokko05WKKFBBDSkV6rzmIJNpUuc4wxtAvQN8=;
	b=lqY5OpW9HfrLZ11piY6VqpeNgfzBGAcDrld9TVsSmKUanEw27pNaKcIQZWiMjwBmFa
	CxuW975xiNbojSgy6PLgZXQAzoKfruePnuy3bfhj6not15zSt+qSNO3kZVFYAyRlGPbo
	xDUXUBMNO5YwA1nuDF7GBltE9sDfnV4pLDArZfHXdKAKZnOGgDv3r8yLMV6XMLdManTq
	3f4m7zx8eqLegqYxCBg1ai04Vp9dcZfHIWBVe3EL7gM00berDpJ2AGkGcLjO4Eiisxlf
	7R9zhIR/NXG6AKY5L5b3Bx15pO0lhrbV/roee7GKB3riZ00MKSA+qgU1ZPv4hN0cqIoo
	hpmQ==
MIME-Version: 1.0
X-Received: by 10.180.80.232 with SMTP id u8mr20851470wix.13.1398782599448;
	Tue, 29 Apr 2014 07:43:19 -0700 (PDT)
Received: by 10.216.48.6 with HTTP; Tue, 29 Apr 2014 07:43:19 -0700 (PDT)
In-Reply-To: <CAMCfZKHtB+xoDpovyLwcovJxh_L0W5OXqqjqok9i2R4xA5OZJA@mail.gmail.com>
References: <CAMCfZKG6Q5jQuQABsDOijHOcqm-v1=gPnvLdXZrP88YNfT8+rw@mail.gmail.com>
	<CANr+NRvN80_OHjAh61zuLOebiNM1g7q5V4aGgoT=208oSjZ1qQ@mail.gmail.com>
	<CAMCfZKHtB+xoDpovyLwcovJxh_L0W5OXqqjqok9i2R4xA5OZJA@mail.gmail.com>
Date: Tue, 29 Apr 2014 17:43:19 +0300
Message-ID: <CANr+NRsuv4UE=c4=5X+4-M+8tkwB=g29aVN5Gd4Kk3T8je5+EA@mail.gmail.com>
From: Stefan Stanacar <sstncr@gmail.com>
To: Diego Sueiro <diego.sueiro@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Missing kernel, modules and dtb for beaglebone on core-image-minimal
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
X-List-Received-Date: Tue, 29 Apr 2014 14:43:23 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Apr 29, 2014 at 5:35 PM, Diego Sueiro <diego.sueiro@gmail.com> wrote:
>
> Stefan,
>
> On Tue, Apr 29, 2014 at 11:32 AM, Stefan Stanacar <sstncr@gmail.com> wrote:
>>
>> That's not a bug :), it's intended. The README.hardware clearly states that for deploying a core-image-minimal you need to unpack the modules and copy the dtbs over.
>>
>> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/README.hardware#n244
>>
>> There is a reason for that, mainly beacause the way core-image-minimal recipe works.
>>  A BSP usually adds kernel-modules and other stuff to MACHINE_EXTRA_RDEPENDS but not all images respect that (they need to inherit core-image.bbclass and not overwrite IMAGE_INSTALL).
>
>
> Thanks. Got it.
> Why I never RTFM or at least the README file?
>
>

No problem, you're welcome.

FWIW the beaglebone machine defintion does:

MACHINE_EXTRA_RRECOMMENDS = " kernel-modules kernel-devicetree"

which ultimately get pulled in packagegroup-base.

Cheers,
Stefan

>
>
> Regards,
>
> --
> *dS
> Diego Sueiro
>
> Administrador do Embarcados
> www.embarcados.com.br
>
> /*long live rock 'n roll*/

