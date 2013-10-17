Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-lb0-f181.google.com (mail-lb0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4866BE016B2
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 20:56:10 -0700 (PDT)
Received: by mail-lb0-f181.google.com with SMTP id x18so144407lbi.40
	for <yocto@yoctoproject.org>; Wed, 16 Oct 2013 20:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=JA1XniYyr0ceMfUiBHCMbFfnsRvqFjGM94iCCO68aSM=;
	b=bGIEqNM8BPJ5w+lhYZyRUGoqWsnyGsoyvBCXRDGG0F/HHslyCoFQEdaWjDp76cG/Vw
	mFJEaNA5DOA6z3CGFjRot5WB1s8seUq+VVrZ9AowVV3v7CiPKkkbR4MFWuthX2L56Xq/
	SrAAkkAIuTC2jvwadtYT+YRRdiJU3kc4WDyGs9aoLK2PMS5b1lk1uOIfZtTAXIBXuqar
	KwzeqcKItXQXWtgqhZHLlO4UTeOisotcoZYdOo6OIl+5pOso2gaCewc4oaKTy9dTEfGi
	o4dtLDUsLPQxDT+m3xgcTW/3Cp9I7H+QKa8EIXs5uUX5C5jQLd71LOfGIiVfI25Tyvvi
	U/yQ==
MIME-Version: 1.0
X-Received: by 10.152.22.226 with SMTP id h2mr5449697laf.2.1381982169070; Wed,
	16 Oct 2013 20:56:09 -0700 (PDT)
Received: by 10.112.14.200 with HTTP; Wed, 16 Oct 2013 20:56:09 -0700 (PDT)
In-Reply-To: <CAMCfZKFh8iJH4655mzFveFYfz8ebLXkGftSa-MR5mEcMEFV8Vw@mail.gmail.com>
References: <CAMCfZKFBvSiRSMk5wrEpSEiNNiZeHJw18fbHgHzepo__U=UWNA@mail.gmail.com>
	<CA+gsK-o6n24Aqp2dtpOwnmrCBjWE=HDSJvfqyYy2pvJYrHqXmQ@mail.gmail.com>
	<CAAQYJAu+wU0ODvVoTrRBFhVOUVh+CdMg3mimfgGkj-pwJh3A1g@mail.gmail.com>
	<CAMCfZKF_Rp=uds8tnDPSD9k3GO5dEiHSx9WfYjZ0yPkmh_9YPg@mail.gmail.com>
	<CAMCfZKFh8iJH4655mzFveFYfz8ebLXkGftSa-MR5mEcMEFV8Vw@mail.gmail.com>
Date: Wed, 16 Oct 2013 23:56:09 -0400
Message-ID: <CADkTA4MgxmiOofDLynbOLR=hV-KQ1ic+Eagjm0yetYOtB6FJzw@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Diego Sueiro <diego.sueiro@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf Streif <rstreif@linuxfoundation.org>
Subject: Re: Custom defconfig is not used
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
X-List-Received-Date: Thu, 17 Oct 2013 03:56:11 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 16, 2013 at 2:19 PM, Diego Sueiro <diego.sueiro@gmail.com> wrot=
e:
> Folks,
>
> Looking at log.do_unpack it shows:
>
> ...
> NOTE: Unpacking
> <...>/meta-beagleboard/common-bsp/recipes-kernel/linux/linux-mainline-3.8=
/beaglebone/defconfig
> to
> <...>/build/tmp-angstrom_v2013_06-eglibc/work/beaglebone-angstrom-linux-g=
nueabi/linux-mainline/3.8.13-r23a/
> ...
>
> NOTE: Unpacking
> <...>/meta-mine/recipes-kernel/linux/linux-mainline-3.8/mine.patch to
> <...>/build/tmp-angstrom_v2013_06-eglibc/work/beaglebone-angstrom-linux-g=
nueabi/linux-mainline/3.8.13-r23a/
> NOTE: Unpacking
> <...>/meta-beagleboard/common-bsp/recipes-kernel/linux/linux-mainline-3.8=
/beaglebone/defconfig
> to
> <...>/build/tmp-angstrom_v2013_06-eglibc/work/beaglebone-angstrom-linux-g=
nueabi/linux-mainline/3.8.13-r23a/
>
>
> Note that it copies defconfig from meta-beagleboard and in the end, inste=
ad
> copying mine, it is copying from meta-beagleboard again.
>
> My layer has the priority higher than meta-beagleboard.

I can't get at my machines to test this myself (technically I'm still
on vacation), but when you
dump the bitbake environment, how many defconfig's show up in the
SRC_URI ? It would be
easy enough in your bbapend to simply call your defconfig something
else (i.e. defconfig-mine)
and override/append to kernel_do_configure() to simply copy yours over
top of the .config,
regardless of what the fetcher is doing with the SRC_URI.

Bruce

