Return-Path: <xerofoify@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3231E00938; Thu, 13 Nov 2014 07:07:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (xerofoify[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vc0-f182.google.com (mail-vc0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB692E008C3
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 07:06:55 -0800 (PST)
Received: by mail-vc0-f182.google.com with SMTP id im17so3556034vcb.41
	for <yocto@yoctoproject.org>; Thu, 13 Nov 2014 07:06:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=SsZVa5MVbIOhz5MszKAaNTWtrzrz/NxrCZ0Qbyl+rTg=;
	b=nOzPUqyB1GpGSo8X+c2LDdeDmq33xPaC3YV8bE+QKGhBwQQLMOLMLbfLrAo5FQnBlI
	Al404iKu6cNUjT+lRWkkKIMUDLs+I65sS6BjgLpzID3/UcnbS8zd/VvgE4IYZQFbyy1l
	HbM35ANPCqJhPwy9YmOFaXmvaZizjztZF/KcCuPwTngvzUhpDY72OE4KIvJ/uSuVD+OE
	qejWZVn2Lophe6cLydpdkRhA6UBk/NbPluv2z+9kwrYHN9JU4czPhfoNPILjjltTdqiG
	gyZWKTJ0tVfdwxLExjOkMym2ND+JlpG2C/etGocbdySIS84vUYkwnGcdMKmdS5pDQBY1
	yVwg==
MIME-Version: 1.0
X-Received: by 10.221.4.73 with SMTP id ob9mr1986616vcb.13.1415891214767; Thu,
	13 Nov 2014 07:06:54 -0800 (PST)
Received: by 10.220.131.5 with HTTP; Thu, 13 Nov 2014 07:06:54 -0800 (PST)
In-Reply-To: <CAByxTR-C0pyk81W-ROxkMvRH1x-0KWdNcvUri6LmKeGMz95LDg@mail.gmail.com>
References: <CAByxTR_jmYDr4QUAtXg20UBV_FXZ-yUk=WEJ3LTA1wkaRAx6Yw@mail.gmail.com>
	<D087E4B4.4DDB7%belen.barros.pena@intel.com>
	<CAByxTR-AS8DcboJH-iP5kgw3OitUKEYP7ZK5riJsuVX1bNNUpg@mail.gmail.com>
	<2092067.aaeApHOQI2@peggleto-mobl5.ger.corp.intel.com>
	<CAByxTR-C0pyk81W-ROxkMvRH1x-0KWdNcvUri6LmKeGMz95LDg@mail.gmail.com>
Date: Thu, 13 Nov 2014 10:06:54 -0500
Message-ID: <CAPDOMVgW4VL=CYk4vOUjhkFymX=e7O3jN6XXeOtfZ=eEbbdomw@mail.gmail.com>
From: Nick Krause <xerofoify@gmail.com>
To: John Unland <opensourcejohn2112@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Making Hob better.
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
X-List-Received-Date: Thu, 13 Nov 2014 15:07:07 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Nov 12, 2014 at 4:00 PM, John Unland
<opensourcejohn2112@gmail.com> wrote:
>>I'm not sure a separate bootloaders layer would really make sense - we normally keep bootloaders either in OE-Core...
>>Are there bootloader(s) that you are looking for that are currently missing?
>
> Well I know I like to use U-Boot since it can go across multiple
> archs. Well I guess it makes since to just have it in OE-Core. Other
> than that that's what I wanted was U-Boot for x86 mostly....But if
> It's in OE-Core then there's no need to abstract that out to a
> different layer I guess.
>
> Thanks.
> John
>
>
> On Wed, Nov 12, 2014 at 11:33 AM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
>> Hi John,
>>
>> On Tuesday 11 November 2014 11:51:23 John Unland wrote:
>>> What about bootloaders? Where would I file a enhancement for different
>>> boot loaders (U-Boot, Lilo, etc.). Would be good if we had a boot
>>> loaders layer.
>>
>> I'm not sure a separate bootloaders layer would really make sense - we
>> normally keep bootloaders either in OE-Core (where we currently have u-boot,
>> grub, grub-efi, syslinux, gummiboot, etc.) or in specific BSPs where a specific
>> bootloader is needed (or a specific version of an existing bootloader, e.g.
>> BSPs shipping their own version of u-boot is common). FWIW there is also a
>> meta-initramfs layer in the meta-openembedded repository which contains
>> kexecboot.
>>
>> Are there bootloader(s) that you are looking for that are currently missing?
>>
>> Cheers,
>> Paul
>>
>> --
>>
>> Paul Eggleton
>> Intel Open Source Technology Centre
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
Do we support the kernel supporting off EFI directly as this can make
boot much faster as there is no need for another boot loader in order
to instruct the kernel
how to boot your respected device.
Cheers Nick

