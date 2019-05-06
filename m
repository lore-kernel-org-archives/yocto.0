Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3A1BE00D3F; Mon,  6 May 2019 05:52:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (gabbla.malist[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com
	[209.85.208.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 377B0E00963
	for <yocto@yoctoproject.org>; Mon,  6 May 2019 05:52:38 -0700 (PDT)
Received: by mail-lj1-f172.google.com with SMTP id y8so10737736ljd.3
	for <yocto@yoctoproject.org>; Mon, 06 May 2019 05:52:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=dhKEB1bBFGmqb1BpOZXACITMKeBc08UXkMADr7py6So=;
	b=SvdCMKF8zyQoBC7xDV1tp1H4x2xHzR9cbh6GdCE92wGW7ghyeMRr3vRt3w8lfGKQi1
	5/lhq4LQ1vKm3JizKADceuvikVpL67qvNwojs/8WNFcd2TBxGyujcjrxBdnlExqsQVPR
	OPAXOYF+IP+VqbKbA7c1LVK6Qb1hihNpOd7GyyhjIZSeyVHUp9BrDWVe4CrKgE39hWCT
	wlsZpemY/jJFOJHbbyNmrjdLTBXjUbRLSqrM3bzq67lvzXFIDyj9MisxEKBXeNyJGoWB
	JRzyC0HSsueEVjCvYBvQsgcTt3ndH5UXWeo63Aw/eWEmWj3eJRTyX1DsunNIpcu4jqIa
	3SLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=dhKEB1bBFGmqb1BpOZXACITMKeBc08UXkMADr7py6So=;
	b=W5cZipr+4eLhAVTbsJ96QGIiH50ceJrzzMQN+LElo780F+d4LnZdSKDdyGwg2wcLyZ
	8DKOkEr9yL6FS1RgWOAKWd+UWSPIT7C46R1R0YmBTcBK5Mv65YNlGEXfxkX7IBMak+XM
	AhXyFuxD23e+ZpaP9wYZmqB0Sp7+fd0TU45DyHOJlbc2v9eN1hI2AglvJaPloSKI9s2v
	N3OIzqQ5sjy/zLUXC9x+d4mCUdDJKliRuMrT2YJQ5dSG+Sr9Dbm0WMY8JLFBjzugJ5PH
	6Skr0wWJBYEbxpL/JKOCKRVoyD3KVA5uM+wqItJFSZK4OJR6B5N0JOlKz/rdAVLUqNcL
	BFig==
X-Gm-Message-State: APjAAAWxlGf09osu4Tw1Cxiy6o7UCtW6vOLiA9PIsDLkGnL0wdAoMoa8
	W9LtGgGBqpsTLCXDsdkykf4pqEm3Z9K3Q4ltmFA=
X-Google-Smtp-Source: APXvYqwNfftSX6Z9OqhPfr+7Drb9q+5+o3IDA52AzQtDY4lwb9FfPYSFeLuik7iJCZKZxMTneFax01S1NogN4HOeuLc=
X-Received: by 2002:a2e:9f17:: with SMTP id u23mr11926970ljk.188.1557147157154;
	Mon, 06 May 2019 05:52:37 -0700 (PDT)
MIME-Version: 1.0
References: <CAAx3WaA0NR=cdGJdPHrkSuENKT7m60GW=pcjCjAHpgwEFPMHwg@mail.gmail.com>
	<A2A9E37E9C946847B2258F923F7CFE42047B38BE@GOEMAIL-Server2.goerlitz.int>
	<6rh8ceu2rn.fsf@pengutronix.de>
	<CAAx3WaDQKbNg0tXZd07s8i_5PTDVctuOcScDMDbXFMmotjoJpw@mail.gmail.com>
	<CAAx3WaCL2XBSarSVpDN+KdwwYoUDEd3cLT1MfecFWriUB=OT-Q@mail.gmail.com>
	<6rbm0vbl2s.fsf@pengutronix.de>
	<CAAx3WaA+KFX67Pzapkc67PTges-SbhRpooRyUxcvDxtzgqOWvQ@mail.gmail.com>
	<6rk1f884ex.fsf@pengutronix.de>
	<CAAx3WaCYnDrECr-vqSwrrQqw-gBe-nbFkaWR-rsJLjT_ZDiZJw@mail.gmail.com>
	<6r36lr93u0.fsf@pengutronix.de>
In-Reply-To: <6r36lr93u0.fsf@pengutronix.de>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Mon, 6 May 2019 14:51:58 +0200
Message-ID: <CAAx3WaDz=L_9_CZJ2HpWXdoA-_6gmw+f-2QvwkaYtPVjg-ndcw@mail.gmail.com>
To: =?UTF-8?Q?Ulrich_=C3=96lmann?= <u.oelmann@pengutronix.de>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Multiple ubifs partition
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
X-List-Received-Date: Mon, 06 May 2019 12:52:40 -0000
Content-Type: multipart/alternative; boundary="0000000000002a6be505883793f2"

--0000000000002a6be505883793f2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Perfect, thank you!

Gabriele

Il giorno lun 6 mag 2019 alle ore 14:15 Ulrich =C3=96lmann <
u.oelmann@pengutronix.de> ha scritto:

> Hi Gabriele,
>
> On Mon, May 06 2019 at 13:32 +0200, Gabriele Zampieri <
> gabbla.malist@gmail.com> wrote:
> > thank you very much for your explanation. The provided genimage.config
> > looks similar to mine, so I guess it is ok. I will try when I come back
> to
> > the office. The point I missed was that I need to call: bitbake
> > your-customized-ubi and not bitbake my-custom-image, right?
>
> correct - "my-custom-image" will indirectly become a dependency via the
> variable GENIMAGE_ROOTFS_IMAGE, see [1].
>
> Best regards
> Ulrich
>
>
> [1]
> https://github.com/pengutronix/meta-ptx/blob/master/classes/genimage.bbcl=
ass#L88
>
> > Thank you again,
> > Gabriele
> >
> >
> > Il giorno ven 3 mag 2019 alle ore 07:59 Ulrich =C3=96lmann <
> > u.oelmann@pengutronix.de> ha scritto:
> >
> >> Hi Gabriele,
> >>
> >> On Thu, May 02 2019 at 13:25 +0200, Gabriele Zampieri <
> >> gabbla.malist@gmail.com> wrote:
> >> > ok, I guess I miss-understand how that class works. I thought that I
> >> > had to add the customization on my own image recipe.
> >> > So the correct way is to write a 'customization recipe' and install
> >> > via IMAGE_INSTALL? Can you provide an example?
> >>
> >> use your custom image recipe as before to just produce your root-
> >> filesystem which results in a (compressed) tar-file in ${DEPLOY_DIR_
> >> IMAGE}. It will be referenced from the genimage recipe without any fil=
e
> >> extension via GENIMAGE_ROOTFS_IMAGE. Now your UBI-recipe (e.g. 'your-
> >> customized-ubi.bb') could look like
> >>
> >>     inherit genimage
> >>     LICENSE =3D "MIT"
> >>     LIC_FILES_CHKSUM =3D
> >>
> "file://${COREBASE}/meta/files/common-licenses/MIT;md5=3D0835ade698e0bcf8=
506ecda2f7b4f302"
> >>
> >>     SRC_URI +=3D "file://genimage.config"
> >>
> >>     # to not confuse the flashable UBI-image ('ubi')
> >>     # with the UBI-filesystems ('ubifs') it contains
> >>     GENIMAGE_IMAGE_SUFFIX =3D "ubi"
> >>
> >>     # the name of the root-filesystem genimage should use
> >>     GENIMAGE_ROOTFS_IMAGE =3D "your-customized-rootfs"
> >>
> >> with the accompanying 'genimage.config' for example as follows
> >>
> >>     #
> >>     # Manufacturer ID: 0x2c, Chip ID: 0xda
> >>     # -> Micron MT29F2G08ABAEAWP
> >>     # 256 MiB, SLC
> >>     #
> >>     flash nand {
> >>         pebsize =3D 131072
> >>         lebsize =3D 126976
> >>         numpebs =3D 2044
> >>         minimum-io-unit-size =3D 2048
> >>         sub-page-size =3D 2048
> >>     }
> >>
> >>     image @IMAGE@ {
> >>         flashtype =3D "nand"
> >>         ubi {
> >>         }
> >>
> >>         partition rootfs {
> >>                 image =3D rootfs.ubifs
> >>                 size =3D 64MiB
> >>         }
> >>
> >>         partition opt {
> >>                 image =3D opt.ubifs
> >>                 size =3D 32MiB
> >>         }
> >>
> >>         partition data {
> >>                 image =3D data.ubifs
> >>                 autoresize =3D true
> >>         }
> >>     }
> >>
> >>     image rootfs.ubifs {
> >>         flashtype =3D "nand"
> >>         ubifs {
> >>                 extraargs =3D "-x lzo"
> >>                 max-size =3D 64MiB
> >>         }
> >>         mountpoint =3D "/"
> >>     }
> >>
> >>     image opt.ubifs {
> >>         flashtype =3D "nand"
> >>         ubifs {
> >>                 extraargs =3D "-x lzo"
> >>                 max-size =3D 32MiB
> >>         }
> >>         mountpoint =3D "/opt"
> >>     }
> >>
> >>     image data.ubifs {
> >>         flashtype =3D "nand"
> >>         ubifs {
> >>                 extraargs =3D "-x lzo"
> >>                 max-size =3D 192MiB
> >>         }
> >>         mountpoint =3D "/data"
> >>     }
> >>
> >> In a UBI-image almost all UBI-volumes need to have a fixed size and on=
ly
> >> one is allowed to use the autoresize mechanism which blows it up to us=
e
> >> the remaining space when it is UBI-attached for the first time. Distin=
ct
> >> from that is the UBI-filesystem's max-size parameter which prescribes
> >> the maximum size of an UBI-volume that shall be addressable by this
> >> filesystem. This means that if you would re-use 'data.ubifs' in a volu=
me
> >> that has been autoresized to e.g. 1024MiB the filesystem would not be
> >> able to make use of it.
> >>
> >> I neither tested the recipe nor the genimage.config, so please give so=
me
> >> feedback.
> >>
> >> Best regards
> >> Ulrich
> >>
> >>
> >> > Thanks,
> >> > Gabriele
> >> >
> >> > Il giorno mer 24 apr 2019 alle ore 15:15 Ulrich =C3=96lmann <
> >> > u.oelmann@pengutronix.de> ha scritto:
> >> >
> >> >> Hi Gabriele,
> >> >>
> >> >> On Wed, Apr 24 2019 at 14:06 +0200, Gabriele Zampieri <
> >> >> gabbla.malist@gmail.com> wrote:
> >> >> > I'm now testing genimage via meta-ptx in my Yocto workflow, but I
> >> found a
> >> >> > problem: I cannot set a SRC_URI in my custom image recipe (that
> >> inherit
> >> >> > from core-image which in turn inherit from image) because do_fetc=
h
> and
> >> >> > do_unpack tasks have noexec set to 1. If I specify the SRC_URI
> with my
> >> >> > genimage.config, bitbake exits, complaining about LIC_FILE_CHECKS=
UM
> >> (that
> >> >> > is correctly specified). If I hack image.bbclass and comment out
> >> >> >
> >> >> > #do_fetch[noexec] =3D "1"
> >> >> >
> >> >> >
> >> >> > #do_unpack[noexec] =3D "1"
> >> >> >
> >> >> > The process start correctly. Is there a way to avoid touching
> >> >> image.bbclass
> >> >> > and install my configuration from the image recipe?
> >> >> >
> >> >> > Thanks,
> >> >> > Gabriele
> >> >>
> >> >> you need one or more recipe(s) that construct(s) your filesystem(s)
> and
> >> >> a separate one that makes a flashable image out of that (see the
> >> >> introductory documentation in 'genimage.bbclass'). In the former yo=
u
> >> >> inherit 'core-image' and only in the latter which inherits 'genimag=
e'
> >> >> you have to set the SRC_URI to point to your 'genimage.config'.
> >> >>
> >> >> Best regards
> >> >> Ulrich
> >> >>
> >> >>
> >> >> > Il giorno mer 13 mar 2019 alle ore 16:14 Gabriele Zampieri <
> >> >> > gabbla.malist@gmail.com> ha scritto:
> >> >> >
> >> >> >> Hi all,
> >> >> >>
> >> >> >> thank you very much for the suggestion, I will check genimage an=
d
> >> test
> >> >> it.
> >> >> >>
> >> >> >> Gabriele
> >> >> >>
> >> >> >> Il giorno gio 7 mar 2019 alle ore 16:23 Ulrich =C3=96lmann <
> >> >> >> u.oelmann@pengutronix.de> ha scritto:
> >> >> >>
> >> >> >>> Hi there,
> >> >> >>>
> >> >> >>> On Thu, Mar 07 2019 at 15:11 +0100, Stelling2 Carsten <
> >> >> >>> Carsten.Stelling2@goerlitz.com> wrote:
> >> >> >>> > Have you seen https://github.com/pengutronix/genimage?
> >> >> >>>
> >> >> >>> you can find it included within
> >> >> https://github.com/pengutronix/meta-ptx
> >> >> >>> with an accompanying genimage.bbclass.
> >> >> >>>
> >> >> >>> Best regards
> >> >> >>> Ulrich
> >> >> >>>
> >> >> >>> > Regards,
> >> >> >>> >
> >> >> >>> > Carsten
> >> >> >>> >
> >> >> >>> > Von: yocto-bounces@yoctoproject.org [mailto:
> >> >> >>> yocto-bounces@yoctoproject.org] Im Auftrag von Gabriele Zampier=
i
> >> >> >>> > Gesendet: Montag, 4. M=C3=A4rz 2019 12:17
> >> >> >>> > An: yocto@yoctoproject.org
> >> >> >>> > Betreff: [yocto] Multiple ubifs partition
> >> >> >>> >
> >> >> >>> > Hi all,
> >> >> >>> >
> >> >> >>> > I'm trying to build a distribution that has multiple
> partitions.
> >> The
> >> >> >>> desiderata is something like:
> >> >> >>> >
> >> >> >>> > - rootfs.ubifs mounted on /
> >> >> >>> > - data.ubifs mounted on /data
> >> >> >>> > - opt.ubifs mounted on /opt
> >> >> >>> >
> >> >> >>> > I was wondering if there is a standard way to achieve the
> goal. I
> >> see
> >> >> >>> that there is a tool called wic, but it does not seems to suppo=
rt
> >> >> ubifs. I
> >> >> >>> could post process the tarball image and doing stuff with my
> >> scripts,
> >> >> but
> >> >> >>> I'd prefer doing this in a single bitbake run. Can you suggest
> >> >> something?
> >> >> >>> >
> >> >> >>> > Thanks,
> >> >> >>> > Gabriele
> >> >> >>>
> >> >> >>>
> >> >> >>> --
> >> >> >>> Pengutronix e.K.                           | Ulrich =C3=96lmann
> >> >>    |
> >> >> >>> Industrial Linux Solutions                 |
> >> >> http://www.pengutronix.de/
> >> >> >>> |
> >> >> >>> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone:
> >> +49-5121-206917-0
> >> >>   |
> >> >> >>> Amtsgericht Hildesheim, HRA 2686           | Fax:
> >> >>  +49-5121-206917-5555 |
> >> >> >>>
> >> >> >>
> >> >>
> >> >>
> >> >> --
> >> >> Pengutronix e.K.                           | Ulrich =C3=96lmann
> >>  |
> >> >> Industrial Linux Solutions                 |
> http://www.pengutronix.de/
> >> |
> >> >> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917=
-0
> >>   |
> >> >> Amtsgericht Hildesheim, HRA 2686           | Fax:
> >>  +49-5121-206917-5555 |
> >> >>
> >>
> >>
> >> --
> >> Pengutronix e.K.                           | Ulrich =C3=96lmann
>  |
> >> Industrial Linux Solutions                 | http://www.pengutronix.de=
/
> |
> >> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0
>   |
> >> Amtsgericht Hildesheim, HRA 2686           | Fax:
>  +49-5121-206917-5555 |
> >>
>
>
> --
> Pengutronix e.K.                           | Ulrich =C3=96lmann          =
     |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  =
|
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    =
|
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 =
|
>

--0000000000002a6be505883793f2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Perfect, thank you!</div><div><br></div><div>Gabriele=
<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gm=
ail_attr">Il giorno lun 6 mag 2019 alle ore 14:15 Ulrich =C3=96lmann &lt;<a=
 href=3D"mailto:u.oelmann@pengutronix.de">u.oelmann@pengutronix.de</a>&gt; =
ha scritto:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi G=
abriele,<br>
<br>
On Mon, May 06 2019 at 13:32 +0200, Gabriele Zampieri &lt;<a href=3D"mailto=
:gabbla.malist@gmail.com" target=3D"_blank">gabbla.malist@gmail.com</a>&gt;=
 wrote:<br>
&gt; thank you very much for your explanation. The provided genimage.config=
<br>
&gt; looks similar to mine, so I guess it is ok. I will try when I come bac=
k to<br>
&gt; the office. The point I missed was that I need to call: bitbake<br>
&gt; your-customized-ubi and not bitbake my-custom-image, right?<br>
<br>
correct - &quot;my-custom-image&quot; will indirectly become a dependency v=
ia the<br>
variable GENIMAGE_ROOTFS_IMAGE, see [1].<br>
<br>
Best regards<br>
Ulrich<br>
<br>
<br>
[1] <a href=3D"https://github.com/pengutronix/meta-ptx/blob/master/classes/=
genimage.bbclass#L88" rel=3D"noreferrer" target=3D"_blank">https://github.c=
om/pengutronix/meta-ptx/blob/master/classes/genimage.bbclass#L88</a><br>
<br>
&gt; Thank you again,<br>
&gt; Gabriele<br>
&gt;<br>
&gt;<br>
&gt; Il giorno ven 3 mag 2019 alle ore 07:59 Ulrich =C3=96lmann &lt;<br>
&gt; <a href=3D"mailto:u.oelmann@pengutronix.de" target=3D"_blank">u.oelman=
n@pengutronix.de</a>&gt; ha scritto:<br>
&gt;<br>
&gt;&gt; Hi Gabriele,<br>
&gt;&gt;<br>
&gt;&gt; On Thu, May 02 2019 at 13:25 +0200, Gabriele Zampieri &lt;<br>
&gt;&gt; <a href=3D"mailto:gabbla.malist@gmail.com" target=3D"_blank">gabbl=
a.malist@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt; ok, I guess I miss-understand how that class works. I thought=
 that I<br>
&gt;&gt; &gt; had to add the customization on my own image recipe.<br>
&gt;&gt; &gt; So the correct way is to write a &#39;customization recipe&#3=
9; and install<br>
&gt;&gt; &gt; via IMAGE_INSTALL? Can you provide an example?<br>
&gt;&gt;<br>
&gt;&gt; use your custom image recipe as before to just produce your root-<=
br>
&gt;&gt; filesystem which results in a (compressed) tar-file in ${DEPLOY_DI=
R_<br>
&gt;&gt; IMAGE}. It will be referenced from the genimage recipe without any=
 file<br>
&gt;&gt; extension via GENIMAGE_ROOTFS_IMAGE. Now your UBI-recipe (e.g. &#3=
9;your-<br>
&gt;&gt; <a href=3D"http://customized-ubi.bb" rel=3D"noreferrer" target=3D"=
_blank">customized-ubi.bb</a>&#39;) could look like<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0inherit genimage<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0LICENSE =3D &quot;MIT&quot;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0LIC_FILES_CHKSUM =3D<br>
&gt;&gt; &quot;file://${COREBASE}/meta/files/common-licenses/MIT;md5=3D0835=
ade698e0bcf8506ecda2f7b4f302&quot;<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0SRC_URI +=3D &quot;file://genimage.config&quot;=
<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0# to not confuse the flashable UBI-image (&#39;=
ubi&#39;)<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0# with the UBI-filesystems (&#39;ubifs&#39;) it=
 contains<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0GENIMAGE_IMAGE_SUFFIX =3D &quot;ubi&quot;<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0# the name of the root-filesystem genimage shou=
ld use<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0GENIMAGE_ROOTFS_IMAGE =3D &quot;your-customized=
-rootfs&quot;<br>
&gt;&gt;<br>
&gt;&gt; with the accompanying &#39;genimage.config&#39; for example as fol=
lows<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0#<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0# Manufacturer ID: 0x2c, Chip ID: 0xda<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0# -&gt; Micron MT29F2G08ABAEAWP<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0# 256 MiB, SLC<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0#<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0flash nand {<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0pebsize =3D 131072<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0lebsize =3D 126976<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0numpebs =3D 2044<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0minimum-io-unit-size =3D 2048<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0sub-page-size =3D 2048<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0}<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0image @IMAGE@ {<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0flashtype =3D &quot;nand&quot;<br=
>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ubi {<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0partition rootfs {<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0image=
 =3D rootfs.ubifs<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0size =
=3D 64MiB<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0partition opt {<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0image=
 =3D opt.ubifs<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0size =
=3D 32MiB<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0partition data {<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0image=
 =3D data.ubifs<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0autor=
esize =3D true<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0}<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0image rootfs.ubifs {<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0flashtype =3D &quot;nand&quot;<br=
>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ubifs {<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0extra=
args =3D &quot;-x lzo&quot;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0max-s=
ize =3D 64MiB<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mountpoint =3D &quot;/&quot;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0}<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0image opt.ubifs {<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0flashtype =3D &quot;nand&quot;<br=
>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ubifs {<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0extra=
args =3D &quot;-x lzo&quot;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0max-s=
ize =3D 32MiB<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mountpoint =3D &quot;/opt&quot;<b=
r>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0}<br>
&gt;&gt;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0image data.ubifs {<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0flashtype =3D &quot;nand&quot;<br=
>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0ubifs {<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0extra=
args =3D &quot;-x lzo&quot;<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0max-s=
ize =3D 192MiB<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0}<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mountpoint =3D &quot;/data&quot;<=
br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0}<br>
&gt;&gt;<br>
&gt;&gt; In a UBI-image almost all UBI-volumes need to have a fixed size an=
d only<br>
&gt;&gt; one is allowed to use the autoresize mechanism which blows it up t=
o use<br>
&gt;&gt; the remaining space when it is UBI-attached for the first time. Di=
stinct<br>
&gt;&gt; from that is the UBI-filesystem&#39;s max-size parameter which pre=
scribes<br>
&gt;&gt; the maximum size of an UBI-volume that shall be addressable by thi=
s<br>
&gt;&gt; filesystem. This means that if you would re-use &#39;data.ubifs&#3=
9; in a volume<br>
&gt;&gt; that has been autoresized to e.g. 1024MiB the filesystem would not=
 be<br>
&gt;&gt; able to make use of it.<br>
&gt;&gt;<br>
&gt;&gt; I neither tested the recipe nor the genimage.config, so please giv=
e some<br>
&gt;&gt; feedback.<br>
&gt;&gt;<br>
&gt;&gt; Best regards<br>
&gt;&gt; Ulrich<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; Thanks,<br>
&gt;&gt; &gt; Gabriele<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Il giorno mer 24 apr 2019 alle ore 15:15 Ulrich =C3=96lmann &=
lt;<br>
&gt;&gt; &gt; <a href=3D"mailto:u.oelmann@pengutronix.de" target=3D"_blank"=
>u.oelmann@pengutronix.de</a>&gt; ha scritto:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; Hi Gabriele,<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; On Wed, Apr 24 2019 at 14:06 +0200, Gabriele Zampieri &lt=
;<br>
&gt;&gt; &gt;&gt; <a href=3D"mailto:gabbla.malist@gmail.com" target=3D"_bla=
nk">gabbla.malist@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt; I&#39;m now testing genimage via meta-ptx in my Yoct=
o workflow, but I<br>
&gt;&gt; found a<br>
&gt;&gt; &gt;&gt; &gt; problem: I cannot set a SRC_URI in my custom image r=
ecipe (that<br>
&gt;&gt; inherit<br>
&gt;&gt; &gt;&gt; &gt; from core-image which in turn inherit from image) be=
cause do_fetch and<br>
&gt;&gt; &gt;&gt; &gt; do_unpack tasks have noexec set to 1. If I specify t=
he SRC_URI with my<br>
&gt;&gt; &gt;&gt; &gt; genimage.config, bitbake exits, complaining about LI=
C_FILE_CHECKSUM<br>
&gt;&gt; (that<br>
&gt;&gt; &gt;&gt; &gt; is correctly specified). If I hack image.bbclass and=
 comment out<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; #do_fetch[noexec] =3D &quot;1&quot;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; #do_unpack[noexec] =3D &quot;1&quot;<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; The process start correctly. Is there a way to avoid=
 touching<br>
&gt;&gt; &gt;&gt; image.bbclass<br>
&gt;&gt; &gt;&gt; &gt; and install my configuration from the image recipe?<=
br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt; Thanks,<br>
&gt;&gt; &gt;&gt; &gt; Gabriele<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; you need one or more recipe(s) that construct(s) your fil=
esystem(s) and<br>
&gt;&gt; &gt;&gt; a separate one that makes a flashable image out of that (=
see the<br>
&gt;&gt; &gt;&gt; introductory documentation in &#39;genimage.bbclass&#39;)=
. In the former you<br>
&gt;&gt; &gt;&gt; inherit &#39;core-image&#39; and only in the latter which=
 inherits &#39;genimage&#39;<br>
&gt;&gt; &gt;&gt; you have to set the SRC_URI to point to your &#39;genimag=
e.config&#39;.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Best regards<br>
&gt;&gt; &gt;&gt; Ulrich<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt; Il giorno mer 13 mar 2019 alle ore 16:14 Gabriele Za=
mpieri &lt;<br>
&gt;&gt; &gt;&gt; &gt; <a href=3D"mailto:gabbla.malist@gmail.com" target=3D=
"_blank">gabbla.malist@gmail.com</a>&gt; ha scritto:<br>
&gt;&gt; &gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; Hi all,<br>
&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; thank you very much for the suggestion, I will c=
heck genimage and<br>
&gt;&gt; test<br>
&gt;&gt; &gt;&gt; it.<br>
&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; Gabriele<br>
&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; Il giorno gio 7 mar 2019 alle ore 16:23 Ulrich =
=C3=96lmann &lt;<br>
&gt;&gt; &gt;&gt; &gt;&gt; <a href=3D"mailto:u.oelmann@pengutronix.de" targ=
et=3D"_blank">u.oelmann@pengutronix.de</a>&gt; ha scritto:<br>
&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; Hi there,<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; On Thu, Mar 07 2019 at 15:11 +0100, Stelling=
2 Carsten &lt;<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; <a href=3D"mailto:Carsten.Stelling2@goerlitz=
.com" target=3D"_blank">Carsten.Stelling2@goerlitz.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; Have you seen <a href=3D"https://github=
.com/pengutronix/genimage" rel=3D"noreferrer" target=3D"_blank">https://git=
hub.com/pengutronix/genimage</a>?<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; you can find it included within<br>
&gt;&gt; &gt;&gt; <a href=3D"https://github.com/pengutronix/meta-ptx" rel=
=3D"noreferrer" target=3D"_blank">https://github.com/pengutronix/meta-ptx</=
a><br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; with an accompanying genimage.bbclass.<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; Best regards<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; Ulrich<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; Regards,<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; Carsten<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; Von: <a href=3D"mailto:yocto-bounces@yo=
ctoproject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a> [mailt=
o:<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; <a href=3D"mailto:yocto-bounces@yoctoproject=
.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a>] Im Auftrag von =
Gabriele Zampieri<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; Gesendet: Montag, 4. M=C3=A4rz 2019 12:=
17<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; An: <a href=3D"mailto:yocto@yoctoprojec=
t.org" target=3D"_blank">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; Betreff: [yocto] Multiple ubifs partiti=
on<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; Hi all,<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; I&#39;m trying to build a distribution =
that has multiple partitions.<br>
&gt;&gt; The<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; desiderata is something like:<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; - rootfs.ubifs mounted on /<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; - data.ubifs mounted on /data<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; - opt.ubifs mounted on /opt<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; I was wondering if there is a standard =
way to achieve the goal. I<br>
&gt;&gt; see<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; that there is a tool called wic, but it does=
 not seems to support<br>
&gt;&gt; &gt;&gt; ubifs. I<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; could post process the tarball image and doi=
ng stuff with my<br>
&gt;&gt; scripts,<br>
&gt;&gt; &gt;&gt; but<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; I&#39;d prefer doing this in a single bitbak=
e run. Can you suggest<br>
&gt;&gt; &gt;&gt; something?<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; Thanks,<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; &gt; Gabriele<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; --<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; Pengutronix e.K.=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| Ulri=
ch =C3=96lmann<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0 |<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; Industrial Linux Solutions=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|<br>
&gt;&gt; &gt;&gt; <a href=3D"http://www.pengutronix.de/" rel=3D"noreferrer"=
 target=3D"_blank">http://www.pengutronix.de/</a><br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; |<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; Peiner Str. 6-8, 31137 Hildesheim, Germany |=
 Phone:<br>
&gt;&gt; +49-5121-206917-0<br>
&gt;&gt; &gt;&gt;=C2=A0 =C2=A0|<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt; Amtsgericht Hildesheim, HRA 2686=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| Fax:<br>
&gt;&gt; &gt;&gt;=C2=A0 +49-5121-206917-5555 |<br>
&gt;&gt; &gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; --<br>
&gt;&gt; &gt;&gt; Pengutronix e.K.=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| Ulrich =C3=96lman=
n<br>
&gt;&gt;=C2=A0 |<br>
&gt;&gt; &gt;&gt; Industrial Linux Solutions=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| <a href=3D"http://www.pengutronix.de/" rel=
=3D"noreferrer" target=3D"_blank">http://www.pengutronix.de/</a><br>
&gt;&gt; |<br>
&gt;&gt; &gt;&gt; Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5=
121-206917-0<br>
&gt;&gt;=C2=A0 =C2=A0|<br>
&gt;&gt; &gt;&gt; Amtsgericht Hildesheim, HRA 2686=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0| Fax:<br>
&gt;&gt;=C2=A0 +49-5121-206917-5555 |<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; Pengutronix e.K.=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| Ulrich =C3=96lmann=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|<br>
&gt;&gt; Industrial Linux Solutions=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0| <a href=3D"http://www.pengutronix.de/" rel=3D"nor=
eferrer" target=3D"_blank">http://www.pengutronix.de/</a>=C2=A0 |<br>
&gt;&gt; Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-20691=
7-0=C2=A0 =C2=A0 |<br>
&gt;&gt; Amtsgericht Hildesheim, HRA 2686=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0| Fax:=C2=A0 =C2=A0+49-5121-206917-5555 |<br>
&gt;&gt;<br>
<br>
<br>
--<br>
Pengutronix e.K.=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| Ulrich =C3=96lmann=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|<br>
Industrial Linux Solutions=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0| <a href=3D"http://www.pengutronix.de/" rel=3D"noreferrer" ta=
rget=3D"_blank">http://www.pengutronix.de/</a>=C2=A0 |<br>
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0=C2=A0=
 =C2=A0 |<br>
Amtsgericht Hildesheim, HRA 2686=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| =
Fax:=C2=A0 =C2=A0+49-5121-206917-5555 |<br>
</blockquote></div>

--0000000000002a6be505883793f2--
