Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-pz0-f41.google.com (mail-pz0-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD452E0030B
	for <yocto@yoctoproject.org>; Mon, 30 Apr 2012 17:16:24 -0700 (PDT)
Received: by dajx4 with SMTP id x4so5041851daj.28
	for <yocto@yoctoproject.org>; Mon, 30 Apr 2012 17:16:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=E7bCKB4yoJpA+eo+UfOAI1c+4V2gnLpNzx1hlPz7HZg=;
	b=yHAXKFXbifNj4H2J08/4ZrTjETUMl0nhk9skBHt67morebVCpP6i4Wy63VcCR3DGCQ
	hRYtLcoJB3KQmCRa7vkvDk6KRl8727OMbRV9Lers4mXnbXff0JGE+pHTGfbFZ65eTr/J
	1p/SUlxFwyDDumNE0FMcT1lCx7OzZqPObItlIeAtvoTF+sJ3WuiMfOXyaYuOd77yJRpq
	+nj5rgIaRvGTsj4+ttjR08m65batytNZYuCgrcPe58Yp8hN/mNdZePAI8kCNDAbR2x8f
	W0SBeJAwExBuCAbIc4r9Wpa3mC8RIqb7aVia9MkWY3UMGKqJeo9CxiTLye89dzljztEO
	H+qA==
MIME-Version: 1.0
Received: by 10.68.229.97 with SMTP id sp1mr10111850pbc.41.1335831384590; Mon,
	30 Apr 2012 17:16:24 -0700 (PDT)
Received: by 10.68.55.104 with HTTP; Mon, 30 Apr 2012 17:16:24 -0700 (PDT)
In-Reply-To: <D98BDF90-3361-4255-BE28-F53A645862CD@keylevel.com>
References: <82CCA538-B495-44B3-8E06-F13282FAC541@keylevel.com>
	<4F9EA067.5030806@windriver.com>
	<D98BDF90-3361-4255-BE28-F53A645862CD@keylevel.com>
Date: Mon, 30 Apr 2012 20:16:24 -0400
Message-ID: <CADkTA4N-RuxU6WbVhEw=TmdcWj85xjPM4NAiFgMbxKCPGV+2=Q@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Chris Tapp <opensource@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: BSP kernel configuration redefines config options
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
X-List-Received-Date: Tue, 01 May 2012 00:16:24 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Mon, Apr 30, 2012 at 4:16 PM, Chris Tapp <opensource@keylevel.com> wrote=
:
> On 30 Apr 2012, at 15:23, Bruce Ashfield wrote:
>
>> On 12-04-30 10:20 AM, Chris Tapp wrote:
>>> I've got a BSP that has the following kernel configuration linux-yocto_=
3.0.bbappend:
>>>
>>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
>>>
>>> COMPATIBLE_MACHINE_mybsp =3D "mybsp"
>>> KMACHINE_mybsp =A0=3D "yocto/standard/common-pc/base"
>>>
>>> SRC_URI +=3D " file://defconfig"
>>>
>>> SRCREV_machine_pn-linux-yocto_mybsp ?=3D "d7e81e7f975c57c581ce13446adf0=
23f95d9fd9f"
>>> SRCREV_meta_pn-linux-yocto_mybsp ?=3D "d386e09f316e03061c088d2b13a48605=
c20fb3a6"
>>>
>>> This builds ok, but I get a note that says "There were 43 kernel config=
 options redefined during processing this BSP". I assume this is because th=
e defconfig file is at odds with the kernel I've selected as the base for t=
he BSP. Is it possible to get this note to 'go away' ?
>>
>> Yes, that's exactly what would be triggering it. It's currently
>> not controlled via a flag, since it is technically a value add :)
>
> Yes, I suspected a 'conflict of interest' here ;-)
>
>> But to make it go away, I'd just suggest overriding do_kernel_configchec=
k()
>> in your layer.
>
> Is that all that happens in here, or would I be losing something I may wa=
nt to know about as well?

It tells you about overrides, invalid, duplicate, redefined, hardware
and non-hardware options.
But it's all 'configure validation and reporting'. So if you don't
want that, just clobber the routine.

Cheers,

Bruce

>
>> Cheers,
>>
>> Bruce
>>
>>>
>>> I'm running under 6.0.1 and haven't spotted anything in the user manual=
s that I think would help.
>>>
>>> Chris Tapp
>>>
>>> opensource@keylevel.com
>>> www.keylevel.com
>>>
>>>
>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

