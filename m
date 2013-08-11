Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-lb0-f180.google.com (mail-lb0-f180.google.com
	[209.85.217.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59354E013A7
	for <yocto@yoctoproject.org>; Sun, 11 Aug 2013 07:16:30 -0700 (PDT)
Received: by mail-lb0-f180.google.com with SMTP id a16so4217952lbj.11
	for <yocto@yoctoproject.org>; Sun, 11 Aug 2013 07:16:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=6a9AgaeTMXASmFbR4h9ETPHFT6taxGfPjTqIcdddMBo=;
	b=JhdVOBYgppMM3kL291warmSDqVB+DcfJWbIDzj43DX481dYUtqonnTOOv0A/I6Z6Ui
	oKB1XZnZMf3DyJ/C7ijfommK8nK/1Z8gkA6hn+8/gS3QAyCqFJi1FvmOjBhd+y1u+9MQ
	9eqi9BgVkwwaq6CME29Jhr/7tp10T/Z8vufF3evYbxgOyoXFRJSlA+UmLzQNdfnMOHOI
	+QtjkjXbGFrwLGgA2X5TY9JLpv4WtAVMjVW/KyU3U0i3cWQRB2lFTvIPJ4EYXFCSthZf
	MdkU904Dea1S6MY4DU0nIaP6eRD2OwVbOmosjla6+c5G7KSNbOGBsgKWS+voUttF6EgE
	bxsg==
MIME-Version: 1.0
X-Received: by 10.112.72.100 with SMTP id c4mr7887707lbv.57.1376230588534;
	Sun, 11 Aug 2013 07:16:28 -0700 (PDT)
Received: by 10.112.158.229 with HTTP; Sun, 11 Aug 2013 07:16:28 -0700 (PDT)
In-Reply-To: <8371A058-7AA9-4799-B734-98EB7CA7E278@gmail.com>
References: <51F8BAE8.3090805@gmail.com>
	<CAAQYJAvPts390fqheZoHPN1XF3VtSZ8YaNuFp5P8f3fp_5r=ag@mail.gmail.com>
	<51F8EDB2.4020001@gmail.com>
	<CADkTA4NbutoU4AXyfQ84VQNCUmYv1PZwTFhYDBX8ENbOhCL0Gw@mail.gmail.com>
	<8FA37C33-DF65-4B96-BD90-4D3B784E4A57@gmail.com>
	<51FF1602.8040805@windriver.com>
	<BD3A762D-ACE6-4DB3-971F-B5CC975C0D69@gmail.com>
	<52028282.8020207@windriver.com> <520334EE.2090704@gmail.com>
	<5203913D.8090606@windriver.com> <52071D37.9020009@windriver.com>
	<8371A058-7AA9-4799-B734-98EB7CA7E278@gmail.com>
Date: Sun, 11 Aug 2013 10:16:28 -0400
Message-ID: <CADkTA4O2gKdLWebDpsbUiVvCgD9D3XEFbOtu5L_4K1QO+xjNLw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: =?ISO-8859-1?Q?Martin_Erts=E5s?= <martiert@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building linux-yocto kernel in own bsp layer
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
X-List-Received-Date: Sun, 11 Aug 2013 14:16:32 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Sun, Aug 11, 2013 at 2:51 AM,  <martiert@gmail.com> wrote:
> Btw. Is this yocto-kernel specifics, or is it relatively new in oe? I worked quite a bit in oe about a year ago, and we never used such a file then. But this was not a derivative of yocto-kernel.

It's been around since yocto 0.9, in one form or another, with tweaks
to make things
more "under the covers" as time progresses. It is inherent to kernel's
that inherit
kernel-yocto, which adds functionality around config fragments and
patch management,
etc. If I my latest rounds of tweaks would have been complete, it
would have been
nicely hidden here as well :) It wouldn't hurt other kernels, it would
just be ignored.

Bruce

>
> On 11. aug. 2013, at 07:12, Bruce Ashfield <bruce.ashfield@windriver.com> wrote:
>
>> On 13-08-08 8:38 AM, Bruce Ashfield wrote:
>>> On 13-08-08 02:04 AM, Martin Ertsaas wrote:
>>>> On 08/07/13 19:23, Bruce Ashfield wrote:
>>>>> On 13-08-07 12:31 PM, martiert@gmail.com wrote:
>>>>>> Bruce, have you had the opportunity to look at this yet?
>>>>>
>>>>> I was about to email on this. I was out of the office last week, but
>>>>> was just starting on this last night.
>>>>>
>>>>> Cheers,
>>>>>
>>>>> Bruce
>>>> Great. Thanks for the help btw. It is greatly appreciated. I'm kind of
>>>> stuck on what I have done wrong on this one.
>>>
>>> Understood. I'm bumping this up to my list and have started a test build.
>>
>> I've sorted this out. You didn't do anything wrong, outside of not
>> defining a BSP description for the board you are building.
>>
>> I've had a patch queued for 1.5 that would have detected this mismatch
>> and adapted, but that change is held up on the 3.10 kernel and some
>> other changes .. but I digress.
>>
>> This also should have been in the docs, since it is what the yocto-bsp
>> tool generates for new BSPs. But it's probably not obvious enough, and
>> with my pending patches, that should be ok .. but I digress again.
>>
>> What basically happened is that the atom-pc BSP description was picked
>> to match your pandaboard build. That's why you see the different architecture
>> and what looks like an ignored defconfig. The tools will shortly
>> generate you a skeleton config, but for now, you need to define your
>> own that will be found and used.
>>
>> I've attached a patch that does just that, and when I configured,
>> everything was applied properly.
>>
>> Cheers,
>>
>> Bruce
>>
>>>
>>> Bruce
>>>
>>>>
>>>> - Martin
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>> <0001-pandaboard-add-BSP-description.patch>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

