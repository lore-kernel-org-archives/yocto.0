Return-Path: <erik.boto@pelagicore.com>
Received: from mail-ob0-f171.google.com (mail-ob0-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 906E5E009EA
	for <yocto@yoctoproject.org>; Wed, 12 Mar 2014 06:15:37 -0700 (PDT)
Received: by mail-ob0-f171.google.com with SMTP id wn1so10003076obc.2
	for <yocto@yoctoproject.org>; Wed, 12 Mar 2014 06:15:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=9OhF81JsiC7BYt6p/4QJEqKqodLxBUgaEaBOI/8H+qs=;
	b=Bd6uDVvlUlXQ6p6zvXbIzGfxxqcEit2H8n4Bb5hyw5GvMN1wVfchViHSjQGf6/iR/4
	NIsHsefAGYn6iA++wDAEQ+Zqth/op/llKiUQ7pen/K/XzCvQDgOKvm1RKOEMclyZk4GC
	cEnyFZVMd5l/afHcL/o4nlUu5iNu3CzepKnlMSZcAit//1p+y/fuwdpFKRgJfDfQITbd
	uFVEsFSsn3Dz4+IUi4PNDRLSaXZiK0c8MZwb6YJHFlvxWGbpy7ulmGsIJTGnGeokG8hF
	vIcNiVHob5RPS2LPe0nUtF/dTDjfOVNrDRMBgOFEX+D2D49j5iDJyTkrI3eEBtsJj+q2
	K+OA==
X-Gm-Message-State: ALoCoQn0DUJGUJQXXdpWl708M4Q4PRukZoZUj1CNmyXpGGRDR/qS19/NP8sfPRnW7n4NmlN4VjQS
MIME-Version: 1.0
X-Received: by 10.182.34.196 with SMTP id b4mr38505592obj.13.1394630136513;
	Wed, 12 Mar 2014 06:15:36 -0700 (PDT)
Received: by 10.76.177.166 with HTTP; Wed, 12 Mar 2014 06:15:36 -0700 (PDT)
In-Reply-To: <CAJuQfSjDGTjh7RxRrmv4s-2Rf3R7o6AbinbC5iEyAZjk5hjTsw@mail.gmail.com>
References: <CAJuQfSgvi8bDwg3kbUa7UyP3=dPiT-YYcjFZGDVCer+NiURGCg@mail.gmail.com>
	<CAJuQfSgs-VXaAsEWnhshs9CGK2tBz0gOkH6tZtFZ13Q700hU=Q@mail.gmail.com>
	<CAJuQfSjDGTjh7RxRrmv4s-2Rf3R7o6AbinbC5iEyAZjk5hjTsw@mail.gmail.com>
Date: Wed, 12 Mar 2014 14:15:36 +0100
Message-ID: <CA+AhUGwF17XyvODKXdo-gN1BFjmSqAZjZXEXjpF1_eLmH7sByQ@mail.gmail.com>
From: =?ISO-8859-1?Q?Erik_Bot=F6?= <erik.boto@pelagicore.com>
To: sheerapthinath <sheerapthinath@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Autotools not configuring
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
X-List-Received-Date: Wed, 12 Mar 2014 13:15:41 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Mar 10, 2014 at 3:24 PM, sheerapthinath
<sheerapthinath@gmail.com> wrote:
> Can anyone please tell whats wrong with the recipe and why am getting
> this error?

I think you need to share the contents of hello/ in order for anyone
to be able to help. It
sounds very much like you just lack a install target in your Makefile,
but it's hard to tell
without the files.

Cheers,
Erik

>
> On Sat, Mar 8, 2014 at 7:31 PM, sheerapthinath <sheerapthinath@gmail.com>=
 wrote:
>> On Sat, Mar 8, 2014 at 7:26 PM, sheerapthinath <sheerapthinath@gmail.com=
> wrote:
>>> Hi,
>>>
>>> I am new to yocto and trying to build a package for raspberry pi.
>>> I am using the BSP layer from https://github.com/djwillis/meta-raspberr=
ypi.
>>>
>>> Am able to build the image using BSP without any problem. But when I
>>> added a new layer to add packages, am getting error.
>>>
>>> I tried testing with the hello world auto tooled package. When trying
>>> to execute that bb, am getting the error as follows,
>>>
>>> make: *** No rule to make target `install'.  Stop.
>>> | ERROR: oe_runmake failed
>>>
>>>
>>>
>>> --
>>> Regards,
>>> Sheerapthinath OS
>>
>> My bb file is as follows,
>> DESCRIPTION =3D "Dummy"
>> SECTION =3D "package"
>> LICENSE =3D "CLOSED"
>> PR =3D "r0"
>> SRC_URI =3D "file://hello/"
>> inherit autotools gettext
>>
>> After executing this bb file, i took a look at the logs of configure.
>> It says nothing to configure. This hello world is the dummy auto
>> tooled packed downloaded from yocto site.
>> Please help me with what's wrong with this process am following?
>>
>>
>> --
>> Regards,
>> Sheerapthinath OS
>
>
>
> --
> Regards,
> Sheerapthinath OS
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Erik Bot=F6
Senior Software Engineer
Pelagicore AB
Ekelundsgatan 4, 6tr, SE-411 18 Gothenburg, Sweden
Mobile: +46 (0)76 881 72 03
E-Mail: erik.boto@pelagicore.com
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

