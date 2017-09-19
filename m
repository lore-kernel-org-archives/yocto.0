Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C5F85E00C2B; Tue, 19 Sep 2017 07:13:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9DA7E00BB1
	for <yocto@yoctoproject.org>; Tue, 19 Sep 2017 07:13:20 -0700 (PDT)
Received: by mail-wr0-f193.google.com with SMTP id n64so2319884wrb.2
	for <yocto@yoctoproject.org>; Tue, 19 Sep 2017 07:13:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=JNVLZVD3ur+nZ/zmSHenRHDPpy4dRV+HUp7Sz9DqqgE=;
	b=r28/1sIqR7Y03j+OcOfLUbQqLyeR3mZ7H+2QEwUQsk47GvXkBQUdrrDn395dGYZCMx
	O8rrqDJcakecWmWR1KpI+Xkjfy4t1Swa3/oHW9IwfkiI6okZrC7k+rELS2Zp7dzVEXHc
	znANcOLOnlTOqEYu4lBQ9dNuyQIcmtCp3HBJ+VLBmdxq2MsgMvf5iGe5A8TokEwcb/yc
	FZQtj4lWw1aN9EeruvXhurS+K4TLXkVSWHa8jNslEXMSbdss1khcsZawHTT2AalY246s
	5lTW5lMO/WOF4DRUTBCleWUsJJVto+qVKKA4TXQj2dCitXyWOO2QMvbDqqmNldwDc804
	bv9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=JNVLZVD3ur+nZ/zmSHenRHDPpy4dRV+HUp7Sz9DqqgE=;
	b=L7ZHssvzqqneC5kagxwtXhazslrigILkYcfGpHO+qA5MdCTOVF8I5bgDEXekJ64jCi
	5RnKFLyfyEt/uygQBL/0Q/gV1EdEY3nm26l9kOBQPEx4sFlMhoIyWov/mGOFinCrkfGX
	9BtN47VGN0ZczTDVhYe9X+tzQNLqeX636MRUxm6Gj0in9HulY2hyOWfIzueu7TAKN/KP
	SRk4VIpnujfJDOhyR8ae9tXSw+qpdR0Ng0LiCTwspZg+qlSRYwIWnltS3hVyzyF43Z8t
	D+fQfRFHil6bgkfQZrgmtNrQVF08U9BsPaJZWDgi+6l7AeUTRsh25FzwkWAO2tiPEyBN
	DY0Q==
X-Gm-Message-State: AHPjjUge0X0waxwUlj5qBsd4WGJj2cI0Lg15QKIjAuU+Qpr/fQJlF/ci
	HDKe+1KmZfhKkgtmU+XMS3aWEqhmHgY6Mo9GhWAN+Q==
X-Google-Smtp-Source: AOwi7QCbJ2RHBfH6jz4QRCWEU0J6r7K6Xpcoclts9UwfrYD4wN9Drod9jrJQ4IrZaYYRA8DunozkSPgJuFn71Ro2ySE=
X-Received: by 10.223.161.22 with SMTP id o22mr1456094wro.99.1505830399444;
	Tue, 19 Sep 2017 07:13:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.147.202 with HTTP; Tue, 19 Sep 2017 07:13:18 -0700 (PDT)
In-Reply-To: <CAMKF1sq9=uHJfKGtBkH79fqNFiztVbiepMY__LdMTtOk0wMQYA@mail.gmail.com>
References: <20170918054137.33583-1-raj.khem@gmail.com>
	<CA+chaQc8ZLh=hOmr+iecg1EZUM+vORLV0=ej8eJefB0GubFSpQ@mail.gmail.com>
	<CAMKF1srPjVO5Ep5ZCsxWozpzzbQxO69sderkgWfnEhg8et4RWA@mail.gmail.com>
	<20170919135829.GA3797@jama>
	<CAMKF1sq9=uHJfKGtBkH79fqNFiztVbiepMY__LdMTtOk0wMQYA@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Tue, 19 Sep 2017 16:13:18 +0200
Message-ID: <CA+chaQdvo_sL-5CyAedD4fXX8oaVFHrJrp-g=4S0N4THVEvcRw@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/3] linux-raspberrypi_4.9.bb: Upgrade to 4.9.50
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
X-List-Received-Date: Tue, 19 Sep 2017 14:13:21 -0000
Content-Type: multipart/alternative; boundary="f403045e20760d0cf405598b76de"

