Return-Path: <martiert@gmail.com>
Received: from mail-ea0-f171.google.com (mail-ea0-f171.google.com
	[209.85.215.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54FEDE003D4
	for <yocto@yoctoproject.org>; Sat, 10 Aug 2013 23:51:50 -0700 (PDT)
Received: by mail-ea0-f171.google.com with SMTP id n15so2797541ead.2
	for <yocto@yoctoproject.org>; Sat, 10 Aug 2013 23:51:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=references:mime-version:in-reply-to:content-type
	:content-transfer-encoding:message-id:cc:from:subject:date:to;
	bh=rHKm0jMG8yk8UAMceA5eFQ6Q5v7GjHSfoM56OWVZ6IM=;
	b=CMhjUMhMRq95VLnJcuMWiRymY39sp3EMafV577MP6vDEpNEiVs7R9YRQiEQkBMfA+x
	Diz97FwWnyvuxf3hMrNCuCpag4X9O6riAXt3+dXTuvVWKYDi1ElblIudmwV2EZhYFdFZ
	kNy044niF/cw9ooIyB0pdOqwfbCT/kPkqBPJTydA/FJZcpKAuoRcDXwLSFHVKSKzpfzr
	jn8rPvJm29X8tVBzm54vtaRUi/0geyalRwNzuPlwE4oxo5ooMdU2yUO9qx5WFkrP1Ja/
	FadEZ2X9sxoFo6xINpYKpyptBlOt8LhNVXyYa7HJDiaF23WoXbGxrcubv6IgxCEUyoT+
	kFxQ==
X-Received: by 10.14.214.136 with SMTP id c8mr19855982eep.6.1376203909294;
	Sat, 10 Aug 2013 23:51:49 -0700 (PDT)
Received: from [192.168.1.141] ([95.169.53.65])
	by mx.google.com with ESMTPSA id a4sm45462713eez.0.2013.08.10.23.51.47
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 10 Aug 2013 23:51:48 -0700 (PDT)
References: <51F8BAE8.3090805@gmail.com>
	<CAAQYJAvPts390fqheZoHPN1XF3VtSZ8YaNuFp5P8f3fp_5r=ag@mail.gmail.com>
	<51F8EDB2.4020001@gmail.com>
	<CADkTA4NbutoU4AXyfQ84VQNCUmYv1PZwTFhYDBX8ENbOhCL0Gw@mail.gmail.com>
	<8FA37C33-DF65-4B96-BD90-4D3B784E4A57@gmail.com>
	<51FF1602.8040805@windriver.com>
	<BD3A762D-ACE6-4DB3-971F-B5CC975C0D69@gmail.com>
	<52028282.8020207@windriver.com> <520334EE.2090704@gmail.com>
	<5203913D.8090606@windriver.com> <52071D37.9020009@windriver.com>
Mime-Version: 1.0 (1.0)
In-Reply-To: <52071D37.9020009@windriver.com>
Message-Id: <8371A058-7AA9-4799-B734-98EB7CA7E278@gmail.com>
X-Mailer: iPad Mail (10B329)
From: martiert@gmail.com
Date: Sun, 11 Aug 2013 08:51:48 +0200
To: Bruce Ashfield <bruce.ashfield@windriver.com>
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
X-List-Received-Date: Sun, 11 Aug 2013 06:51:52 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Btw. Is this yocto-kernel specifics, or is it relatively new in oe? I worked=
 quite a bit in oe about a year ago, and we never used such a file then. But=
 this was not a derivative of yocto-kernel.

On 11. aug. 2013, at 07:12, Bruce Ashfield <bruce.ashfield@windriver.com> wr=
ote:

> On 13-08-08 8:38 AM, Bruce Ashfield wrote:
>> On 13-08-08 02:04 AM, Martin Ertsaas wrote:
>>> On 08/07/13 19:23, Bruce Ashfield wrote:
>>>> On 13-08-07 12:31 PM, martiert@gmail.com wrote:
>>>>> Bruce, have you had the opportunity to look at this yet?
>>>>=20
>>>> I was about to email on this. I was out of the office last week, but
>>>> was just starting on this last night.
>>>>=20
>>>> Cheers,
>>>>=20
>>>> Bruce
>>> Great. Thanks for the help btw. It is greatly appreciated. I'm kind of
>>> stuck on what I have done wrong on this one.
>>=20
>> Understood. I'm bumping this up to my list and have started a test build.=

>=20
> I've sorted this out. You didn't do anything wrong, outside of not
> defining a BSP description for the board you are building.
>=20
> I've had a patch queued for 1.5 that would have detected this mismatch
> and adapted, but that change is held up on the 3.10 kernel and some
> other changes .. but I digress.
>=20
> This also should have been in the docs, since it is what the yocto-bsp
> tool generates for new BSPs. But it's probably not obvious enough, and
> with my pending patches, that should be ok .. but I digress again.
>=20
> What basically happened is that the atom-pc BSP description was picked
> to match your pandaboard build. That's why you see the different architect=
ure
> and what looks like an ignored defconfig. The tools will shortly
> generate you a skeleton config, but for now, you need to define your
> own that will be found and used.
>=20
> I've attached a patch that does just that, and when I configured,
> everything was applied properly.
>=20
> Cheers,
>=20
> Bruce
>=20
>>=20
>> Bruce
>>=20
>>>=20
>>> - Martin
>>=20
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>=20
> <0001-pandaboard-add-BSP-description.patch>

