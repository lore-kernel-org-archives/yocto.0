Return-Path: <richbayliss@gmail.com>
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89D24E01440
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2013 07:41:58 -0700 (PDT)
Received: by mail-ie0-f173.google.com with SMTP id k13so7106686iea.18
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2013 07:41:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=2gjw6IT2w/ET7kUKsPIWVLfuD5Tag0sVP0bYNyIvGVY=;
	b=KCeCk1o39qx2I44N9mSm4wdSGL8VhxUP+vGEmaC5kNMaoaEd/Yqf5h3FQeTZ/UDbiJ
	6Nyis7QYNy04sHIIbC/zwFYqY/EeMc/MEXzQfBmX0H1lgbbxGDX7ktJklVq7R3tWhsv6
	fca7N9o7RnWjKJOXURMbAVII053+wCGJN4uQHw9HiEfOSJ9WQutoSOtM6eTqPYzBKihn
	r3S7f5CKQmlazbyCXtrkhjNyBU8P/Vafq5zGuDSOolVlQD42spPvVULnqoIwDK9E6b/Q
	C4auELjjPI0OmpLU5YtOqmy8YqKgrMQMIjGyqRunh1lT6N+q8s7ROHlNqB1Yy6rXGywo
	IOHA==
MIME-Version: 1.0
X-Received: by 10.42.52.201 with SMTP id k9mr6550015icg.47.1374158518284; Thu,
	18 Jul 2013 07:41:58 -0700 (PDT)
Received: by 10.64.23.165 with HTTP; Thu, 18 Jul 2013 07:41:58 -0700 (PDT)
In-Reply-To: <51E7FDC9.6090601@mlbassoc.com>
References: <CAHLvMfaELf9WAjgZJ_wLqGr1wv-wZK++5S27XYbs5ffu668ZRw@mail.gmail.com>
	<CAHLvMfaO2Ve+Z4D8_bKWSMAbskqwwJYjzLsVPvPy8z557Wesug@mail.gmail.com>
	<CAK18fxHz5rHig5tbLN4VjZAr6itpMUVmfem7bjYzbttbT6wN9g@mail.gmail.com>
	<CAHLvMfbsKb1gGPNxc9jprU0oDZDBtEVTp2sHyQOHgLDukdbXpQ@mail.gmail.com>
	<CANyK_8exV4-B3sKZMrqCz5fabn-Fzn22v-9L16BywEHsQE2XbA@mail.gmail.com>
	<CAHLvMfbLE6=inX1HB7K5UuOPakB=od-2v_hk=Bz-cviuBixT2A@mail.gmail.com>
	<CAHLvMfYLErYGHiqoAeDR-huW_0+AToErJ46EK=SQykZ1FBgL5Q@mail.gmail.com>
	<CAHLvMfaV1fbPYip2Cf9cF4_f0S4UDuNUo=rTK-6zzaQPt1MT7w@mail.gmail.com>
	<51E7F7F8.7050601@mlbassoc.com>
	<CAHLvMfaU1mpxJuAvh0POrbFTdnAk9P8WzjKOzSgJGcwP84bUjw@mail.gmail.com>
	<51E7FDC9.6090601@mlbassoc.com>
Date: Thu, 18 Jul 2013 15:41:58 +0100
Message-ID: <CAHLvMfb4Tjsx8jjnMzcxqowtQvLtQ6i1FhUAB7mVQYVm9BRZ-g@mail.gmail.com>
From: Rich Bayliss <richbayliss@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Network not working after first boot success
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
X-List-Received-Date: Thu, 18 Jul 2013 14:42:01 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 18 July 2013 15:38, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2013-07-18 08:20, Rich Bayliss wrote:
>>
>> Indeed. However the usage requirement of the system rely on being
>> headless, and thus a power-pull is likely to happen.
>>
>> I guess the only way to rule this in/out would be run with a RO rootfs
>> - and mount a sperate partition for user files. Do you know how I can
>> achieve this?
>
>
> There is some support in recent OE-core for read-only rootfs.  Search
> the Yocto project archives for more information (I've not tried it yet).
>
> The more interesting thing is that I have systems other than the RPI
> that are built using Poky/Yocto where the power is often the cause
> of a reboot and I've never seen this error/situation occur!  Maybe
> I can experiment a bit and compare the RPI build with my other systems
> (I have both) and see why.  Not sure when I can get to it though...
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------

OK Gary, thanks. I have found an article which states including
"read-only-rootfs" in the IMAGE_FEATURES will provide me with just
that. I am building now, so let's see what happens.

In my opinion, although a power-failure reboot is undesirable from the
OS perspective, I would expect it to come back with networking up - or
at least auto-magically reboot if they aren't for some reason.

--
Rich Bayliss