--f403045e20760d0cf405598b76de
Content-Type: text/plain; charset="UTF-8"

Yes,

GNU gold (GNU Binutils 2.29.0.20170912) 1.14

On Tue, Sep 19, 2017 at 4:01 PM, Khem Raj <raj.khem@gmail.com> wrote:

> is
> /OE/build/owpb/webos-ports/tmp-glibc/work/raspberrypi3_
> 64-webos-linux/linux-raspberrypi/1_4.9.50+gitAUTOINC+46e2d4d1bd-r0/
> recipe-sysroot-native/usr/bin/aarch64-webos-linux/../../
> libexec/aarch64-webos-linux/gcc/aarch64-webos-linux/7.2.0/ld
>
> gold ?
>
> On Tue, Sep 19, 2017 at 6:58 AM, Martin Jansa <martin.jansa@gmail.com>
> wrote:
> > On Mon, Sep 18, 2017 at 12:29:44PM -0700, Khem Raj wrote:
> >> On Mon, Sep 18, 2017 at 11:48 AM, Martin Jansa <martin.jansa@gmail.com>
> wrote:
> >> > With these 3 changes included I see following failure with
> raspberrypi3-64,
> >> > it might be something caused by last oe-core upgrade, but I haven't
> noticed
> >> > anything suspicious there.
> >> >
> >> > Looks familiar?
> >>
> >> havent seen it here. I would say unbolt these changes and try out see
> >> if it goes away or not.
> >
> > The last one "linux-raspberrypi: Build dtbs with dtbs make target for
> > rpi64" is causing this error.
> >
> >>
> >> >
> >> > |   VDSOL   arch/arm64/kernel/vdso/vdso.so.dbg
> >> > |
> >> > /OE/build/owpb/webos-ports/tmp-glibc/work/raspberrypi3_
> 64-webos-linux/linux-raspberrypi/1_4.9.50+gitAUTOINC+46e2d4d1bd-r0/
> recipe-sysroot-native/usr/bin/aarch64-webos-linux/../../
> libexec/aarch64-webos-linux/gcc/aarch64-webos-linux/7.2.0/ld:
> >> > fatal error: -shared and -static are incompatible
> >> > | collect2: error: ld returned 1 exit status
> >> > | make[3]: ***
> >> > [/OE/build/owpb/webos-ports/tmp-glibc/work-shared/
> raspberrypi3-64/kernel-source/arch/arm64/kernel/vdso/Makefile:34:
> >> > arch/arm64/kernel/vdso/vdso.so.dbg] Error 1
> >> > | make[2]: *** [arch/arm64/Makefile:144: vdso_prepare] Error 2
> >> > | make[1]: *** [Makefile:150: sub-make] Error 2
> >> > | make: *** [Makefile:24: __sub-make] Error 2
> >> > | ERROR: oe_runmake failed
> >> > | WARNING:
> >> > /OE/build/owpb/webos-ports/tmp-glibc/work/raspberrypi3_
> 64-webos-linux/linux-raspberrypi/1_4.9.50+gitAUTOINC+46e2d4d1bd-r0/temp/
> run.do_compile.29341:1
> >> > exit 1 from 'exit 1'
> >> >
> >> >
> >> > On Mon, Sep 18, 2017 at 7:41 AM, Khem Raj <raj.khem@gmail.com> wrote:
> >> >>
> >> >> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> >> >> ---
> >> >>  recipes-kernel/linux/linux-raspberrypi_4.9.bb | 4 ++--
> >> >>  1 file changed, 2 insertions(+), 2 deletions(-)
> >> >>
> >> >> diff --git a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> >> >> b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> >> >> index ba17020..068965f 100644
> >> >> --- a/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> >> >> +++ b/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> >> >> @@ -1,8 +1,8 @@
> >> >>  FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-${PV}:"
> >> >>
> >> >> -LINUX_VERSION ?= "4.9.41"
> >> >> +LINUX_VERSION ?= "4.9.50"
> >> >>
> >> >> -SRCREV = "4153f509b449f1c1c816cf124c314975c3daa824"
> >> >> +SRCREV = "46e2d4d1bd2c17e2f84dd90768321ee0bbaa6b8a"
> >> >>  SRC_URI = "git://github.com/raspberrypi/linux.git;branch=rpi-4.9.y"
> >> >>
> >> >>  require linux-raspberrypi.inc
> >> >> --
> >> >> 2.14.1
> >> >>
> >> >> --
> >> >> _______________________________________________
> >> >> yocto mailing list
> >> >> yocto@yoctoproject.org
> >> >> https://lists.yoctoproject.org/listinfo/yocto
> >> >
> >> >
> >
> > --
> > Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com
>

