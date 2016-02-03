Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85A2FE00C35; Wed,  3 Feb 2016 07:02:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31D56E00C33
	for <yocto@yoctoproject.org>; Wed,  3 Feb 2016 07:02:11 -0800 (PST)
Received: by mail-io0-f179.google.com with SMTP id g73so57966350ioe.3
	for <yocto@yoctoproject.org>; Wed, 03 Feb 2016 07:02:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=fadQSsxYFJVYx9YYr5B/Dcg2ad1OrI3xYD2nPqzb3UM=;
	b=q4Sy6JGq6quHZpiTYS58oMsXJah4diKNrFFzM7iF2SplLNymJpGlUEPPG26VosdYq1
	tDxHUViOLUt6vP6C0W+JeNaxOaeZEAwD+YjZspaxQ2R48NoF2yrMKsNCee63/883RVOT
	yKc7Bs2I+FUFbBnR8xPzFpc6PReF/IwAkBc7vcvSvHqH01Ho3BEXBj37NXpaKgd55qlt
	SgIXjPI+PzQfIs8YF4VetXFP3LJy8W3OOeW5BEfMwOKvAKhgTXSr4wpG7qASUl/29UY6
	gSrSWgdugXfg275/PL8iXnlTAFlvuhgKpZuFDmN4D2xVFjLaOqVYzuKEo0f82TerzcZI
	rSBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=fadQSsxYFJVYx9YYr5B/Dcg2ad1OrI3xYD2nPqzb3UM=;
	b=mENx5HWjggy9X3YvY0EJh8xmkc56O57fKdsXyiOuxyZP5gOfZpBbzV3s2SOEI1CVRB
	UU9NKk7bMGrxZ2uKYdsm/sOM/1Xr3jjb6KhQH7cdRJOm9FLmB3U9vCfEDNWZqjaZLE+I
	3BK7ucsa6AmJKghJQ4YNwQYLUT/igGblBnAEhV33M7VnPVpDRzmOKUXDHmS77H2kEA16
	lmM9H4In/KoMq3P9ylE6galh+GIJkHjmjrRWj6p5Mh2NbbEPZsCRD4caNMKLT/HbO9l/
	+lii/UjrlpIzJtaL3cssxv/Xko1Ao24tLhVoQmKn/Q0wjKyDVMdNRCgbHbkTRxx9vMzF
	UPCA==
X-Gm-Message-State: AG10YOQyloXn6Mv3ku7x51KJswnakBBrFsHQRyUwDWtwmUyOHCOmft8EIusSGflBvBhczcnejEdd1X3QWCFWFQ==
X-Received: by 10.107.9.211 with SMTP id 80mr3734380ioj.112.1454511731347;
	Wed, 03 Feb 2016 07:02:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.46.219 with HTTP; Wed, 3 Feb 2016 07:01:41 -0800 (PST)
In-Reply-To: <EC7BC1CD2E085743BB2AE634252C39C1717AAD@server.exchange.local>
References: <EC7BC1CD2E085743BB2AE634252C39C17170D3@server.exchange.local>
	<AC56FBE6-C8E7-47CF-971A-3E3F8C3F4422@gmail.com>
	<CAEyFGJGx-Cns4Sj3bru4L-e2cCmO+w0dPOy5TkYad9+n+0BuSQ@mail.gmail.com>
	<EC7BC1CD2E085743BB2AE634252C39C1717A39@server.exchange.local>
	<CAMKF1sr-qwCsThsB3PH1v1_7u_jNpZAg-Pg=vp0ZOTHvbevbDg@mail.gmail.com>
	<EC7BC1CD2E085743BB2AE634252C39C1717AAD@server.exchange.local>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 3 Feb 2016 07:01:41 -0800
Message-ID: <CAMKF1sr0tGHWNzm-h=TiMkHk7muUoFxyEULmZnimWxTTw0y+HA@mail.gmail.com>
To: GUEYTAT Julien <j.gueytat@cdssoft.studiel.fr>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-qt5][meta-raspberrypi]: QMAKE_LIBS_EGL not properly set
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
X-List-Received-Date: Wed, 03 Feb 2016 15:02:14 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 3, 2016 at 6:54 AM, GUEYTAT Julien
<j.gueytat@cdssoft.studiel.fr> wrote:
> Setting properly the variable PACKAGECONFIG_GL to gles2 does NOT update p=
roperly the variable QMAKE_LIBS_EGL.
> By default QMAKE_LIBS_EGL =3D -lEGL
> And depending on hardware... it might be something like QMAKE_LIBS_EGL =
=3D -lEGL -lGLESv2 for instance.
> And this specific line... "-lEGL -lGLESv2" is only know in the provider o=
f virtual/libglesv2 ... in this case meta-raspberry.
> The BSP layer could provide a package config file which will be read to s=
et QMAKE_LIBS_EGL properly.
>
> =3D> Which means we would need each package providing virtual/libglesv2 .=
.. to provide also a package config file.
>

