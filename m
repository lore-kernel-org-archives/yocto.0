Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BB1BE0140A
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 16:26:03 -0700 (PDT)
Received: by eabd1 with SMTP id d1so47327eab.35
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2012 16:26:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=O9mAGdmjDIkYqL6gLMCF/ZIbR//+d+FR7LCqMx1uBNA=;
	b=V1EJ9BbKDoc98iqfqb0BuZoDLBlYwdpeixqUDm4nCCbloLuwYE4Iecz0qMkFEtqw5z
	oFdxhmy6jrOLZdvURL5Y11wC6H+3Sjc2DDko4Y1aKQwmMc4oYvZQRjSzbIltu0XnQX4c
	8EU2CgYeomPqY4Hg8lV4shAl3wadSctd4MokmgzbISyagm1vvLxtPvoi9TD0PDgI+HFo
	aUjAVKVLdXk2r+NgpsI0rgu8Kt4QMchRuh/P6vqMg06rrmHj81TA32JL17RNHnY+oi5h
	AN6d0Z3Sdt5OVErJ1rb1Sh7o5Zoggzgoo4I2hRoIKaN4L9nC1oF2550vgtLZfXVxl9l/
	ZTEw==
Received: by 10.14.220.70 with SMTP id n46mr20952185eep.42.1345677961934; Wed,
	22 Aug 2012 16:26:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.5 with HTTP; Wed, 22 Aug 2012 16:25:31 -0700 (PDT)
In-Reply-To: <50356A22.7070705@am.sony.com>
References: <CAHUNapSmuzJaUkE2fz27-6MDWGg5TAUug9sBxPWEqneM2OO1WA@mail.gmail.com>
	<CA+YB3raTP8ROCvuidyH8zoupo4_qO1a+oWZ_Noakm3Kx5suRag@mail.gmail.com>
	<CAHUNapRLsCWvefm1+Sc0QT2OhVJ-e0fa3iF7zL2H2qFQLR+AUA@mail.gmail.com>
	<CABcZAN=Dktdoq00_uHAvG7Wy2UgQhZS0KbZOeCK-s=7B+RbwWA@mail.gmail.com>
	<CAHUNapRvcW+M2t-LUpDYGRYJBYhLu0Yy_z66gHqE67kb9yWXvA@mail.gmail.com>
	<CABcZAN=cCub4sgSW7am+TaA8bois9Q23_x1kRmWWBCh9=hCNXQ@mail.gmail.com>
	<alpine.DEB.2.02.1208221623080.20631@oneiric>
	<50356A22.7070705@am.sony.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 22 Aug 2012 16:25:31 -0700
Message-ID: <CAMKF1sqzgj=AHxPYO2EC8kGRJkq=3qsO8DwhATRd1c_j3m8_2A@mail.gmail.com>
To: Tim Bird <tim.bird@am.sony.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Chris Larson <clarson@kergoth.com>
Subject: Re: of recipes and packages
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
X-List-Received-Date: Wed, 22 Aug 2012 23:26:03 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 22, 2012 at 4:24 PM, Tim Bird <tim.bird@am.sony.com> wrote:
> On 08/22/2012 01:27 PM, Robert P. J. Day wrote:
>> On Wed, 22 Aug 2012, Chris Larson wrote:
>>
>>> On Wed, Aug 22, 2012 at 1:15 PM, Trevor Woerner <twoerner@gmail.com> wr=
ote:
>>>> On Wed, Aug 22, 2012 at 3:24 PM, Chris Larson <clarson@kergoth.com> wr=
ote:
>>>>> On Wed, Aug 22, 2012 at 12:23 PM, Trevor Woerner <twoerner@gmail.com>=
 wrote:
>>>>>> "bitbake -s" doesn't list "net-snmp-dbg net-snmp-doc net-snmp-dev...=
"
>>>>>> it lists "net-snmp". Therefore couldn't the wording of the bitbake
>>>>>> help be improved to say:
>>>>>>
>>>>>> -s, --show-versions   show current and preferred versions of all __r=
ecipes__
>>>>>>
>>>>>> instead of:
>>>>>
>>>>>
>>>>> It could, and should, be changed in that way, yes.
>>>>
>>>> Do the OE people accept this wording too, or is this a
>>>> yocto-project-only thing? In other words, should a potential patch be
>>>> sent to OE or here?
>>>
>>> The change would be to a core component, which is part of OE and which
>>> yocto pulls in =E2=80=94 bitbake. So it would make no sense to send the=
 patch
>>> here. No changes to bitbake are going into poky without going into the
>>> main bitbake repository. The bitbake-devel mailing list is the correct
>>> place for it.
>>
>>   there really should be an official glossary somewhere, and it should
>> be backed up with *actual* *examples* from the source as much as
>> possible.  that is, don't use "foo" if there's an existing recipe or
>> package whose use would be more informative.
>
> From Jeff's description, it sounded like the package (especially 'package=
 version')
> comes from the stuff that is the recipe's *input*, and not the recipe's o=
utput
>  -- if you've selected to build packages and not just a straight image.
>
> Is 'package' also used in that sense, to describe, say, the tarball for b=
usybox
> before it's processed by bitbake and made into an busybox binary ipkg or =
rpm?
>
> Or am I just muddying the waters further?
>
> BTW, on denzil, I get the following:
> $ bitbake -s | grep busybox
> busybox                         :1.19.4-r2
>


anything you bake using bitbake is a recipe (input rules) which then
generates packages (output) and there can be many packages generated
from single recipes and one of the name of output package can be same
as recipe name.


> Note that this includes the version of busybox (the input source version)=
, as
> well as (I think) the recipe revision number.
>
> And yes - a definitive glossary would be great.
>  -- Tim
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
> Tim Bird
> Architecture Group Chair, CE Workgroup of the Linux Foundation
> Senior Staff Engineer, Sony Network Entertainment
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