--f403045e20760d0cf405598b76de
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Yes,<div><br></div><div>GNU gold (GNU Binutils 2.29.0.2017=
0912) 1.14</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_qu=
ote">On Tue, Sep 19, 2017 at 4:01 PM, Khem Raj <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">is<br>
/OE/build/owpb/webos-ports/<wbr>tmp-glibc/work/raspberrypi3_<wbr>64-webos-l=
inux/linux-<wbr>raspberrypi/1_4.9.50+<wbr>gitAUTOINC+46e2d4d1bd-r0/<wbr>rec=
ipe-sysroot-native/usr/bin/<wbr>aarch64-webos-linux/../../<wbr>libexec/aarc=
h64-webos-linux/<wbr>gcc/aarch64-webos-linux/7.2.0/<wbr>ld<br>
<br>
gold ?<br>
<div class=3D"HOEnZb"><div class=3D"h5"><br>
On Tue, Sep 19, 2017 at 6:58 AM, Martin Jansa &lt;<a href=3D"mailto:martin.=
jansa@gmail.com">martin.jansa@gmail.com</a>&gt; wrote:<br>
&gt; On Mon, Sep 18, 2017 at 12:29:44PM -0700, Khem Raj wrote:<br>
&gt;&gt; On Mon, Sep 18, 2017 at 11:48 AM, Martin Jansa &lt;<a href=3D"mail=
to:martin.jansa@gmail.com">martin.jansa@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt; With these 3 changes included I see following failure with ra=
spberrypi3-64,<br>
&gt;&gt; &gt; it might be something caused by last oe-core upgrade, but I h=
aven&#39;t noticed<br>
&gt;&gt; &gt; anything suspicious there.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Looks familiar?<br>
&gt;&gt;<br>
&gt;&gt; havent seen it here. I would say unbolt these changes and try out =
see<br>
&gt;&gt; if it goes away or not.<br>
&gt;<br>
&gt; The last one &quot;linux-raspberrypi: Build dtbs with dtbs make target=
 for<br>
