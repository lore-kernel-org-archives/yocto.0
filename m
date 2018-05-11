Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9023FE00E85; Thu, 10 May 2018 18:16:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f170.google.com (mail-pf0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E518FE009CF
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 18:16:46 -0700 (PDT)
Received: by mail-pf0-f170.google.com with SMTP id x9-v6so1900407pfm.2
	for <yocto@yoctoproject.org>; Thu, 10 May 2018 18:16:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=XhF5HNnOL/Ec+nDsL+/6CHas1HT099bmP/KYNwACSys=;
	b=IjyqNDoILn109ZM9WyHfWW0vQNZyrlg+RWPsGbOkgS2fcgVnHuoyY8DdUeTNnzjith
	6y2FuIyMN3e3HAvFLeWmxTeRUwAqUXaLYKbq9sdAChUiEnEiCWb8Qqp2pmuvzhRZOVCU
	96QykabZGskOzWDjyEMPy+JiLJANvKuP8RlC8VZw6RzrYNwMmB/NfiPDge1RAM9AVQwv
	7QAWoK6tzsDo4zfCvW7k1HHqQ+Z4zxLLre3rEIzeNgEECyt6u2uUlJ/l+2uxXeMJXMhJ
	J8H+Vb7ExIQNhMXx2qWKFGTO4CvyEUvj6ychxP9TBLt0u5xA5IcOkxNjzMnxR0KyBJYV
	6CCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=XhF5HNnOL/Ec+nDsL+/6CHas1HT099bmP/KYNwACSys=;
	b=FdYrBj0Wb+//MugqlVRnSwI6ndIzib2JF/BR+8jUrOsCinf0xCunrabm8nldPxhFZ6
	ry9M/M9Ybmo/GAp4ePSOSIDWp240QhcfbChMUQuLyuC6K9zcgJw8zr7vUiaqTxmxw9N9
	nGeZvKVgWPmIm3rKHTgzFnEmde3Ku22KFtEVMXGMp5pMoo0ZOwCfk0CL6s78c5prKEKs
	Wmd0R/vdnu64KbEfCezlp2EJLfF3NdM9PPRyYN8R1lJfMmR+feN74qJvKI0VdGz4I4jJ
	3LPHttnhwZoWzU6nSj40oxh35OwpXXeJV7y7BqEFh7YT+vYOF4xGOAwrvSBkn5+Mp922
	kjgg==
X-Gm-Message-State: ALKqPwftAyE6VCtn2LfA/mJmPGxhPjgep0Cmg8oJTbSZ2Nxl1DjJX2+B
	l6oeUD5VWp8LlXebHC7shwtyoGVoK/cgcRDuuLs=
X-Google-Smtp-Source: AB8JxZqZN7OAzloY8JoqL1D9rJm/zwbOHu4gDQAxWFxLCl8J4Pue0daT7PwlUIz69LHBxRw0n5bNgSLeZZhsoVPJY7A=
X-Received: by 2002:a63:41c1:: with SMTP id
	o184-v6mr2791590pga.393.1526001406043; 
	Thu, 10 May 2018 18:16:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.236.139.145 with HTTP; Thu, 10 May 2018 18:16:15 -0700 (PDT)
In-Reply-To: <CAJ86T=WQd-1MWa7H1Zt28i2NPV5f6VOKvaE0LTP+PkKQtdFNKA@mail.gmail.com>
References: <CAMKF1spa1bbrUjQWbhdUw3C4Cxu99fU=Be3sEm+SYFNq_oxEKw@mail.gmail.com>
	<CA+chaQcUU=Dew1cATDBpuA2_f_eh1=DAyEMaDHfVx7kY88rZhg@mail.gmail.com>
	<8d962430-ac63-5e97-fd32-2c0464c62acb@gmail.com>
	<20180510191145.GA1954@jama>
	<CAJ86T=Xz+2neJPBw41_sFxd977xp=zznsgzFdbeHJ-aysJNk+g@mail.gmail.com>
	<20180510214325.GC1954@jama> <20180510220735.GD1954@jama>
	<CAJ86T=UpZ0+HTqre2Z4eAPM9LY_eH1EUO=e1v0sz7FPe4+8aRw@mail.gmail.com>
	<CA+chaQcTPwJy+dL6GvBKJTcZuiVUiztVqEDXmSwZ==b53m_mcQ@mail.gmail.com>
	<CAJ86T=XkBkKhK6mwqxnFA1CkaV5swjGKsdNv_7E9fgFa=qhdCw@mail.gmail.com>
	<20180510225017.GE1954@jama>
	<CAJ86T=UfXtgtaWQyJbrhW40MJFW9YAArB3CshMxy5e5f9Cg_=Q@mail.gmail.com>
	<CAMKF1soAQYfL+gwsEmt6bZv_42pO_F5Gsb0CxUrdWueaja50hg@mail.gmail.com>
	<CAJ86T=UOog5f1TFbRZxnpvvUcAddRMUsv2nnOQwWWWvdTGb7VA@mail.gmail.com>
	<CAMKF1sqmg-7kRbPfH_HEiyBv5vmqj4Sy=bCKqbxdQ5qG+_+5rA@mail.gmail.com>
	<CAJ86T=WQd-1MWa7H1Zt28i2NPV5f6VOKvaE0LTP+PkKQtdFNKA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 10 May 2018 18:16:15 -0700
Message-ID: <CAMKF1sr1ic2iJLaZsPXGUAhkfb-RJoo6tA1cvCW6Bq3jjCsZrA@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	openembedded-devel <Openembedded-devel@lists.openembedded.org>
Subject: Re: [OE-core] [RFT] GCC 8.1
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
X-List-Received-Date: Fri, 11 May 2018 01:16:47 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, May 10, 2018 at 6:11 PM, Andre McCurdy <armccurdy@gmail.com> wrote:
> On Thu, May 10, 2018 at 6:06 PM, Khem Raj <raj.khem@gmail.com> wrote:
>> On Thu, May 10, 2018 at 6:00 PM, Andre McCurdy <armccurdy@gmail.com> wrote:
>>> On Thu, May 10, 2018 at 5:55 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>>> On Thu, May 10, 2018 at 4:11 PM, Andre McCurdy <armccurdy@gmail.com> wrote:
>>>>> On Thu, May 10, 2018 at 3:50 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
>>>>>> On Thu, May 10, 2018 at 03:40:53PM -0700, Andre McCurdy wrote:
>>>>>>> On Thu, May 10, 2018 at 3:38 PM, Martin Jansa <martin.jansa@gmail.com> wrote:
>>>>>>> > see
>>>>>>> > http://lists.openembedded.org/pipermail/openembedded-core/2018-May/150654.html
>>>>>>>
>>>>>>> Removing -fno-omit-frame-pointer isn't the same as adding
>>>>>>> -fomit-frame-pointer. Frame pointers may get enabled depending on the
>>>>>>> optimisation level etc (ie not only by -fno-omit-frame-pointer).
>>>>>>
>>>>>> Should I send v2 adding -fomit-frame-pointer instead of removing
>>>>>> -fno-omit-frame-pointer?
>>>>>>
>>>>>> The v1 fixes the issue for me with default config + DEBUG_BUILD.
>>>>>
>>>>> The v1 patch isn't wrong, it's just incomplete (the problem could come
>>>>> back if someone changes optimisation level or switches gcc to clang,
>>>>> etc).
>>>>>
>>>>> My choice would be a v2 patch which adds -fomit-frame-pointer to
>>>>> CFLAGS unconditionally for all ARM builds when Thumb is enabled. That
>>>>> should fix the problem for all optimisation levels etc and avoids
>>>>> building the main strace binary differently depending on whether or
>>>>> not ptest is enabled.
>>>>
>>>> explicitly adding this option is a poor choice especially for debug
>>>> builds where we should
>>>> let the -On level decide and not explicitly ask for either
>>>> enable/disable frame-pointers
>>>> that will also make it compiler proof.
>>>
>>> Of course, we should let the compiler decide whenever it's possible to do so.
>>>
>>> Unfortunately there are cases like this one where frame pointers clash
>>> with inline assembler and we need to over-rule the compiler's choice.
>>
>> Here we are adding -fno-omit-frame-pointer via global opt flags that
>> is the issue
>> where we have fallouts from default O options I agree we should teach
>> this to build
>> system and help the compiler
>
> Since there's NO situation where enabling frame pointers is going to
> work for this code + ARM + Thumb, I don't see the advantage of leaving
> anything up to chance. Just explicitly disabling frame pointers is the
> safest and cleanest option.

In that case what we are saying is that strace has wrong assumptions
I would think its best to change strace build system to demand this
option override instead of injecting it externally.

