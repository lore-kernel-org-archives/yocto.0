Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 260EFE00A0C; Wed, 15 Feb 2017 23:57:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.65 listed in list.dnswl.org]
Received: from mail-vk0-f65.google.com (mail-vk0-f65.google.com
	[209.85.213.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04AE3E009CF
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 23:57:06 -0800 (PST)
Received: by mail-vk0-f65.google.com with SMTP id n125so758238vke.3
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 23:57:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=eeTiMtzkbxgLyp6JleD8euHWjrSr/Nh9EA9NBX1DDWw=;
	b=LN6OXCctiKAeCEmc9flQTmngYL6tYntssv6tO6ODyn1xH/cCTiAEJ22f3wz5hw4XUc
	iknp950g1l/QiIjqiyaoRJME3L1wI+TTct3N5JdT2rTvPXmdAEDShL8Oc/+rRovqgbDP
	gQ/YUYaACRaHHOiHEULYjyFewb/SDlsRAKNaia50PwZtSo8Atju0DquhYYkPjZ3Rhw22
	DkIJfLddvbxBAWCisfCTzxRzfOHiQrhYS2DVy+c3cVN2bpWrUgHG/1Mvqj6A3VW8cMfd
	g7YMYmFvzmnHQw/9EaWELwzmoJvnN08Im4HEYAgJ+C7SurZt1p0t2w+rWRwTjFYSK8uJ
	slYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=eeTiMtzkbxgLyp6JleD8euHWjrSr/Nh9EA9NBX1DDWw=;
	b=lZ9uJCOqJWRQpqpF/QYvSQJqbnfRFLy5VdaI3+bO8qX3APlfDoQxYV1GJNFMrP+7Jg
	OMpSdwdDORBJtUxGc5/XaYkyM0pnHNjHysY/OT6cGlaYgXj+9Tu205TW2c1EhtIQJdhf
	ZP3EiZI0NYFyLMtydPjmwEBtTLeeE7svygczbgm4cwvUGiwtrNDiVWLz6z4Yb/x/B70U
	66tKmrgv91/o6fP+gvxWQsFxjSLzFWq+UG19Caytr4pKj+2evdzNuumYoqLnUe936HY1
	jBkhYUrcq+wo7wGo856jI5wkSmH2AWYr3q9yP0J/YHDvikX0Ga7DIoIhRde2lQkCZ/iV
	ORfg==
X-Gm-Message-State: AMke39n4+7X5YgcPkwmzHeiYE4pQz5zCPW8eaZrOmlYukWIN6k1FGuQ26RBSZxk+WKNj/lK1I/s5CGuWgQUDxg==
X-Received: by 10.31.212.135 with SMTP id l129mr375660vkg.134.1487231825929;
	Wed, 15 Feb 2017 23:57:05 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.91.68 with HTTP; Wed, 15 Feb 2017 23:57:05 -0800 (PST)
In-Reply-To: <CAHiDW_G3e69veAX4ZUxSG6QMCOLJWB_cH6upd0Muwbn7EQqUTg@mail.gmail.com>
References: <1486913148-23185-1-git-send-email-mickey.happygolucky@gmail.com>
	<20170216014544.GD31588@carbonA>
	<196f4d87-086c-3ff0-2cd6-4595d87de9b8@mlbassoc.com>
	<CAHiDW_G3e69veAX4ZUxSG6QMCOLJWB_cH6upd0Muwbn7EQqUTg@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Thu, 16 Feb 2017 08:57:05 +0100
Message-ID: <CALbNGRS_PGGED6=4D2NRZMB+m3XJPR3RvH_XymX==Yf017OKyg@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>, Gary Thomas <gary@mlbassoc.com>
Subject: Re: [meta-raspberrypi][PATCH] rpi-base.inc: Add xf86-input-evdev to XSERVER
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
X-List-Received-Date: Thu, 16 Feb 2017 07:57:10 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 16, 2017 at 8:37 AM, Jussi Kukkonen
<jussi.kukkonen@intel.com> wrote:
> On 16 February 2017 at 04:14, Gary Thomas <gary@mlbassoc.com> wrote:
>>
>> On 2017-02-16 02:45, Andrei Gherzan wrote:
>>>
>>> On Mon, Feb 13, 2017 at 12:25:48AM +0900, Yusuke Mitsuki wrote:
>>>>
>>>> In order to fix problem that mouse does not work.
>>>>
>>>> This is removed c40558173ffd96c499d101155f6c4c2be85d9f0f.
>>>> However mouse does not worked from this.
>>>> ---
>>>>  conf/machine/include/rpi-base.inc | 1 +
>>>>  1 file changed, 1 insertion(+)
>>>>
>>>> diff --git a/conf/machine/include/rpi-base.inc
>>>> b/conf/machine/include/rpi-base.inc
>>>> index e069e70..051c717 100644
>>>> --- a/conf/machine/include/rpi-base.inc
>>>> +++ b/conf/machine/include/rpi-base.inc
>>>> @@ -11,6 +11,7 @@ XSERVER = " \
>>>>      xserver-xorg \
>>>>      ${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics",
>>>> "xserver-xorg-extension-glx", "", d)} \
>>>>      ${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics",
>>>> "xf86-video-modesetting", "xf86-video-fbdev", d)} \
>>>> +    xf86-input-evdev \
>>>>      "
>>>>
>>>>  KERNEL_DEVICETREE ?= " \
>>>> --
>>>> 2.7.4
>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>>
>>> CC-ing schnitzeltony@googlemail.com as he might have an opinion about
>>> this. I personally don't really hold on any of the options.
>>
>>
>> I think it's the right thing to do, in fact, I was preparing a
>> similar patch myself.  The change that removed this argued that
>> it was not the responsibility of the BSP layer, but if you look
>> around at other BSP layers, almost all of them do include this
>> driver as part of their X server setup.  It also lets X work
>> again on the RaspberryPi "out of the box" with the simplest
>> configuration - HDMI display + USB keyboard & mouse.
>>
>> +1
>
>
> Out of interest: Why is xf86-input-libinput not appropriate for these
> setups? I honestly did not know of a use case where -evdev would work but
> -libinput would not...
>
I would have asked the same question. When preferring -libinput it
might be a good idea to remove
recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/10-evdev.conf

Andreas

