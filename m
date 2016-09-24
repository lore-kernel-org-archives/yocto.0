Return-Path: <mont3z.claro5@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 577B4E00C56; Fri, 23 Sep 2016 17:29:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mont3z.claro5[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.196 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f196.google.com (mail-yw0-f196.google.com
	[209.85.161.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20C1DE008CE
	for <yocto@yoctoproject.org>; Fri, 23 Sep 2016 17:29:36 -0700 (PDT)
Received: by mail-yw0-f196.google.com with SMTP id t67so6520458ywg.1
	for <yocto@yoctoproject.org>; Fri, 23 Sep 2016 17:29:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=8QAUlLqzhmo+O2Qj4Fxq0oN962Yk7QQ+I8r3VPuN8j8=;
	b=ybcbIxsWfL1DoCJalXd1j47Z7b6DCZyufS3FKUjqSn8P//I649KXqKyCBCoqbIDfCr
	po9Dru7V8BjyKvlmiM74zr1rSUM4dnH5OLyyxdPmFLeRWgA+l/9oBAF0m4DNgmh4LyYC
	AOr0N3Kco5sbaNe5jD7R/Js/xnJgdLMnVk+dGtAIWx6A6kW7jXI4qAJ7XZPUBJmMcD1z
	IJ/JooOi0hP9dtYZ/CH32Bbad2cSm0Q3hRmkb8Ed888wcPkWeGZwlRhwOvbGmIpbTNPP
	Vv/4lF3gTuqotpOcGG8ris07P3piyRlPjzsM9fJvQKXC7HBm+r4VpLoNLoonxRQlbUTJ
	BUIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=8QAUlLqzhmo+O2Qj4Fxq0oN962Yk7QQ+I8r3VPuN8j8=;
	b=cb3vqAGO4OQCxXqRlOEXyTew6YifLu+2GIEOvDELdTURt44kEkvv3rE43zhKbt90i6
	rItut0CCiVvr4Df+8Sc60CCqPHOJkuEr2wbLyTOFynOYcg09+9BuhZaegzDuFFTM21gz
	pN0/0IS/jCKmkS2FiB0VTBNTkDdwIQMh0rjbNPWGq8scId13eSgOdeFw+zdzQDcmAyMa
	B8lgbOJJ6HXBWRbqMb4zBD0dS+URJZRqj5MuIO3jvSNJJeDnOShJsU+6tR5QMAiBWyPd
	Zrl6zUDQJ3lFXIIAZsyYuE2pmiF2KjdvLiK/oyweJcmRqX+UXUdPlciIlk+WyrNSUrLB
	fx8w==
X-Gm-Message-State: AE9vXwPgLbaPuDcBQdjOYA4lViPphDEw9cEe+Lpld+vZlmnnI9zd3B4SqWd0zwG8WqzVVyHIlZ7/SxH/UWQqHw==
X-Received: by 10.129.179.197 with SMTP id r188mr7945378ywh.88.1474676975938; 
	Fri, 23 Sep 2016 17:29:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.13.213.203 with HTTP; Fri, 23 Sep 2016 17:29:35 -0700 (PDT)
In-Reply-To: <CAJ70iBRZBNotf8BagoiWB3U55CDj9tbuPgjiL3vjjY6o-4f9ng@mail.gmail.com>
References: <CAJ70iBSwzQnYW67Wb79Zga2hqZYRmgXstEqAao3N9BYgEf8z_Q@mail.gmail.com>
	<CAMKF1sqg30KEW2U+bCOcYaekrgkz9SxM1vRjydtp_xhxfONXuA@mail.gmail.com>
	<20160922152917.GP4814@bill-the-cat>
	<CAMKF1sro2dOqgBVR+mXU0VmcWBQP0XPt6fEJW4=4+MRAAarFSQ@mail.gmail.com>
	<CAJ70iBRZBNotf8BagoiWB3U55CDj9tbuPgjiL3vjjY6o-4f9ng@mail.gmail.com>
From: Mont3z Claros <mont3z.claro5@gmail.com>
Date: Fri, 23 Sep 2016 17:29:35 -0700
Message-ID: <CAJ70iBQwWAQrZSmKEvKkVf+oCTwoqG+3EAB=OveAp5_tfq6hCA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Meta layer for pine64
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
X-List-Received-Date: Sat, 24 Sep 2016 00:29:40 -0000
Content-Type: text/plain; charset=UTF-8

Hi all,

On Thu, Sep 22, 2016 at 12:55 PM, Mont3z Claros <mont3z.claro5@gmail.com> wrote:
> On Thu, Sep 22, 2016 at 10:21 AM, Khem Raj <raj.khem@gmail.com> wrote:
>> On Thu, Sep 22, 2016 at 8:29 AM, Tom Rini <trini@konsulko.com> wrote:
>>> On Wed, Sep 21, 2016 at 11:39:48AM -0700, Khem Raj wrote:
>>>> On Fri, Sep 16, 2016 at 2:01 PM, Mont3z Claros <mont3z.claro5@gmail.com> wrote:
>>>> > Hi all,
>>>> >
>>>> > I just finished a first beta version of a meta layer for SBC pine64.
>>>> > You can find it in  https://github.com/mont3z/meta-pine64
>>>> >
>>>> > I'd appreciate if anyone has any comments on possible improvements. A
>>>> > major problem I had was the necessity of two toolchains: one for
>>>> > compiling u-boot (32 bits) and another for compiling all other
>>>> > components (64 bis). At the moment I have a very ugly hack to do it.
>>>> > The 32 bit toolchain is an external toolchain and I set PATH
>>>> > environmental variable in u-boot recipe.
>>>>
>>>> I think it would be desirable to have single toolchain, u-boot is a
>>>> stand alone app
>>>> in general, if your compiler can do multilib builds for 32bit then it
>>>> would be possible
>>>> to build it. May be you should work with the toolchain team for pine64 to see if
>>>> that can be done. It will simplify using this layer.
>>>
>>> Actually, pine64 has a 64bit U-Boot, I think maybe the layer just needs
>>> to be updated to use mainline (or v2016.09.01) U-Boot.
>>>
>>>> Other option I would suggest to build u-boot externally for your SoC, we do
>>>> not necessarily need a bootloader for building final images anyway.
>>>
>>> Well, you do if you want a bootable image to be made :)  iirc all of the
>>> models are SD card only, no eMMC so assuming firmware "elsewhere" is a
>>> bad idea.
>>
>> You can always write a recipe to package a prebuilt u-boot.
>>
>
> Hi all,
>
> unfortunately the pine64 mainlilne u-boot is not compatible with the
> kernel I'm compiling.
> To package a prebuilt u-boot could be one solution. At the moment I'm
> investigating the possibility
> of patching u-boot to compile it with multilib.
>

from my research unfortunately the Cortex A53 from pine64 boots in
32-bit mode with armv7-a instruction set.
This means I cannot use -mabi=ilp32 from aarch64 toolchain to compile it.

After some discussion I also found that if I try to use pine64
mainline u-boot than I would need add support to every
weird interface that AW came up with. Which is something I don't even
understand. :-)

So, I'm considering to leave as it is for now and I'll try to add
recipes for mainline u-boot and mainline kernel (which is still beta).

Thanks,
Montez

