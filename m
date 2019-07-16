Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9821CE00D59; Tue, 16 Jul 2019 01:01:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
	[209.85.166.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1885DE00D4F
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 01:01:54 -0700 (PDT)
Received: by mail-io1-f49.google.com with SMTP id j6so6183949ioa.5
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2019 01:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kzklpFq6aM5W7+5bcaspFM4XoxWiGQBg7vBDXg858Fw=;
	b=uieWbHuehwU0wR0+t8NlM0ePe70L4dzDOI9H1Yy1QK9R8SXH3qdcEq+kJdhepKOJyC
	5MNw5hxaDX6BMFfyNaI3Gclaso8NOWRdiAiEfN3zzTPZKEyQbmaH29vk30n1qu84wDu7
	sH+7G5b0C5BVIiBHfd6FXl1VASIqSJ0mHhIXPthBiUH0dUL/dS4Ch1lBZ3PUcF4LQRaF
	JvkFJpvaRY9XU6wS+Oy7hnw0RKDP1DjaHIFA8x1GLqmuHzUKWdpvXzqGeyThZaSZV543
	olYyIMz73ajznLB+9gg5a13nLB+AD4QgroY2OQE9+P6XA4wbmj2JDQRP1avMbbfe8AkW
	4n4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kzklpFq6aM5W7+5bcaspFM4XoxWiGQBg7vBDXg858Fw=;
	b=EV4N+MUqM7ngNNTymL4W5ASQe0N/xzNnfeV7QfEXG6l/+zIEsc0j33vNMj2m4YknQd
	Pw1sXFo4LFy2VCxydtJMbe5IHlduPrOxcTuyDOU1O/m3LplDPokjKlTGLMPNqZwubGsd
	Diz1GOjPOSYyaEmwdaPZF+Yuc2Lifp29S2+4wm45HwLBZ0zhKfX6gW85DJhxfH2pzHNM
	t8c36V0rUBPtAJYRJWZPFcg7E03tP9yCFn83GNvE9HrrfG9e2VTPE27dIu0UL82zlVuH
	IYxIvM3sNZhBmelI3m4tcjEh9FbOYizu7//cFhNXK8kCiRNHN64NVDmCVKMqjtTpRE0V
	nNEA==
X-Gm-Message-State: APjAAAU7URRVpnxc1zzkOsFlcbeWysWtGXhu8XQlvk9VChHZBLBOGXFK
	EuRUEzPBKGyK0RWBpWgRJa5/wXmXJCedcLV6Pcs=
X-Google-Smtp-Source: APXvYqx9G6wAIkFS8OK5VnnYlXJkEWTVrFlJ5c9L60Dj0z/50UrFhu/D4ZsZ5dk02Kb7VdiJXIJj39f82hcW/9McPPk=
X-Received: by 2002:a6b:3b03:: with SMTP id i3mr29265431ioa.302.1563264113602; 
	Tue, 16 Jul 2019 01:01:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP; Tue, 16 Jul 2019 01:01:53
	-0700 (PDT)
In-Reply-To: <CAAx3WaCVDv6Sj8RPxPqb4PiFhe7WvJibk21LkezsjT6-ngimvg@mail.gmail.com>
References: <CAA=hcWTkikzH-X=GxuJ3YgA9MBwRu0UCtnt-O0mZrbjOrELDgw@mail.gmail.com>
	<CAAx3WaD0FMBZDjT8eYBBVsvcFCD-S3wRR9hiR5ifB2cAJs8y_g@mail.gmail.com>
	<0f4cfe52-7b7a-145c-b8ac-fbefeeb51e6e@3mdeb.com>
	<CAAx3WaAY2REFJpV3ibOwMmmTHjZbiNsOXVX_eCkFVA5WgO_YzA@mail.gmail.com>
	<CAA=hcWQqBrzU=SYRDLELG=vu_0=82CNLwz6u3F6=kXhRoUmhqw@mail.gmail.com>
	<CAAx3WaCVDv6Sj8RPxPqb4PiFhe7WvJibk21LkezsjT6-ngimvg@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Tue, 16 Jul 2019 18:01:53 +1000
Message-ID: <CAA=hcWRo-+CQRjOFOsyoagCTWTQthvc2Cyt04EuALd-=1=Tgfg@mail.gmail.com>
To: Gabriele Zampieri <gabbla.malist@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Where to add U-Boot argements bootargs and bootcmd?
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
X-List-Received-Date: Tue, 16 Jul 2019 08:01:55 -0000
Content-Type: text/plain; charset="UTF-8"

Hi Gabriele,

Thank you for your kind explanations and links, that's great helpful.
Will dig further to learn more.

Cheers.

- jh

On 7/16/19, Gabriele Zampieri <gabbla.malist@gmail.com> wrote:
> Hi JH,
>
> wks is the extension used by wic to generate different kind of flashable
> (partitioned) images. I never used it, but looking around (
> https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#command-bootloader
> ) I see two relevant arguments:
>
>    - *--append *
>    - *--configfile*
>
> Check them in the link above.
>
> Here is an example for --append:
> https://github.com/openembedded/openembedded-core/blob/master/scripts/lib/wic/canned-wks/directdisk-multi-rootfs.wks#L22
>
> Digging a bit deeper it seems that you cannot feed a custom config to uboot
> via wic (and again, correct me if I'm wrong), but only for extlinux (see:
> https://github.com/openembedded/openembedded-core/blob/master/scripts/lib/wic/plugins/source/bootimg-partition.py#L110
> )
>
> I do not have time to replicate your environment, so I'm just giving you
> suggestions.
>
> Best regards,
> Gabriele
>
> Il giorno lun 15 lug 2019 alle ore 14:45 JH <jupiter.hce@gmail.com> ha
> scritto:
>
>> Thanks Gabriele and Maciej, I use meta-freescale for imx6. The u-boot
>> argements seem defined in wks files such as imx-uboot-mxs.wks,
>> imx-uboot-bootpart.wks, not quite sure how to extend or overwrite it.
>> Sorry still learning the Yocto.
>>
>> Thank you.
>>
>> Kind regards,
>>
>> - jh
>>
>> On 7/15/19, Gabriele Zampieri <gabbla.malist@gmail.com> wrote:
>> > Yes, thanks Maciej for pointing that out! It may be a good starting
>> > point
>> > for JH.
>> >
>> > Gabriele
>> >
>> > Il giorno lun 15 lug 2019 alle ore 10:29 Maciej Pijanowski <
>> > maciej.pijanowski@3mdeb.com> ha scritto:
>> >
>> >>
>> >> On 15.07.2019 08:45, Gabriele Zampieri wrote:
>> >>
>> >> Hi,
>> >>
>> >> as far as I know, there is no mechanism to add custom bootargs and/or
>> >> bootcmd to uboot via Yocto (correct me if I'm wrong). I usually patch
>> the
>> >> upstream uboot to achieve this task.
>> >>
>> >> I also haven't heard of any standardized way. It may depend on the
>> target
>> >> hardware
>> >> and the BSP layer you are using. Apart from patching the U-Boot, there
>> >> also might
>> >> be boot.cmd script to modify or the config.txt in case of the RPI, for
>> >> example.
>> >>
>> >>
>> >> Best regards,
>> >> Gabriele
>> >>
>> >> Il giorno lun 8 lug 2019 alle ore 22:43 JH <jupiter.hce@gmail.com> ha
>> >> scritto:
>> >>
>> >>> Hi,
>> >>>
>> >>> Which Yocto files and which statement can I add my own U-Boot
>> >>> bootargs
>> >>> and bootcmd?
>> >>>
>> >>> Thank you.
>> >>>
>> >>> - jupiter
>> >>> --
>> >>> _______________________________________________
>> >>> yocto mailing list
>> >>> yocto@yoctoproject.org
>> >>> https://lists.yoctoproject.org/listinfo/yocto
>> >>>
>> >>
>> >> --
>> >> Maciej Pijanowski
>> >> Embedded Systems Engineerhttps://3mdeb.com | @3mdeb_com
>> >>
>> >> --
>> >> _______________________________________________
>> >> yocto mailing list
>> >> yocto@yoctoproject.org
>> >> https://lists.yoctoproject.org/listinfo/yocto
>> >>
>> >
>>
>