&gt; rpi64&quot; is causing this error.<br>
&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; |=C2=A0 =C2=A0VDSOL=C2=A0 =C2=A0arch/arm64/kernel/vdso/vdso.<=
wbr>so.dbg<br>
&gt;&gt; &gt; |<br>
&gt;&gt; &gt; /OE/build/owpb/webos-ports/<wbr>tmp-glibc/work/raspberrypi3_<=
wbr>64-webos-linux/linux-<wbr>raspberrypi/1_4.9.50+<wbr>gitAUTOINC+46e2d4d1=
bd-r0/<wbr>recipe-sysroot-native/usr/bin/<wbr>aarch64-webos-linux/../../<wb=
r>libexec/aarch64-webos-linux/<wbr>gcc/aarch64-webos-linux/7.2.0/<wbr>ld:<b=
r>
&gt;&gt; &gt; fatal error: -shared and -static are incompatible<br>
&gt;&gt; &gt; | collect2: error: ld returned 1 exit status<br>
&gt;&gt; &gt; | make[3]: ***<br>
&gt;&gt; &gt; [/OE/build/owpb/webos-ports/<wbr>tmp-glibc/work-shared/<wbr>r=
aspberrypi3-64/kernel-source/<wbr>arch/arm64/kernel/vdso/<wbr>Makefile:34:<=
br>
&gt;&gt; &gt; arch/arm64/kernel/vdso/vdso.<wbr>so.dbg] Error 1<br>
&gt;&gt; &gt; | make[2]: *** [arch/arm64/Makefile:144: vdso_prepare] Error =
2<br>
&gt;&gt; &gt; | make[1]: *** [Makefile:150: sub-make] Error 2<br>
&gt;&gt; &gt; | make: *** [Makefile:24: __sub-make] Error 2<br>
&gt;&gt; &gt; | ERROR: oe_runmake failed<br>
&gt;&gt; &gt; | WARNING:<br>
&gt;&gt; &gt; /OE/build/owpb/webos-ports/<wbr>tmp-glibc/work/raspberrypi3_<=
wbr>64-webos-linux/linux-<wbr>raspberrypi/1_4.9.50+<wbr>gitAUTOINC+46e2d4d1=
bd-r0/temp/<wbr>run.do_compile.29341:1<br>
&gt;&gt; &gt; exit 1 from &#39;exit 1&#39;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On Mon, Sep 18, 2017 at 7:41 AM, Khem Raj &lt;<a href=3D"mail=
to:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gm=
ail.com">raj.khem@gmail.com</a>&gt;<br>
&gt;&gt; &gt;&gt; ---<br>
&gt;&gt; &gt;&gt;=C2=A0 recipes-kernel/linux/<a href=3D"http://linux-raspbe=
rrypi_4.9.bb" rel=3D"noreferrer" target=3D"_blank">linux-<wbr>raspberrypi_4=
.9.bb</a> | 4 ++--<br>
&gt;&gt; &gt;&gt;=C2=A0 1 file changed, 2 insertions(+), 2 deletions(-)<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; diff --git a/recipes-kernel/linux/<a href=3D"http://linux=
-raspberrypi_4.9.bb" rel=3D"noreferrer" target=3D"_blank">linux-<wbr>raspbe=
rrypi_4.9.bb</a><br>
&gt;&gt; &gt;&gt; b/recipes-kernel/linux/<a href=3D"http://linux-raspberryp=
i_4.9.bb" rel=3D"noreferrer" target=3D"_blank">linux-<wbr>raspberrypi_4.9.b=
b</a><br>
&gt;&gt; &gt;&gt; index ba17020..068965f 100644<br>
&gt;&gt; &gt;&gt; --- a/recipes-kernel/linux/<a href=3D"http://linux-raspbe=
rrypi_4.9.bb" rel=3D"noreferrer" target=3D"_blank">linux-<wbr>raspberrypi_4=
.9.bb</a><br>
&gt;&gt; &gt;&gt; +++ b/recipes-kernel/linux/<a href=3D"http://linux-raspbe=
rrypi_4.9.bb" rel=3D"noreferrer" target=3D"_blank">linux-<wbr>raspberrypi_4=
.9.bb</a><br>
&gt;&gt; &gt;&gt; @@ -1,8 +1,8 @@<br>
&gt;&gt; &gt;&gt;=C2=A0 FILESEXTRAPATHS_prepend :=3D &quot;${THISDIR}/${PN}=
-${PV}:&quot;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; -LINUX_VERSION ?=3D &quot;4.9.41&quot;<br>
&gt;&gt; &gt;&gt; +LINUX_VERSION ?=3D &quot;4.9.50&quot;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; -SRCREV =3D &quot;<wbr>4153f509b449f1c1c816cf124c3149<wbr=
>75c3daa824&quot;<br>
&gt;&gt; &gt;&gt; +SRCREV =3D &quot;<wbr>46e2d4d1bd2c17e2f84dd90768321e<wbr=
>e0bbaa6b8a&quot;<br>
&gt;&gt; &gt;&gt;=C2=A0 SRC_URI =3D &quot;git://<a href=3D"http://github.co=
m/raspberrypi/linux.git;branch=3Drpi-4.9.y" rel=3D"noreferrer" target=3D"_b=
lank">github.com/raspberrypi/<wbr>linux.git;branch=3Drpi-4.9.y</a>&quot;<br=
>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;=C2=A0 require linux-raspberrypi.inc<br>
&gt;&gt; &gt;&gt; --<br>
&gt;&gt; &gt;&gt; 2.14.1<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; --<br>
&gt;&gt; &gt;&gt; ______________________________<wbr>_________________<br>
&gt;&gt; &gt;&gt; yocto mailing list<br>
&gt;&gt; &gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproj=
ect.org</a><br>
&gt;&gt; &gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto"=
 rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.<wbr>org/l=
istinfo/yocto</a><br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;<br>
&gt; --<br>
&gt; Martin &#39;JaMa&#39; Jansa=C2=A0 =C2=A0 =C2=A0jabber: <a href=3D"mail=
to:Martin.Jansa@gmail.com">Martin.Jansa@gmail.com</a><br>
</div></div></blockquote></div><br></div>

--f403045e20760d0cf405598b76de--