>
>
>
> Abra=C3=A7os,
>
> --
> *dS
> Diego Sueiro
>
> Administrador do Embarcados
> www.embarcados.com.br
>
> Engenheiro de Controle e Automa=C3=A7=C3=A3o
> UNIVERSIDADE FEDERAL DE ITAJUB=C3=80
>
>
> /*long live rock 'n roll*/
>
>
> 2013/10/16 Diego Sueiro <diego.sueiro@gmail.com>
>>
>> Guys,
>>
>> As I told before, I already tried the config fragment strategy and it di=
d
>> not worked too.
>>
>> Looking at linux-mailine-3.8.bb from meta-beagleboard[1] it just inherit=
s
>> kernel and not inherits linux-yocto or requires linux-yocto.inc. So I
>> believe that the config fragment will not work. But I can be wrong.
>>
>> On directory "meta-mine/recipes-kernel/linux/" I have this:
>>
>> .
>> =E2=94=9C=E2=94=80=E2=94=80 files
>> =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 mine.patch
>> =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 defconfig
>> =E2=94=94=E2=94=80=E2=94=80 linux-mainline_3.8.bbappend
>>
>>
>> And my linux-mainline_3.8.bbappend recipe:
>>
>> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
>> SRC_URI +=3D " file://mine.patch \
>>              file://defconfig \
>>              "
>>
>> The mine.patch is applied but defconfig not.
>>
>> I've already tried to use another FILESEXTRAPATHS layout like[2],but no
>> success too.
>>
>> How can I have the "bb" command listed on the following link?
>> http://www.crashcourse.ca/wiki/index.php/OE_FILESEXTRAPATHS
>>
>>
>> [1] -
>> https://github.com/beagleboard/meta-beagleboard/blob/dylan/common-bsp/re=
cipes-kernel/linux/linux-mainline_3.8.bb
>> [2] -
>> http://cgit.openembedded.org/meta-handheld/tree/recipes-kernel/linux/lin=
ux-yocto_3.10.bbappend
>>
>> Regards,
>>
>> --
>> *dS
>> Diego Sueiro
>>
>> /*long live rock 'n roll*/
>>
>>
>> 2013/10/15 Andrea Adami <andrea.adami@gmail.com>
>>>
>>> Hi,
>>>
>>> I guess you're setting a wrong FILESEXTRAPATHS_prepend :=3D
>>> "${THISDIR}/files:"
>>>
>>> See this example, using simple defconfig for some devices and an
>>> experimental configuration (WIP ;) fo others using fragments.
>>>
>>>
>>> http://cgit.openembedded.org/meta-handheld/tree/recipes-kernel/linux/li=
nux-yocto_3.10.bbappend
>>>
>>> Cheers
>>>
>>> Andrea
>>>
>>>
>>> On Tue, Oct 15, 2013 at 11:49 PM, Rudolf Streif
>>> <rstreif@linuxfoundation.org> wrote:
>>> > Diego,
>>> >
>>> > You are appending a kernel recipe that uses the Linux Yocto tooling.
>>> > The
>>> > defconfig is essentially comprised of many different pieces from the
>>> > meta
>>> > branch of the Yocto kernel repository and optional configuration
>>> > fragments
>>> > that you provide. This tooling will not recognize a defconfig file yo=
u
>>> > provide but it does recognize configuration fragments to be added to
>>> > .config.
>>> >
>>> > You need to put
>>> >
>>> > CONFIG_WATCHDOG_NOWAYOUT=3Dy
>>> >
>>> > into a file that ends with .cfg eg. watchdog.cfg and then modify your
>>> > bbappend to
>>> >
>>> > FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
>>> > SRC_URI +=3D " file://0019-mine.patch \
>>> >              file://watchdog.cfg \
>>> >              "
>>> >
>>> > Rudi
>>> >
>>> >
>>> >
>>> > On Tue, Oct 15, 2013 at 2:07 PM, Diego Sueiro <diego.sueiro@gmail.com=
>
>>> > wrote:
>>> >>
>>> >> Folks,
>>> >>
>>> >> I created the following bbapend recipe for linux-mainline_3.8.bb (fr=
om
>>> >> meta-beagleboard on dylan branch) for beaglebone.
>>> >> meta-mine/recipes-kernel/linux/linux-mainline_3.8.bbappend:
>>> >>
>>> >> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
>>> >> SRC_URI +=3D " file://0019-mine.patch \
>>> >>              file://defconfig \
>>> >>              "
>>> >>
>>> >> But the defconfig and .config files on ${S} and ${WORKDIR} used are
>>> >> from
>>> >> meta-beagleboad, not from my bbappend.
>>> >>
>>> >> I tried to follow the instructions to add config fragments on the pa=
ge
>>> >> below but it did not worked too.
>>> >>
>>> >>
>>> >> http://www.yoctoproject.org/docs/current/kernel-dev/kernel-dev.html#=
changing-the-configuration
>>> >>
>>> >> The strange thing is: My patch is applied but my defconfig, or confi=
g
>>> >> fragment is not used.
>>> >> I just want to add CONFIG_WATCHDOG_NOWAYOUT=3Dy.
>>> >>
>>> >> I already did a cleasstate but no success.
>>> >>
>>> >> Any hints?
>>> >>
>>> >>
>>> >> Regards,
>>> >>
>>> >> --
>>> >> *dS
>>> >> Diego Sueiro
>>> >>
>>> >> /*long live rock 'n roll*/
>>> >>
>>> >> _______________________________________________
>>> >> yocto mailing list
>>> >> yocto@yoctoproject.org
>>> >> https://lists.yoctoproject.org/listinfo/yocto
>>> >>
>>> >
>>> >
>>> >
>>> >
>>> >
>>> > _______________________________________________
>>> > yocto mailing list
>>> > yocto@yoctoproject.org
>>> > https://lists.yoctoproject.org/listinfo/yocto
>>> >
>>
>>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

