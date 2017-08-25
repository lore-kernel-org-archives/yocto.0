Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C728FE00CF6; Thu, 24 Aug 2017 21:54:26 -0700 (PDT)
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
	*      [74.125.83.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f43.google.com (mail-pg0-f43.google.com [74.125.83.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 241B7E00D41
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 21:54:19 -0700 (PDT)
Received: by mail-pg0-f43.google.com with SMTP id r133so8771302pgr.3
	for <yocto@yoctoproject.org>; Thu, 24 Aug 2017 21:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=F4R2ZLPWWzWtIEh+MPUUZyLIN3RvcAu9iIB2F+yefYo=;
	b=efRt+1kKwnccAUWQWwW18K2yeXaFkiRwpHvZKCNoC9lGAXjnfbamyQBVEj/1K2kpuG
	Jcp9dQCxM6A4ZbSuTfFBLjlgip4Ugqs+d3KZaZvtt1xN5ubQ3lJlQYemhCgbvIwh6Fzn
	raoiFcc1IYshT6lvANY2IlyNAbnyEOAnzz2xIazr17loH4nwa2elrKmEaOkqpWLv0asF
	/6TkdHLVteWKNiALICcT8h9tZOV/2/Av9QyI2JQun5Rqusat+SsKmqzgRcaFKitDFXBO
	whQ3kS/ogPM1vCRwwTwHX3R9Jc+hkl52nymuZPu1gjy/5tHxJiu8L2tlfK0NwZSPE+1L
	Oyjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=F4R2ZLPWWzWtIEh+MPUUZyLIN3RvcAu9iIB2F+yefYo=;
	b=Oj9Q8EjJeVF6i1QMlKTrz2brQz6tCNx4KeiX0tDf79U1uAYxvddsMj5sa1UR8BVsqh
	dg9iQmtNzTsJ1S3vSSGxNwhFwRlKE6gbWxbVTb0+R1Oqq4J9DLG6LeZTVLuvEDt+b9C/
	+V2hjopOdle/6McT3lX0ZgQ1JNG7Kxc4PD2vAiXFY0saCxaqkRZOszGA9qGjVoNAnVDE
	aJ9K9MLLvb5E7DsaEAM7eGqaAldctOtm619yjBEtzleSIvN6MQIJwW8wPjSzmQjj6824
	QYcKo6EYgOhGFIahMoLy47iD8aspxT+z4Lani2UkvU91SzMlYzSRemDULRev5D+Nbc6o
	xT9g==
X-Gm-Message-State: AHYfb5hUD0kApbOsOaLmIDW/oMDV1G+kZn2jPheajt0z3ab3uncfog6D
	ozI8eFbddhNp3JiCdEDprLoQByEq+Q==
X-Received: by 10.99.165.13 with SMTP id n13mr8460446pgf.317.1503636859237;
	Thu, 24 Aug 2017 21:54:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.167.2 with HTTP; Thu, 24 Aug 2017 21:53:48 -0700 (PDT)
In-Reply-To: <CAJJpNC2tvdQ-=1jJCnkrVvyS4xEbaXfhW6s04kfCbw+W0JRX6g@mail.gmail.com>
References: <CAJJpNC2h4U9iUXTAK1PvHJ99fpmqGdD8MoEn3=HfnP=3Tsg5sw@mail.gmail.com>
	<a48d28db-9736-7291-e890-04966298ca5c@gmail.com>
	<CAJJpNC2tvdQ-=1jJCnkrVvyS4xEbaXfhW6s04kfCbw+W0JRX6g@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 24 Aug 2017 21:53:48 -0700
Message-ID: <CAMKF1sqBo1t4WQJ5rS_HUN7JaZcrhy+EFyq-tb=GsMJW37JjUQ@mail.gmail.com>
To: Stefano Pagnottelli <stefano.pagnottelli@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RDEPENDS dependency problem
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
X-List-Received-Date: Fri, 25 Aug 2017 04:54:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 24, 2017 at 1:41 AM, Stefano Pagnottelli
<stefano.pagnottelli@gmail.com> wrote:
> First of all, thanks for your reply.
>
> Il giorno mer 23 ago 2017 alle ore 20:56 Khem Raj <raj.khem@gmail.com> ha
> scritto:
>>
>> On 8/23/17 1:12 AM, Stefano Pagnottelli wrote:
>> > Hi to all,
>> >
>> > I'm trying to build this layer:
>> > (https://github.com/bachp/meta-homeassistant) using the yocto pyro on =
a
>> > raspberry pi 3 target and the opkg package system.
>> >
>> > Inside the recipe
>> >
>> > (https://github.com/bachp/meta-homeassistant/blob/master/recipes-homea=
ssistant/homeassistant/python3-homeassistant_0.51.2.bb)
>> > there  are some RDEPENDS with strict equal
>> > dependencies (ex:python3-aiohttp (=3D 2.2.5)).
>> >
>> > We I build the image with the opgk package system the system fail in t=
he
>> > do_rootfs task because is not finding the package python3-aiohttp =3D
>> > 2.2.5.. If I understood correctly this happens because the build syste=
m
>> > si appending the recipe revision (PR variable) at end of package name
>> > and the results is  python3-aiohttp_2.2.5-r0 and not
>> > python3-aiohttp_2.2.5 as opkg is expecting.
>>
>> I dont think r0 is in play here. You can test it by changing dependency
>> check to look for  (=3D for 2.2.5-r0), I think it should still fail.
>
>
> I do some tests of on rdendps on the recipe:
>
> With python3-aiohttp (=3D 2.2.5-r0) the image is built without problems, =
with
> python3-aiohttp (>=3D 2.2.5) the image is built without problems, with
> python3-aiohttp (=3D 2.2.5) the task fail with the following error:
>
> Problem 1/1:
>   - nothing provides python3-aiohttp =3D 2.2.5 needed by
> python3-homeassistant-0.51.2-r0.cortexa7hf-neon-vfpv4
>
> So it seems to me that know the recipe revision is mandatory if you want =
to
> put a strict dependency on a rdpends. But if I understood correctly the
> yocto build system it's not possible to predict the recipe revision becau=
se
> is automatically computed,  And a change in the recipe will break the
> dependency also if the source software version is the same because this w=
ill
> change the recipe version.

Yeah ok PV as well as PR both are considered.

>
>>
>>
>> >
>> > As workaround I changed all strict =3D with a >=3D and the build compl=
ete
>> > without errors.
>>
>> this is ok as long as the package can work with newer versions of this
>> package. I am not sure if thats the case, you might have to check with
>> authors intent for using =3D instead of >=3D
>
>
> I think that ,in that case the author is using strict =3D dependencies be=
cause
> we are trying to compile a python project that strictly depend python mod=
ule
> with a specific version.  Can be useful to have strict =3D dependency in =
a
> recipe but it is not mandatory, the project compile well also with >=3D.
>
> Regards
> Stefano
>
>>
>>
>> >
>> > My question is: It's possible to  instruct the build system to ignore
>> > the recipe revision when it match the version of the package? Or in
>> > alternative it's possible to automatically detect the recipe revision =
of
>> > the package?
>> >
>> > Thanks in advance
>> > Stefano
>> > =E2=80=A6
>> > --
>> >
>> > There are 10 types of people in this world, those who understand binar=
y
>> > and those who dont
>> >
>> >
>>
> --
>
> There are 10 types of people in this world, those who understand binary a=
nd
> those who dont
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

