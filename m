Return-Path: <djszapi@archlinux.us>
Received: from mail-pa0-f41.google.com (mail-pa0-f41.google.com
	[209.85.220.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE321E013A2
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 11:20:25 -0700 (PDT)
Received: by mail-pa0-f41.google.com with SMTP id bj3so976473pad.14
	for <yocto@yoctoproject.org>; Wed, 24 Jul 2013 11:20:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=VTyQ5sPMDl4nfAwoysuabkXbY6SJ/85ErW8kkCxzZBA=;
	b=Pj1VDPEZ305Jemn6Fs6NyXr072DNcKkmIj8/eaFlUv0eD4OXlo+ZTfVXGqcdF6gPa+
	GCM+6yeo6srz9iflM0MlXiVr0YbvpaAOqP7/BmT3i3PMSzcTPl0dlLsHNihRRQLgtTUa
	BEFChIGoakJq3cqvVq9dyfCsq31hLDT7fpyUFeEb6pvCFO7lsR+hjfRuctcFJoG2uE3Z
	HUyZm7iPdwVuCMKNsWGoFbHabYR3zAc4xkowTI3AiYkXRnqqnaDXKryixgHnDp4cjYx9
	A9PIrPP8RRav+Mte9pKAd9Ags0iSQap7bnyQSM8npdZouHPLZogLnAmnm0znJaV//60q
	JadQ==
MIME-Version: 1.0
X-Received: by 10.66.27.143 with SMTP id t15mr40660620pag.171.1374690025037;
	Wed, 24 Jul 2013 11:20:25 -0700 (PDT)
Sender: djszapi@archlinux.us
Received: by 10.70.37.237 with HTTP; Wed, 24 Jul 2013 11:20:24 -0700 (PDT)
In-Reply-To: <51F01A01.9030300@intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F06185@ORSMSX106.amr.corp.intel.com>
	<CAN20qYp+MW8+LMWS29ZDfmNoh+yRkadLsnbatY8btX8yAU7Rsg@mail.gmail.com>
	<CAOMwXhNt-p4iEJnuGYb75WJtA+5PbnsSouJSriQaa-rnRsOn2Q@mail.gmail.com>
	<CAN20qYrikM0gNDSOCEsxv_kCSSOTdon8bJqyL4Z-1RKq-z2MHA@mail.gmail.com>
	<CAOMwXhPvPC_0qC9LTzJmJL8QP-c8Wueemn6UVoTCnyWXsh35Sw@mail.gmail.com>
	<CAOMwXhMefxghO0M+4vc2NNnYSfCMR3JPqhBxFbB_8bo6gumESQ@mail.gmail.com>
	<CAOMwXhOdyA7CigNufUA-hXy9mZ1T8KPD0BOjjP_XHBOidhmUbw@mail.gmail.com>
	<51F01A01.9030300@intel.com>
Date: Wed, 24 Jul 2013 19:20:24 +0100
X-Google-Sender-Auth: I69h62b72Cgf57yMIOviPvpQLmU
Message-ID: <CAOMwXhNziUTsHLzf=hCxwG9nsL5GUitAzm83xjQ3UGv-Rhicvg@mail.gmail.com>
From: Laszlo Papp <lpapp@kde.org>
To: Saul Wold <saul.wold@intel.com>
X-Gm-Message-State: ALoCoQmvb+WOOiHCSpFGaHwAxXqVCyM/eA0yjilCfOPXNKL9hvd7aXjJNt2w+GAQ0stCjmGBBa6Y
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: FW: FW: [OE-core] Doc: external toolchain
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
X-List-Received-Date: Wed, 24 Jul 2013 18:20:25 -0000
Content-Type: multipart/alternative; boundary=bcaec52bea199e69b604e245f694

--bcaec52bea199e69b604e245f694
Content-Type: text/plain; charset=ISO-8859-1

Yeah, I already filed a bugreport:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=4899


On Wed, Jul 24, 2013 at 7:16 PM, Saul Wold <saul.wold@intel.com> wrote:

> On 07/24/2013 11:11 AM, Laszlo Papp wrote:
>
>> It seems I can reproduce the issue with even beagleboard + poky using
>> poky dylan vanilla.
>>
>> Anyone mind fixing this very nasty bug?
>>
>>  Please file a bug and include your local.conf and any other
> configuration files and setup information you have.  I will look at it and
> assign it to the correct person.
>
> Sau!
>
>
>> On Wed, Jul 24, 2013 at 5:46 PM, Laszlo Papp <lpapp@kde.org
>> <mailto:lpapp@kde.org>> wrote:
>>
>>     Here you can find the two outputs for "bitbake -e busybox". The
>>     broken sourcery, and not so broken csl:
>>
>>     http://ix.io/6QZ
>>     http://ix.io/6R1
>>
>>     Yeah, I know it is a bad practice to paste files to a mailing list,
>>     so forgive that for me now, please.
>>
>>
>>     On Wed, Jul 24, 2013 at 4:20 PM, Laszlo Papp <lpapp@kde.org
>>     <mailto:lpapp@kde.org>> wrote:
>>
>>         If I change external-csl to external-sourcery, busybox keeps
>>         failing with the following error:
>>
>>         ERROR: ExpansionError during parsing
>>         /home/lpapp/Projects/foo/**Yocto/poky-dylan-9.0.0/meta/**
>> recipes-core/busybox/busybox_**1.20.2.bb <http://busybox_1.20.2.bb>
>>         <http://busybox_1.20.2.bb>: Failure expanding variable
>>
>>         do_configure: ExpansionError: Failure expanding variable
>>         do_configure, expression was       do_prepare_config
>>                  merge_config.sh -m .config ${@" ".join(find_cfgs(d))}
>>                  cml1_do_configure
>>           which triggered exception NameError: name 'find_cfgs' is not
>>         defined
>>         ERROR: Command execution failed: Exited with 1
>>
>>         Got a clue?
>>
>>
>>         On Wed, Jul 24, 2013 at 4:12 PM, Bill Traynor
>>         <btraynor@gmail.com <mailto:btraynor@gmail.com>> wrote:
>>
>>             On Wed, Jul 24, 2013 at 11:08 AM, Laszlo Papp <lpapp@kde.org
>>             <mailto:lpapp@kde.org>> wrote:
>>              > I was using that based on the non-official documentation
>>             (i.e. presentation
>>              > at the Linux event).
>>
>>             external-sourcery is the new TCMODE and should work,
>>             however, I just
>>             thought trying the old one may work.
>>
>>              >
>>              >
>>              > On Wed, Jul 24, 2013 at 4:06 PM, Bill Traynor
>>             <btraynor@gmail.com <mailto:btraynor@gmail.com>> wrote:
>>              >>
>>              >> Try with:
>>              >>
>>              >> TCMODE = "external-csl"
>>              >> EXTERNAL_TOOLCHAIN = "/path/to/sourcery/toolchain"
>>              >>
>>              >> On Wed, Jul 24, 2013 at 3:47 AM, Rifenbark, Scott M
>>              >> <scott.m.rifenbark@intel.com
>>             <mailto:scott.m.rifenbark@**intel.com<scott.m.rifenbark@intel.com>>>
>> wrote:
>>              >> > Hi,
>>              >> >
>>              >> >
>>              >> >
>>              >> > Can anyone address the toolchain questions here for
>>             Laszlo?
>>              >> >
>>              >> >
>>              >> >
>>              >> > Thanks,
>>              >> >
>>              >> > Scott
>>              >> >
>>              >> >
>>              >> >
>>              >> > From: djszapi@archlinux.us
>>             <mailto:djszapi@archlinux.us> [mailto:djszapi@archlinux.us
>>
>>             <mailto:djszapi@archlinux.us>] On Behalf Of
>>              >> > Laszlo
>>              >> > Papp
>>              >> > Sent: Tuesday, July 23, 2013 11:52 PM
>>              >> > To: Rifenbark, Scott M
>>              >> > Cc: Wold, Saul
>>              >> > Subject: Re: FW: [OE-core] Doc: external toolchain
>>              >> >
>>              >> >
>>              >> >
>>              >> > OK, thanks.
>>              >> >
>>              >> >
>>              >> >
>>              >> > I am facing this issue, any clue?
>>              >> >
>>              >> >
>>              >> >
>>              >> > ERROR: Failed to obtain CodeSourcery toolchain
>>             version: Execution of
>>              >> > '/usr/bin/i686-pc-linux-gnu-**gcc -v' failed: command
>>             not found
>>              >> >
>>              >> > ERROR: Failed to obtain CodeSourcery toolchain
>>             version: Execution of
>>              >> > '/usr/bin/i686-pc-linux-gnu-**gcc -v' failed: command
>>             not found
>>              >> >
>>              >> >
>>              >> >
>>              >> > This is what I have in my build/conf/local.conf:
>>              >> >
>>              >> >
>>              >> >
>>              >> > ...
>>              >> >
>>              >> > TCMODE = "external-sourcery"
>>              >> >
>>              >> > EXTERNAL_TOOLCHAIN = "/usr"
>>              >> >
>>              >> > TARGET_PREFIX = "arm-none-linux-gnueabi-"
>>              >> >
>>              >> > ...
>>              >> >
>>              >> >
>>              >> >
>>              >> > The external toolchain does exist:
>>              >> >
>>              >> >
>>              >> >
>>              >> > /usr/bin/arm-none-linux-**gnueabi-gcc -v
>>              >> >
>>              >> > Using built-in specs.
>>              >> >
>>              >> > COLLECT_GCC=/usr/bin/arm-none-**linux-gnueabi-gcc
>>              >> >
>>              >> >
>>              >> >
>>             COLLECT_LTO_WRAPPER=/usr/bin/.**./libexec/gcc/arm-none-linux-
>> **gnueabi/4.7.3/lto-wrapper
>>              >> >
>>              >> > Target: arm-none-linux-gnueabi
>>              >> >
>>              >> > Configured with:
>>              >> >
>>             /scratch/jbrown/2013.05-arm-**linux-release/src/gcc-4.7-**
>> 2013.05/configure
>>              >> > --build=i686-pc-linux-gnu --host=i686-pc-linux-gnu
>>              >> > --target=arm-none-linux-**gnueabi --enable-threads
>>             --disable-libmudflap
>>              >> > --disable-libssp --disable-libstdcxx-pch
>>              >> > --enable-extra-sgxxlite-**multilibs
>>              >> > --with-arch=armv5te --with-gnu-as --with-gnu-ld
>>              >> > --with-specs='%{save-temps:
>>              >> > -fverbose-asm}
>>              >> >
>>              >> >
>>             %{funwind-tables|fno-unwind-**tables|mabi=*|ffreestanding|**
>> nostdlib:;:-funwind-tables}
>>              >> > -D__CS_SOURCERYGXX_MAJ__=2013 -D__CS_SOURCERYGXX_MIN__=5
>>              >> > -D__CS_SOURCERYGXX_REV__=24
>>             %{O2:%{!fno-remove-local-**statics:
>>              >> > -fremove-local-statics}}
>>              >> > %{O*:%{O|O0|O1|O2|Os:;:%{!fno-**remove-local-statics:
>>              >> > -fremove-local-statics}}}' --enable-languages=c,c++
>>             --enable-shared
>>              >> > --enable-lto --enable-symvers=gnu --enable-__cxa_atexit
>>              >> > --with-pkgversion='Sourcery CodeBench Lite 2013.05-24'
>>              >> >
>>             --with-bugurl=https://**sourcery.mentor.com/**GNUToolchain/<https://sourcery.mentor.com/GNUToolchain/>
>>             --disable-nls
>>              >> > --prefix=/opt/codesourcery
>>              >> >
>>             --with-sysroot=/opt/**codesourcery/arm-none-linux-**
>> gnueabi/libc
>>              >> >
>>              >> >
>>             --with-build-sysroot=/scratch/**jbrown/2013.05-arm-linux-**
>> release/install/arm-none-**linux-gnueabi/libc
>>              >> >
>>              >> >
>>             --with-gmp=/scratch/jbrown/**2013.05-arm-linux-release/obj/**
>> pkg-2013.05-24-arm-none-linux-**gnueabi/arm-2013.05-24-arm-**
>> none-linux-gnueabi.extras/**host-libs-i686-pc-linux-gnu/**usr
>>              >> >
>>              >> >
>>             --with-mpfr=/scratch/jbrown/**2013.05-arm-linux-release/obj/*
>> *pkg-2013.05-24-arm-none-linux-**gnueabi/arm-2013.05-24-arm-**
>> none-linux-gnueabi.extras/**host-libs-i686-pc-linux-gnu/**usr
>>              >> >
>>              >> >
>>             --with-mpc=/scratch/jbrown/**2013.05-arm-linux-release/obj/**
>> pkg-2013.05-24-arm-none-linux-**gnueabi/arm-2013.05-24-arm-**
>> none-linux-gnueabi.extras/**host-libs-i686-pc-linux-gnu/**usr
>>              >> >
>>              >> >
>>             --with-ppl=/scratch/jbrown/**2013.05-arm-linux-release/obj/**
>> pkg-2013.05-24-arm-none-linux-**gnueabi/arm-2013.05-24-arm-**
>> none-linux-gnueabi.extras/**host-libs-i686-pc-linux-gnu/**usr
>>              >> > --with-host-libstdcxx='-**static-libgcc
>>             -Wl,-Bstatic,-lstdc++,-**Bdynamic
>>              >> > -lm'
>>              >> >
>>              >> >
>>             --with-cloog=/scratch/jbrown/**2013.05-arm-linux-release/obj/
>> **pkg-2013.05-24-arm-none-linux-**gnueabi/arm-2013.05-24-arm-**
>> none-linux-gnueabi.extras/**host-libs-i686-pc-linux-gnu/**usr
>>              >> >
>>              >> >
>>             --with-libelf=/scratch/jbrown/**
>> 2013.05-arm-linux-release/obj/**pkg-2013.05-24-arm-none-linux-**
>> gnueabi/arm-2013.05-24-arm-**none-linux-gnueabi.extras/**
>> host-libs-i686-pc-linux-gnu/**usr
>>              >> > --disable-libgomp --disable-libitm
>>             --enable-poison-system-**directories
>>              >> >
>>              >> >
>>             --with-build-time-tools=/**scratch/jbrown/2013.05-arm-**
>> linux-release/install/arm-**none-linux-gnueabi/bin
>>              >> >
>>              >> >
>>             --with-build-time-tools=/**scratch/jbrown/2013.05-arm-**
>> linux-release/install/arm-**none-linux-gnueabi/bin
>>              >> >
>>              >> > Thread model: posix
>>              >> >
>>              >> > gcc version 4.7.3 (Sourcery CodeBench Lite 2013.05-24)
>>              >> >
>>              >> >
>>              >> >
>>              >> > On Wed, Jul 24, 2013 at 7:19 AM, Rifenbark, Scott M
>>              >> > <scott.m.rifenbark@intel.com
>>             <mailto:scott.m.rifenbark@**intel.com<scott.m.rifenbark@intel.com>>>
>> wrote:
>>              >> >
>>              >> > Laszlo,
>>              >> >
>>              >> > Saul forwarded me this email regarding external
>>             toolchains.  The "In
>>              >> > Progress" version of the YP Reference Manual has a new
>>             section on
>>              >> > toolchains
>>              >> > in general.  This section, combined with the TCMODE
>>             glossary entry and a
>>              >> > FAQ
>>              >> > entry, both in the reference manual, comprise our
>>             information on the
>>              >> > external toolchain topic.  Let me know what
>>             specifically would need
>>              >> > additionally addressed and I can get that on my plate
>>             to improve the doc
>>              >> > set.
>>              >> >
>>              >> > Thanks,
>>              >> > Scott
>>              >> >
>>              >> >
>>              >> >
>>             http://www.yoctoproject.org/**docs/latest/ref-manual/ref-**
>> manual.html#cross-development-**toolchain-generation<http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#cross-development-toolchain-generation>
>>              >> >
>>              >> >
>>             http://www.yoctoproject.org/**docs/latest/ref-manual/ref-**
>> manual.html#var-TCMODE<http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-TCMODE>
>>              >> >
>>              >> >
>>             http://www.yoctoproject.org/**docs/latest/ref-manual/ref-**
>> manual.html#idm622640<http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#idm622640>
>>              >> >
>>              >> >
>>              >> >
>>              >> >
>>              >> >>-----Original Message-----
>>              >> >>From: Saul Wold [mailto:sgw@linux.intel.com
>>             <mailto:sgw@linux.intel.com>]
>>              >> >>Sent: Tuesday, July 23, 2013 3:52 PM
>>              >> >>To: Rifenbark, Scott M
>>              >> >>Subject: Fwd: [OE-core] Doc: external toolchain
>>              >> >>
>>              >> >>
>>              >> >>
>>              >> >>
>>              >> >>-------- Original Message --------
>>              >> >>Subject:       [OE-core] Doc: external toolchain
>>              >> >>Date:  Tue, 23 Jul 2013 23:45:28 +0100
>>              >> >>From:  Laszlo Papp <lpapp@kde.org <mailto:lpapp@kde.org
>> >>
>>              >> >>To: openembedded-core@lists.**openembedded.org<openembedded-core@lists.openembedded.org>
>>             <mailto:openembedded-core@**lists.openembedded.org<openembedded-core@lists.openembedded.org>
>> >
>>              >> >>
>>              >> >>
>>              >> >>
>>              >> >>Dear gents and ladies,
>>              >> >>
>>              >> >>it would be nice to get some documentation about this
>>             subject. There is
>>              >> >>only one presentation with only a few short slides
>>             about the topic:
>>              >>
>>              >>http://events.**linuxfoundation.org/images/**
>> stories/slides/elc2013_denys.**pd<http://events.linuxfoundation.org/images/stories/slides/elc2013_denys.pd>
>>              >> >>f
>>              >> >>
>>              >> >>I am now having some issues currently, and hard time
>>             to figure out what
>>              >> >>is going on. Note, this thread is not about getting
>>             help with that
>>              >> >>particular issue, but encouraging you to document
>>             this, for me,
>>              >> >>fundamental feature more thoroughly.
>>              >> >>
>>              >> >>Thank you for your understanding.
>>              >> >>
>>              >> >>Many thanks,
>>              >> >>Laszlo
>>              >> >>
>>              >> >>
>>              >> >>
>>              >> >
>>              >> >
>>              >> >
>>              >> >
>>              >> > ______________________________**_________________
>>              >> > yocto mailing list
>>              >> > yocto@yoctoproject.org <mailto:yocto@yoctoproject.org**
>> >
>>              >> > https://lists.yoctoproject.**org/listinfo/yocto<https://lists.yoctoproject.org/listinfo/yocto>
>>              >> >
>>              >
>>              >
>>
>>
>>
>>
>>
>

--bcaec52bea199e69b604e245f694
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-family:arial,sans-serif;font-size:13px=
">Yeah, I already filed a bugreport:=A0</span><a href=3D"https://bugzilla.y=
octoproject.org/show_bug.cgi?id=3D4899" target=3D"_blank" style=3D"font-fam=
ily:arial,sans-serif;font-size:13px">https://bugzilla.yoctoproject.org/show=
_bug.cgi?id=3D4899</a><br>
</div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed,=
 Jul 24, 2013 at 7:16 PM, Saul Wold <span dir=3D"ltr">&lt;<a href=3D"mailto=
:saul.wold@intel.com" target=3D"_blank">saul.wold@intel.com</a>&gt;</span> =
wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 07/24/2013 11:11 AM, La=
szlo Papp wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
It seems I can reproduce the issue with even beagleboard + poky using<br>
poky dylan vanilla.<br>
<br>
Anyone mind fixing this very nasty bug?<br>
<br>
</blockquote></div>
Please file a bug and include your local.conf and any other configuration f=
iles and setup information you have. =A0I will look at it and assign it to =
the correct person.<br>
<br>
Sau!<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">
<br>
On Wed, Jul 24, 2013 at 5:46 PM, Laszlo Papp &lt;<a href=3D"mailto:lpapp@kd=
e.org" target=3D"_blank">lpapp@kde.org</a><br></div><div class=3D"im">
&lt;mailto:<a href=3D"mailto:lpapp@kde.org" target=3D"_blank">lpapp@kde.org=
</a>&gt;&gt; wrote:<br>
<br>
=A0 =A0 Here you can find the two outputs for &quot;bitbake -e busybox&quot=
;. The<br>
=A0 =A0 broken sourcery, and not so broken csl:<br>
<br>
=A0 =A0 <a href=3D"http://ix.io/6QZ" target=3D"_blank">http://ix.io/6QZ</a>=
<br>
=A0 =A0 <a href=3D"http://ix.io/6R1" target=3D"_blank">http://ix.io/6R1</a>=
<br>
<br>
=A0 =A0 Yeah, I know it is a bad practice to paste files to a mailing list,=
<br>
=A0 =A0 so forgive that for me now, please.<br>
<br>
<br>
=A0 =A0 On Wed, Jul 24, 2013 at 4:20 PM, Laszlo Papp &lt;<a href=3D"mailto:=
lpapp@kde.org" target=3D"_blank">lpapp@kde.org</a><br></div><div class=3D"i=
m">
=A0 =A0 &lt;mailto:<a href=3D"mailto:lpapp@kde.org" target=3D"_blank">lpapp=
@kde.org</a>&gt;&gt; wrote:<br>
<br>
=A0 =A0 =A0 =A0 If I change external-csl to external-sourcery, busybox keep=
s<br>
=A0 =A0 =A0 =A0 failing with the following error:<br>
<br>
=A0 =A0 =A0 =A0 ERROR: ExpansionError during parsing<br>
=A0 =A0 =A0 =A0 /home/lpapp/Projects/foo/<u></u>Yocto/poky-dylan-9.0.0/meta=
/<u></u>recipes-core/busybox/<a href=3D"http://busybox_1.20.2.bb" target=3D=
"_blank">busybox_<u></u>1.20.2.bb</a><br></div>
=A0 =A0 =A0 =A0 &lt;<a href=3D"http://busybox_1.20.2.bb" target=3D"_blank">=
http://busybox_1.20.2.bb</a>&gt;: Failure expanding variable<div class=3D"i=
m"><br>
=A0 =A0 =A0 =A0 do_configure: ExpansionError: Failure expanding variable<br=
>
=A0 =A0 =A0 =A0 do_configure, expression was =A0 =A0 =A0 do_prepare_config<=
br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0merge_config.sh -m .config ${@&quot; &qu=
ot;.join(find_cfgs(d))}<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0cml1_do_configure<br>
=A0 =A0 =A0 =A0 =A0 which triggered exception NameError: name &#39;find_cfg=
s&#39; is not<br>
=A0 =A0 =A0 =A0 defined<br>
=A0 =A0 =A0 =A0 ERROR: Command execution failed: Exited with 1<br>
<br>
=A0 =A0 =A0 =A0 Got a clue?<br>
<br>
<br>
=A0 =A0 =A0 =A0 On Wed, Jul 24, 2013 at 4:12 PM, Bill Traynor<br></div><div=
 class=3D"im">
=A0 =A0 =A0 =A0 &lt;<a href=3D"mailto:btraynor@gmail.com" target=3D"_blank"=
>btraynor@gmail.com</a> &lt;mailto:<a href=3D"mailto:btraynor@gmail.com" ta=
rget=3D"_blank">btraynor@gmail.com</a>&gt;&gt; wrote:<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 On Wed, Jul 24, 2013 at 11:08 AM, Laszlo Papp &lt;<=
a href=3D"mailto:lpapp@kde.org" target=3D"_blank">lpapp@kde.org</a><br></di=
v><div class=3D"im">
=A0 =A0 =A0 =A0 =A0 =A0 &lt;mailto:<a href=3D"mailto:lpapp@kde.org" target=
=3D"_blank">lpapp@kde.org</a>&gt;&gt; wrote:<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt; I was using that based on the non-official =
documentation<br>
=A0 =A0 =A0 =A0 =A0 =A0 (i.e. presentation<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt; at the Linux event).<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 external-sourcery is the new TCMODE and should work=
,<br>
=A0 =A0 =A0 =A0 =A0 =A0 however, I just<br>
=A0 =A0 =A0 =A0 =A0 =A0 thought trying the old one may work.<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt; On Wed, Jul 24, 2013 at 4:06 PM, Bill Trayn=
or<br></div><div class=3D"im">
=A0 =A0 =A0 =A0 =A0 =A0 &lt;<a href=3D"mailto:btraynor@gmail.com" target=3D=
"_blank">btraynor@gmail.com</a> &lt;mailto:<a href=3D"mailto:btraynor@gmail=
.com" target=3D"_blank">btraynor@gmail.com</a>&gt;&gt; wrote:<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; Try with:<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; TCMODE =3D &quot;external-csl&quot;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; EXTERNAL_TOOLCHAIN =3D &quot;/path/to/s=
ourcery/toolchain&quot;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; On Wed, Jul 24, 2013 at 3:47 AM, Rifenb=
ark, Scott M<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &lt;<a href=3D"mailto:scott.m.rifenbark=
@intel.com" target=3D"_blank">scott.m.rifenbark@intel.com</a><br></div><div=
 class=3D"im">
=A0 =A0 =A0 =A0 =A0 =A0 &lt;mailto:<a href=3D"mailto:scott.m.rifenbark@inte=
l.com" target=3D"_blank">scott.m.rifenbark@<u></u>intel.com</a>&gt;&gt; wro=
te:<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; Hi,<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; Can anyone address the toolchain q=
uestions here for<br>
=A0 =A0 =A0 =A0 =A0 =A0 Laszlo?<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; Thanks,<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; Scott<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; From: <a href=3D"mailto:djszapi@ar=
chlinux.us" target=3D"_blank">djszapi@archlinux.us</a><br></div>
=A0 =A0 =A0 =A0 =A0 =A0 &lt;mailto:<a href=3D"mailto:djszapi@archlinux.us" =
target=3D"_blank">djszapi@archlinux.us</a>&gt; [mailto:<a href=3D"mailto:dj=
szapi@archlinux.us" target=3D"_blank">djszapi@archlinux.us</a><div><div cla=
ss=3D"h5"><br>
=A0 =A0 =A0 =A0 =A0 =A0 &lt;mailto:<a href=3D"mailto:djszapi@archlinux.us" =
target=3D"_blank">djszapi@archlinux.us</a>&gt;] On Behalf Of<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; Laszlo<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; Papp<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; Sent: Tuesday, July 23, 2013 11:52=
 PM<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; To: Rifenbark, Scott M<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; Cc: Wold, Saul<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; Subject: Re: FW: [OE-core] Doc: ex=
ternal toolchain<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; OK, thanks.<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; I am facing this issue, any clue?<=
br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; ERROR: Failed to obtain CodeSource=
ry toolchain<br>
=A0 =A0 =A0 =A0 =A0 =A0 version: Execution of<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; &#39;/usr/bin/i686-pc-linux-gnu-<u=
></u>gcc -v&#39; failed: command<br>
=A0 =A0 =A0 =A0 =A0 =A0 not found<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; ERROR: Failed to obtain CodeSource=
ry toolchain<br>
=A0 =A0 =A0 =A0 =A0 =A0 version: Execution of<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; &#39;/usr/bin/i686-pc-linux-gnu-<u=
></u>gcc -v&#39; failed: command<br>
=A0 =A0 =A0 =A0 =A0 =A0 not found<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; This is what I have in my build/co=
nf/local.conf:<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; ...<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; TCMODE =3D &quot;external-sourcery=
&quot;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; EXTERNAL_TOOLCHAIN =3D &quot;/usr&=
quot;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; TARGET_PREFIX =3D &quot;arm-none-l=
inux-gnueabi-&quot;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; ...<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; The external toolchain does exist:=
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; /usr/bin/arm-none-linux-<u></u>gnu=
eabi-gcc -v<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; Using built-in specs.<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; COLLECT_GCC=3D/usr/bin/arm-none-<u=
></u>linux-gnueabi-gcc<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 COLLECT_LTO_WRAPPER=3D/usr/bin/.<u></u>./libexec/gc=
c/arm-none-linux-<u></u>gnueabi/4.7.3/lto-wrapper<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; Target: arm-none-linux-gnueabi<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; Configured with:<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 /scratch/jbrown/2013.05-arm-<u></u>linux-release/sr=
c/gcc-4.7-<u></u>2013.05/configure<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; --build=3Di686-pc-linux-gnu --host=
=3Di686-pc-linux-gnu<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; --target=3Darm-none-linux-<u></u>g=
nueabi --enable-threads<br>
=A0 =A0 =A0 =A0 =A0 =A0 --disable-libmudflap<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; --disable-libssp --disable-libstdc=
xx-pch<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; --enable-extra-sgxxlite-<u></u>mul=
tilibs<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; --with-arch=3Darmv5te --with-gnu-a=
s --with-gnu-ld<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; --with-specs=3D&#39;%{save-temps:<=
br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; -fverbose-asm}<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 %{funwind-tables|fno-unwind-<u></u>tables|mabi=3D*|=
ffreestanding|<u></u>nostdlib:;:-funwind-tables}<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; -D__CS_SOURCERYGXX_MAJ__=3D2013 -D=
__CS_SOURCERYGXX_MIN__=3D5<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; -D__CS_SOURCERYGXX_REV__=3D24<br>
=A0 =A0 =A0 =A0 =A0 =A0 %{O2:%{!fno-remove-local-<u></u>statics:<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; -fremove-local-statics}}<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; %{O*:%{O|O0|O1|O2|Os:;:%{!fno-<u><=
/u>remove-local-statics:<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; -fremove-local-statics}}}&#39; --e=
nable-languages=3Dc,c++<br>
=A0 =A0 =A0 =A0 =A0 =A0 --enable-shared<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; --enable-lto --enable-symvers=3Dgn=
u --enable-__cxa_atexit<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; --with-pkgversion=3D&#39;Sourcery =
CodeBench Lite 2013.05-24&#39;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 --with-bugurl=3D<a href=3D"https://sourcery.mentor.=
com/GNUToolchain/" target=3D"_blank">https://<u></u>sourcery.mentor.com/<u>=
</u>GNUToolchain/</a><br>
=A0 =A0 =A0 =A0 =A0 =A0 --disable-nls<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; --prefix=3D/opt/codesourcery<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 --with-sysroot=3D/opt/<u></u>codesourcery/arm-none-=
linux-<u></u>gnueabi/libc<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 --with-build-sysroot=3D/scratch/<u></u>jbrown/2013.=
05-arm-linux-<u></u>release/install/arm-none-<u></u>linux-gnueabi/libc<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 --with-gmp=3D/scratch/jbrown/<u></u>2013.05-arm-lin=
ux-release/obj/<u></u>pkg-2013.05-24-arm-none-linux-<u></u>gnueabi/arm-2013=
.05-24-arm-<u></u>none-linux-gnueabi.extras/<u></u>host-libs-i686-pc-linux-=
gnu/<u></u>usr<br>

=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 --with-mpfr=3D/scratch/jbrown/<u></u>2013.05-arm-li=
nux-release/obj/<u></u>pkg-2013.05-24-arm-none-linux-<u></u>gnueabi/arm-201=
3.05-24-arm-<u></u>none-linux-gnueabi.extras/<u></u>host-libs-i686-pc-linux=
-gnu/<u></u>usr<br>

=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 --with-mpc=3D/scratch/jbrown/<u></u>2013.05-arm-lin=
ux-release/obj/<u></u>pkg-2013.05-24-arm-none-linux-<u></u>gnueabi/arm-2013=
.05-24-arm-<u></u>none-linux-gnueabi.extras/<u></u>host-libs-i686-pc-linux-=
gnu/<u></u>usr<br>

=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 --with-ppl=3D/scratch/jbrown/<u></u>2013.05-arm-lin=
ux-release/obj/<u></u>pkg-2013.05-24-arm-none-linux-<u></u>gnueabi/arm-2013=
.05-24-arm-<u></u>none-linux-gnueabi.extras/<u></u>host-libs-i686-pc-linux-=
gnu/<u></u>usr<br>

=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; --with-host-libstdcxx=3D&#39;-<u><=
/u>static-libgcc<br>
=A0 =A0 =A0 =A0 =A0 =A0 -Wl,-Bstatic,-lstdc++,-<u></u>Bdynamic<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; -lm&#39;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 --with-cloog=3D/scratch/jbrown/<u></u>2013.05-arm-l=
inux-release/obj/<u></u>pkg-2013.05-24-arm-none-linux-<u></u>gnueabi/arm-20=
13.05-24-arm-<u></u>none-linux-gnueabi.extras/<u></u>host-libs-i686-pc-linu=
x-gnu/<u></u>usr<br>

=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 --with-libelf=3D/scratch/jbrown/<u></u>2013.05-arm-=
linux-release/obj/<u></u>pkg-2013.05-24-arm-none-linux-<u></u>gnueabi/arm-2=
013.05-24-arm-<u></u>none-linux-gnueabi.extras/<u></u>host-libs-i686-pc-lin=
ux-gnu/<u></u>usr<br>

=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; --disable-libgomp --disable-libitm=
<br>
=A0 =A0 =A0 =A0 =A0 =A0 --enable-poison-system-<u></u>directories<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 --with-build-time-tools=3D/<u></u>scratch/jbrown/20=
13.05-arm-<u></u>linux-release/install/arm-<u></u>none-linux-gnueabi/bin<br=
>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 --with-build-time-tools=3D/<u></u>scratch/jbrown/20=
13.05-arm-<u></u>linux-release/install/arm-<u></u>none-linux-gnueabi/bin<br=
>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; Thread model: posix<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; gcc version 4.7.3 (Sourcery CodeBe=
nch Lite 2013.05-24)<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; On Wed, Jul 24, 2013 at 7:19 AM, R=
ifenbark, Scott M<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; &lt;<a href=3D"mailto:scott.m.rife=
nbark@intel.com" target=3D"_blank">scott.m.rifenbark@intel.com</a><br></div=
></div><div><div class=3D"h5">
=A0 =A0 =A0 =A0 =A0 =A0 &lt;mailto:<a href=3D"mailto:scott.m.rifenbark@inte=
l.com" target=3D"_blank">scott.m.rifenbark@<u></u>intel.com</a>&gt;&gt; wro=
te:<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; Laszlo,<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; Saul forwarded me this email regar=
ding external<br>
=A0 =A0 =A0 =A0 =A0 =A0 toolchains. =A0The &quot;In<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; Progress&quot; version of the YP R=
eference Manual has a new<br>
=A0 =A0 =A0 =A0 =A0 =A0 section on<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; toolchains<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; in general. =A0This section, combi=
ned with the TCMODE<br>
=A0 =A0 =A0 =A0 =A0 =A0 glossary entry and a<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; FAQ<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; entry, both in the reference manua=
l, comprise our<br>
=A0 =A0 =A0 =A0 =A0 =A0 information on the<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; external toolchain topic. =A0Let m=
e know what<br>
=A0 =A0 =A0 =A0 =A0 =A0 specifically would need<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; additionally addressed and I can g=
et that on my plate<br>
=A0 =A0 =A0 =A0 =A0 =A0 to improve the doc<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; set.<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; Thanks,<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; Scott<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 <a href=3D"http://www.yoctoproject.org/docs/latest/=
ref-manual/ref-manual.html#cross-development-toolchain-generation" target=
=3D"_blank">http://www.yoctoproject.org/<u></u>docs/latest/ref-manual/ref-<=
u></u>manual.html#cross-development-<u></u>toolchain-generation</a><br>

=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 <a href=3D"http://www.yoctoproject.org/docs/latest/=
ref-manual/ref-manual.html#var-TCMODE" target=3D"_blank">http://www.yoctopr=
oject.org/<u></u>docs/latest/ref-manual/ref-<u></u>manual.html#var-TCMODE</=
a><br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 <a href=3D"http://www.yoctoproject.org/docs/latest/=
ref-manual/ref-manual.html#idm622640" target=3D"_blank">http://www.yoctopro=
ject.org/<u></u>docs/latest/ref-manual/ref-<u></u>manual.html#idm622640</a>=
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;-----Original Message-----<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;From: Saul Wold [mailto:<a href=
=3D"mailto:sgw@linux.intel.com" target=3D"_blank">sgw@linux.intel.com</a><b=
r>
=A0 =A0 =A0 =A0 =A0 =A0 &lt;mailto:<a href=3D"mailto:sgw@linux.intel.com" t=
arget=3D"_blank">sgw@linux.intel.com</a>&gt;]<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;Sent: Tuesday, July 23, 2013 3:=
52 PM<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;To: Rifenbark, Scott M<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;Subject: Fwd: [OE-core] Doc: ex=
ternal toolchain<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;-------- Original Message -----=
---<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;Subject: =A0 =A0 =A0 [OE-core] =
Doc: external toolchain<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;Date: =A0Tue, 23 Jul 2013 23:45=
:28 +0100<br></div></div><div><div class=3D"h5">
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;From: =A0Laszlo Papp &lt;<a hre=
f=3D"mailto:lpapp@kde.org" target=3D"_blank">lpapp@kde.org</a> &lt;mailto:<=
a href=3D"mailto:lpapp@kde.org" target=3D"_blank">lpapp@kde.org</a>&gt;&gt;=
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;To: <a href=3D"mailto:openembed=
ded-core@lists.openembedded.org" target=3D"_blank">openembedded-core@lists.=
<u></u>openembedded.org</a><br>
=A0 =A0 =A0 =A0 =A0 =A0 &lt;mailto:<a href=3D"mailto:openembedded-core@list=
s.openembedded.org" target=3D"_blank">openembedded-core@<u></u>lists.openem=
bedded.org</a>&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;Dear gents and ladies,<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;it would be nice to get some do=
cumentation about this<br>
=A0 =A0 =A0 =A0 =A0 =A0 subject. There is<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;only one presentation with only=
 a few short slides<br>
=A0 =A0 =A0 =A0 =A0 =A0 about the topic:<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt;<a href=3D"http://events.linuxfoundation=
.org/images/stories/slides/elc2013_denys.pd" target=3D"_blank">http://event=
s.<u></u>linuxfoundation.org/images/<u></u>stories/slides/elc2013_denys.<u>=
</u>pd</a><br>

=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;f<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;I am now having some issues cur=
rently, and hard time<br>
=A0 =A0 =A0 =A0 =A0 =A0 to figure out what<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;is going on. Note, this thread =
is not about getting<br>
=A0 =A0 =A0 =A0 =A0 =A0 help with that<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;particular issue, but encouragi=
ng you to document<br>
=A0 =A0 =A0 =A0 =A0 =A0 this, for me,<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;fundamental feature more thorou=
ghly.<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;Thank you for your understandin=
g.<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;Many thanks,<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;Laszlo<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; ______________________________<u><=
/u>_________________<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; yocto mailing list<br></div></div>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; <a href=3D"mailto:yocto@yoctoproje=
ct.org" target=3D"_blank">yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"=
mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a>=
<u></u>&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt; <a href=3D"https://lists.yoctoproj=
ect.org/listinfo/yocto" target=3D"_blank">https://lists.yoctoproject.<u></u=
>org/listinfo/yocto</a><br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;&gt; &gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0&gt;<br>
<br>
<br>
<br>
<br>
</blockquote>
<br>
</blockquote></div><br></div>

--bcaec52bea199e69b604e245f694--