packageconfig could be used if libnames are consistent. something
qtbase can be looked into.

for oe you can pass qmake variables like
QMAKE_LIBS_EGL =3D -lEGL -lGLESv2

using EXTRA_QMAKEVARS_PRE variable.

> I hope it's clear now. Tell me if I missed something.
>
> -----Message d'origine-----
> De : Khem Raj [mailto:raj.khem@gmail.com]
> Envoy=C3=A9 : mercredi 3 f=C3=A9vrier 2016 15:45
> =C3=80 : GUEYTAT Julien
> Cc : Yannick Kiekens; yocto@yoctoproject.org
> Objet : Re: [yocto] [meta-qt5][meta-raspberrypi]: QMAKE_LIBS_EGL not prop=
erly set
>
> On Wed, Feb 3, 2016 at 3:46 AM, GUEYTAT Julien <j.gueytat@cdssoft.studiel=
.fr> wrote:
>> Hi everyone,
>>
>>
>>
>> I understand that you are all rewriting the qtbase rule to include at
>> least the modification to the QMAKE_LIBS_EGL variable.
>>
>> The question is:
>>
>> Could we make somehow some work in meta-qt5 or meta-raspberrypi to not
>> have to overwrite the qtbase rule.
>
>
> I dont understand. PAKCAGECONFIGS are specifically desined for this kind =
of scenario what problems are you seeing.
>
>>
>> For instance=E2=80=A6 meta-raspberrypi is providing a package config fil=
e for EGL.
>> May be you could have meta-qt5 read this package config.
>>
>>
>>
>> That=E2=80=99s the question. I=E2=80=99d like to know what the maintaine=
rs of those
>> two layers think about that.
>>
>>
>>
>> Best Regards,
>>
>>
>>
>> De : Yannick Kiekens [mailto:yannickkiekens@gmail.com] Envoy=C3=A9 :
>> mercredi 3 f=C3=A9vrier 2016 08:41 =C3=80 : Khem Raj Cc : GUEYTAT Julien=
;
>> yocto@yoctoproject.org Objet : Re: [yocto]
>> [meta-qt5][meta-raspberrypi]: QMAKE_LIBS_EGL not properly set
>>
>>
>>
>> Have a look at this git repo:
>> https://github.com/YannickKiekens/meta-qt5-pi
>>
>> I have build a qt5 eglfs with raspberry pi2 backend on master branch
>> yesterday evening
>>
>>
>>
>> On Wed, Feb 3, 2016 at 7:08 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>
>>
>>
>> On Feb 2, 2016, at 8:50 AM, GUEYTAT Julien
>> <j.gueytat@cdssoft.studiel.fr>
>> wrote:
>>
>>
>>
>> Hi,
>>
>>
>>
>> It seems that there are some stiff missing between meta-qt5 or
>> meta-raspberrypi.
>>
>> When we set the option gles=E2=80=A6 to qtbase we don=E2=80=99t get the =
QMAKE_LIBS_EGL
>> set properly.
>>
>> We can compare a working set of variables in the qt mkspecs directory of=
 qt.
>>
>> There is one dedicated file for the RaspberryPi2. May be one also for
>> RaspberryPi.
>>
>> Anyway!
>>
>> How could we set those *_EGL variables properly? And=E2=80=A6 If they ar=
e
>> properly set, will qtbase will take them into account?
>>
>>
>>
>> I will be happy to propose a patch but I need to get more precision firs=
t.
>>
>>
>>
>> Firstly show the DISTRO_FEATURES may be you are missing some important
>> knobs for EGL
>>
>> like openGL and gles2 etc.
>>
>>
>>
>> Thanks in advance,
>>
>>
>>
>>
>>
>>
>>
>> Julien GUEYTAT
>>
>> Ing=C3=A9nieur Informatique
>>
>> <image001.png>
>>
>> 1027, avenue du Docteur Julien Lefebre BP27
>>
>> 06271 Villeneuve-Loubet Cedex
>>
>> Fixe :  +33 (0) 492 024 545
>> Mob :  +33(0) 617 980 383
>> Fax :    +33(0) 492 024 546
>> Email : j.gueytat@cdssoft.studiel.fr
>>
>> www : www.studiel.fr
>>
>> P Pensez Environnement, imprimez seulement si n=C3=A9cessaire
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>>

