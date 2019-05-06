Return-Path: <gabbla.malist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEB7EE00D3F; Mon,  6 May 2019 04:32:38 -0700 (PDT)
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
	*      [209.85.167.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com
	[209.85.167.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3F21E00D36
	for <yocto@yoctoproject.org>; Mon,  6 May 2019 04:32:36 -0700 (PDT)
Received: by mail-lf1-f53.google.com with SMTP id k18so8852734lfj.13
	for <yocto@yoctoproject.org>; Mon, 06 May 2019 04:32:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=lPyY6d2RqEPGp3CIPTFAYgKBypVlT/xcfCDMpUX0O+M=;
	b=myUU8swCX6F1SycAAWESxced6XL+vkM82vr+s3zl4MWcTbnKIlubb6ETQo0E1Afhw0
	jIN73VoWl21Qxxg2ykLFYoinrX39ZuQiaKQMOe7fl/U+N2hBkXNxlF4LGr+nUC6yPINO
	xv+Bcpon4kDNyODGth0TpQSQTkikRPSP696Ys2EbhDmruxYerRvV0MQ8oJDJ/g1ddEQ0
	icNE11mQbKBL0KM7SKmmDdl+UBUwX6RFqrpxQKMwE8uhHDWKGV2cb9hPv1NChVfMjC6m
	f1Gd4+VOagxnc72aiKQoVc9Uw8I3cEjuZESr3MJykO10zzMGOscKTRbL9wrxQZrT5seb
	2BXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=lPyY6d2RqEPGp3CIPTFAYgKBypVlT/xcfCDMpUX0O+M=;
	b=FUgNPAAvgsiryN0PdsgWF/MeWiOmQimPI32VYVISASZfodBDap6jGKsvm+6qHyl0pz
	jmeHiLWrkt8AeqkXymIj7iZmFLGH9GUNeSYB1Wtbdz2McwAvv9piW4zwN4yU3U/KZ/1a
	feLS0sItt2E0YoWrzivyDAIBBPVoUr9P3xs8cqpa9OUX8/ZaOTrPTbmVPatd9qIIcVlP
	EtGO0dY7TNI9JiraUpDXN16ZymeSMDQTVqt1Bq3T4ox+viBuVOBopRbv+rLjhwyLAKAA
	9o/rxq8i4ihDpYngtkkmfwUFvpA2BMNHa2CI9qBo6yhxp9l43YaaO29XusjDeDD8RmeI
	TMuw==
X-Gm-Message-State: APjAAAVwO5P5zfv/KYTwfWin4SrcYEE8AvQOXFcPMBtv+xxaN1l2LHwo
	q5QYCdeBJnIqixHbk3k/nTUs1u6xOpIjsQah/rOPTURU
X-Google-Smtp-Source: APXvYqz90y3rMAN3EGi1UzSV0naEAxwl9aLVDCnk/I7SV7MZK0ZK0xUEyYoKqDSFVa8Ki/04189moP2zXE2Y0/emMnM=
X-Received: by 2002:a19:cd91:: with SMTP id d139mr3800417lfg.156.1557142355730;
	Mon, 06 May 2019 04:32:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAAx3WaA0NR=cdGJdPHrkSuENKT7m60GW=pcjCjAHpgwEFPMHwg@mail.gmail.com>
	<A2A9E37E9C946847B2258F923F7CFE42047B38BE@GOEMAIL-Server2.goerlitz.int>
	<6rh8ceu2rn.fsf@pengutronix.de>
	<CAAx3WaDQKbNg0tXZd07s8i_5PTDVctuOcScDMDbXFMmotjoJpw@mail.gmail.com>
	<CAAx3WaCL2XBSarSVpDN+KdwwYoUDEd3cLT1MfecFWriUB=OT-Q@mail.gmail.com>
	<6rbm0vbl2s.fsf@pengutronix.de>
	<CAAx3WaA+KFX67Pzapkc67PTges-SbhRpooRyUxcvDxtzgqOWvQ@mail.gmail.com>
	<6rk1f884ex.fsf@pengutronix.de>
In-Reply-To: <6rk1f884ex.fsf@pengutronix.de>
From: Gabriele Zampieri <gabbla.malist@gmail.com>
Date: Mon, 6 May 2019 13:32:24 +0200
Message-ID: <CAAx3WaCYnDrECr-vqSwrrQqw-gBe-nbFkaWR-rsJLjT_ZDiZJw@mail.gmail.com>
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
X-List-Received-Date: Mon, 06 May 2019 11:32:38 -0000
Content-Type: multipart/alternative; boundary="000000000000fa642d05883674f3"

--000000000000fa642d05883674f3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Ulrich,

thank you very much for your explanation. The provided genimage.config
looks similar to mine, so I guess it is ok. I will try when I come back to
the office. The point I missed was that I need to call: bitbake
your-customized-ubi and not bitbake my-custom-image, right?

Thank you again,
Gabriele


Il giorno ven 3 mag 2019 alle ore 07:59 Ulrich =C3=96lmann <
u.oelmann@pengutronix.de> ha scritto:

> Hi Gabriele,
>
> On Thu, May 02 2019 at 13:25 +0200, Gabriele Zampieri <
> gabbla.malist@gmail.com> wrote:
> > ok, I guess I miss-understand how that class works. I thought that I
> > had to add the customization on my own image recipe.
> > So the correct way is to write a 'customization recipe' and install
> > via IMAGE_INSTALL? Can you provide an example?
>
> use your custom image recipe as before to just produce your root-
> filesystem which results in a (compressed) tar-file in ${DEPLOY_DIR_
> IMAGE}. It will be referenced from the genimage recipe without any file
> extension via GENIMAGE_ROOTFS_IMAGE. Now your UBI-recipe (e.g. 'your-
> customized-ubi.bb') could look like
>
>     inherit genimage
>     LICENSE =3D "MIT"
>     LIC_FILES_CHKSUM =3D
> "file://${COREBASE}/meta/files/common-licenses/MIT;md5=3D0835ade698e0bcf8=
506ecda2f7b4f302"
>
>     SRC_URI +=3D "file://genimage.config"
>
>     # to not confuse the flashable UBI-image ('ubi')
>     # with the UBI-filesystems ('ubifs') it contains
>     GENIMAGE_IMAGE_SUFFIX =3D "ubi"
>
>     # the name of the root-filesystem genimage should use
>     GENIMAGE_ROOTFS_IMAGE =3D "your-customized-rootfs"
>
> with the accompanying 'genimage.config' for example as follows
>
>     #
>     # Manufacturer ID: 0x2c, Chip ID: 0xda
>     # -> Micron MT29F2G08ABAEAWP
>     # 256 MiB, SLC
>     #
>     flash nand {
>         pebsize =3D 131072
>         lebsize =3D 126976
>         numpebs =3D 2044
>         minimum-io-unit-size =3D 2048
>         sub-page-size =3D 2048
>     }
>
>     image @IMAGE@ {
>         flashtype =3D "nand"
>         ubi {
>         }
>
>         partition rootfs {
>                 image =3D rootfs.ubifs
>                 size =3D 64MiB
>         }
>
>         partition opt {
>                 image =3D opt.ubifs
>                 size =3D 32MiB
>         }
>
>         partition data {
>                 image =3D data.ubifs
>                 autoresize =3D true
>         }
>     }
>
>     image rootfs.ubifs {
>         flashtype =3D "nand"
>         ubifs {
>                 extraargs =3D "-x lzo"
>                 max-size =3D 64MiB
>         }
>         mountpoint =3D "/"
>     }
>
>     image opt.ubifs {
>         flashtype =3D "nand"
>         ubifs {
>                 extraargs =3D "-x lzo"
>                 max-size =3D 32MiB
>         }
>         mountpoint =3D "/opt"
>     }
>
>     image data.ubifs {
>         flashtype =3D "nand"
>         ubifs {
>                 extraargs =3D "-x lzo"
>                 max-size =3D 192MiB
>         }
>         mountpoint =3D "/data"
>     }
>
> In a UBI-image almost all UBI-volumes need to have a fixed size and only
> one is allowed to use the autoresize mechanism which blows it up to use
> the remaining space when it is UBI-attached for the first time. Distinct
> from that is the UBI-filesystem's max-size parameter which prescribes
> the maximum size of an UBI-volume that shall be addressable by this
> filesystem. This means that if you would re-use 'data.ubifs' in a volume
> that has been autoresized to e.g. 1024MiB the filesystem would not be
> able to make use of it.
>
> I neither tested the recipe nor the genimage.config, so please give some
> feedback.
>
> Best regards
> Ulrich
>
>
> > Thanks,
> > Gabriele
> >
> > Il giorno mer 24 apr 2019 alle ore 15:15 Ulrich =C3=96lmann <
> > u.oelmann@pengutronix.de> ha scritto:
> >
> >> Hi Gabriele,
> >>
> >> On Wed, Apr 24 2019 at 14:06 +0200, Gabriele Zampieri <
> >> gabbla.malist@gmail.com> wrote:
> >> > I'm now testing genimage via meta-ptx in my Yocto workflow, but I
> found a
> >> > problem: I cannot set a SRC_URI in my custom image recipe (that
> inherit
> >> > from core-image which in turn inherit from image) because do_fetch a=
nd
> >> > do_unpack tasks have noexec set to 1. If I specify the SRC_URI with =
my
> >> > genimage.config, bitbake exits, complaining about LIC_FILE_CHECKSUM
> (that
> >> > is correctly specified). If I hack image.bbclass and comment out
> >> >
> >> > #do_fetch[noexec] =3D "1"
> >> >
> >> >
> >> > #do_unpack[noexec] =3D "1"
> >> >
> >> > The process start correctly. Is there a way to avoid touching
> >> image.bbclass
> >> > and install my configuration from the image recipe?
> >> >
> >> > Thanks,
> >> > Gabriele
> >>
> >> you need one or more recipe(s) that construct(s) your filesystem(s) an=
d
> >> a separate one that makes a flashable image out of that (see the
> >> introductory documentation in 'genimage.bbclass'). In the former you
> >> inherit 'core-image' and only in the latter which inherits 'genimage'
> >> you have to set the SRC_URI to point to your 'genimage.config'.
> >>
> >> Best regards
> >> Ulrich
> >>
> >>
> >> > Il giorno mer 13 mar 2019 alle ore 16:14 Gabriele Zampieri <
> >> > gabbla.malist@gmail.com> ha scritto:
> >> >
> >> >> Hi all,
> >> >>
> >> >> thank you very much for the suggestion, I will check genimage and
> test
> >> it.
> >> >>
> >> >> Gabriele
> >> >>
> >> >> Il giorno gio 7 mar 2019 alle ore 16:23 Ulrich =C3=96lmann <
> >> >> u.oelmann@pengutronix.de> ha scritto:
> >> >>
> >> >>> Hi there,
> >> >>>
> >> >>> On Thu, Mar 07 2019 at 15:11 +0100, Stelling2 Carsten <
> >> >>> Carsten.Stelling2@goerlitz.com> wrote:
> >> >>> > Have you seen https://github.com/pengutronix/genimage?
> >> >>>
> >> >>> you can find it included within
> >> https://github.com/pengutronix/meta-ptx
> >> >>> with an accompanying genimage.bbclass.
> >> >>>
> >> >>> Best regards
> >> >>> Ulrich
> >> >>>
> >> >>> > Regards,
> >> >>> >
> >> >>> > Carsten
> >> >>> >
> >> >>> > Von: yocto-bounces@yoctoproject.org [mailto:
> >> >>> yocto-bounces@yoctoproject.org] Im Auftrag von Gabriele Zampieri
> >> >>> > Gesendet: Montag, 4. M=C3=A4rz 2019 12:17
> >> >>> > An: yocto@yoctoproject.org
> >> >>> > Betreff: [yocto] Multiple ubifs partition
> >> >>> >
> >> >>> > Hi all,
> >> >>> >
> >> >>> > I'm trying to build a distribution that has multiple partitions.
> The
> >> >>> desiderata is something like:
> >> >>> >
> >> >>> > - rootfs.ubifs mounted on /
> >> >>> > - data.ubifs mounted on /data
> >> >>> > - opt.ubifs mounted on /opt
> >> >>> >
> >> >>> > I was wondering if there is a standard way to achieve the goal. =
I
> see
> >> >>> that there is a tool called wic, but it does not seems to support
> >> ubifs. I
> >> >>> could post process the tarball image and doing stuff with my
> scripts,
> >> but
> >> >>> I'd prefer doing this in a single bitbake run. Can you suggest
> >> something?
> >> >>> >
> >> >>> > Thanks,
> >> >>> > Gabriele
> >> >>>
> >> >>>
> >> >>> --
> >> >>> Pengutronix e.K.                           | Ulrich =C3=96lmann
> >>    |
> >> >>> Industrial Linux Solutions                 |
> >> http://www.pengutronix.de/
> >> >>> |
> >> >>> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone:
> +49-5121-206917-0
> >>   |
> >> >>> Amtsgericht Hildesheim, HRA 2686           | Fax:
> >>  +49-5121-206917-5555 |
> >> >>>
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

--000000000000fa642d05883674f3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Ulrich,</div><div><br></div><div>thank you very mu=
ch for your explanation. The provided genimage.config looks similar to mine=
, so I guess it is ok. I will try when I come back to the office. The point=
 I missed was that I need to call: bitbake your-customized-ubi and not bitb=
ake my-custom-image, right?</div><div><br></div><div>Thank you again, <br><=
/div><div>Gabriele<br></div><div><br></div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">Il giorno ven 3 mag 2019 alle or=
e 07:59 Ulrich =C3=96lmann &lt;<a href=3D"mailto:u.oelmann@pengutronix.de">=
u.oelmann@pengutronix.de</a>&gt; ha scritto:<br></div><blockquote class=3D"=
gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(20=
4,204,204);padding-left:1ex">Hi Gabriele,<br>
<br>
On Thu, May 02 2019 at 13:25 +0200, Gabriele Zampieri &lt;<a href=3D"mailto=
:gabbla.malist@gmail.com" target=3D"_blank">gabbla.malist@gmail.com</a>&gt;=
 wrote:<br>
&gt; ok, I guess I miss-understand how that class works. I thought that I<b=
r>
&gt; had to add the customization on my own image recipe.<br>
&gt; So the correct way is to write a &#39;customization recipe&#39; and in=
stall<br>
&gt; via IMAGE_INSTALL? Can you provide an example?<br>
<br>
use your custom image recipe as before to just produce your root-<br>
filesystem which results in a (compressed) tar-file in ${DEPLOY_DIR_<br>
IMAGE}. It will be referenced from the genimage recipe without any file<br>
extension via GENIMAGE_ROOTFS_IMAGE. Now your UBI-recipe (e.g. &#39;your-<b=
r>
<a href=3D"http://customized-ubi.bb" rel=3D"noreferrer" target=3D"_blank">c=
ustomized-ubi.bb</a>&#39;) could look like<br>
<br>
=C2=A0 =C2=A0 inherit genimage<br>
=C2=A0 =C2=A0 LICENSE =3D &quot;MIT&quot;<br>
=C2=A0 =C2=A0 LIC_FILES_CHKSUM =3D &quot;file://${COREBASE}/meta/files/comm=
on-licenses/MIT;md5=3D0835ade698e0bcf8506ecda2f7b4f302&quot;<br>
<br>
=C2=A0 =C2=A0 SRC_URI +=3D &quot;file://genimage.config&quot;<br>
<br>
=C2=A0 =C2=A0 # to not confuse the flashable UBI-image (&#39;ubi&#39;)<br>
=C2=A0 =C2=A0 # with the UBI-filesystems (&#39;ubifs&#39;) it contains<br>
=C2=A0 =C2=A0 GENIMAGE_IMAGE_SUFFIX =3D &quot;ubi&quot;<br>
<br>
=C2=A0 =C2=A0 # the name of the root-filesystem genimage should use<br>
=C2=A0 =C2=A0 GENIMAGE_ROOTFS_IMAGE =3D &quot;your-customized-rootfs&quot;<=
br>
<br>
with the accompanying &#39;genimage.config&#39; for example as follows<br>
<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 # Manufacturer ID: 0x2c, Chip ID: 0xda<br>
=C2=A0 =C2=A0 # -&gt; Micron MT29F2G08ABAEAWP<br>
=C2=A0 =C2=A0 # 256 MiB, SLC<br>
=C2=A0 =C2=A0 #<br>
=C2=A0 =C2=A0 flash nand {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 pebsize =3D 131072<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 lebsize =3D 126976<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 numpebs =3D 2044<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 minimum-io-unit-size =3D 2048<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 sub-page-size =3D 2048<br>
=C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 image @IMAGE@ {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 flashtype =3D &quot;nand&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ubi {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 partition rootfs {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 image =3D rootfs.ub=
ifs<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 size =3D 64MiB<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 partition opt {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 image =3D opt.ubifs=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 size =3D 32MiB<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 partition data {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 image =3D data.ubif=
s<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 autoresize =3D true=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 image rootfs.ubifs {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 flashtype =3D &quot;nand&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ubifs {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 extraargs =3D &quot=
;-x lzo&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 max-size =3D 64MiB<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 mountpoint =3D &quot;/&quot;<br>
=C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 image opt.ubifs {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 flashtype =3D &quot;nand&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ubifs {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 extraargs =3D &quot=
;-x lzo&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 max-size =3D 32MiB<=
br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 mountpoint =3D &quot;/opt&quot;<br>
=C2=A0 =C2=A0 }<br>
<br>
=C2=A0 =C2=A0 image data.ubifs {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 flashtype =3D &quot;nand&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 ubifs {<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 extraargs =3D &quot=
;-x lzo&quot;<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 max-size =3D 192MiB=
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 }<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 mountpoint =3D &quot;/data&quot;<br>
=C2=A0 =C2=A0 }<br>
<br>
In a UBI-image almost all UBI-volumes need to have a fixed size and only<br=
>
one is allowed to use the autoresize mechanism which blows it up to use<br>
the remaining space when it is UBI-attached for the first time. Distinct<br=
>
from that is the UBI-filesystem&#39;s max-size parameter which prescribes<b=
r>
the maximum size of an UBI-volume that shall be addressable by this<br>
filesystem. This means that if you would re-use &#39;data.ubifs&#39; in a v=
olume<br>
that has been autoresized to e.g. 1024MiB the filesystem would not be<br>
able to make use of it.<br>
<br>
I neither tested the recipe nor the genimage.config, so please give some<br=
>
feedback.<br>
<br>
Best regards<br>
Ulrich<br>
<br>
<br>
&gt; Thanks,<br>
&gt; Gabriele<br>
&gt;<br>
&gt; Il giorno mer 24 apr 2019 alle ore 15:15 Ulrich =C3=96lmann &lt;<br>
&gt; <a href=3D"mailto:u.oelmann@pengutronix.de" target=3D"_blank">u.oelman=
n@pengutronix.de</a>&gt; ha scritto:<br>
&gt;<br>
&gt;&gt; Hi Gabriele,<br>
&gt;&gt;<br>
&gt;&gt; On Wed, Apr 24 2019 at 14:06 +0200, Gabriele Zampieri &lt;<br>
&gt;&gt; <a href=3D"mailto:gabbla.malist@gmail.com" target=3D"_blank">gabbl=
a.malist@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt; I&#39;m now testing genimage via meta-ptx in my Yocto workflo=
w, but I found a<br>
&gt;&gt; &gt; problem: I cannot set a SRC_URI in my custom image recipe (th=
at inherit<br>
&gt;&gt; &gt; from core-image which in turn inherit from image) because do_=
fetch and<br>
&gt;&gt; &gt; do_unpack tasks have noexec set to 1. If I specify the SRC_UR=
I with my<br>
&gt;&gt; &gt; genimage.config, bitbake exits, complaining about LIC_FILE_CH=
ECKSUM (that<br>
&gt;&gt; &gt; is correctly specified). If I hack image.bbclass and comment =
out<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; #do_fetch[noexec] =3D &quot;1&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; #do_unpack[noexec] =3D &quot;1&quot;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; The process start correctly. Is there a way to avoid touching=
<br>
&gt;&gt; image.bbclass<br>
&gt;&gt; &gt; and install my configuration from the image recipe?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Thanks,<br>
&gt;&gt; &gt; Gabriele<br>
&gt;&gt;<br>
&gt;&gt; you need one or more recipe(s) that construct(s) your filesystem(s=
) and<br>
&gt;&gt; a separate one that makes a flashable image out of that (see the<b=
r>
&gt;&gt; introductory documentation in &#39;genimage.bbclass&#39;). In the =
former you<br>
&gt;&gt; inherit &#39;core-image&#39; and only in the latter which inherits=
 &#39;genimage&#39;<br>
&gt;&gt; you have to set the SRC_URI to point to your &#39;genimage.config&=
#39;.<br>
&gt;&gt;<br>
&gt;&gt; Best regards<br>
&gt;&gt; Ulrich<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; &gt; Il giorno mer 13 mar 2019 alle ore 16:14 Gabriele Zampieri &l=
t;<br>
&gt;&gt; &gt; <a href=3D"mailto:gabbla.malist@gmail.com" target=3D"_blank">=
gabbla.malist@gmail.com</a>&gt; ha scritto:<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt; Hi all,<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; thank you very much for the suggestion, I will check geni=
mage and test<br>
&gt;&gt; it.<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Gabriele<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; Il giorno gio 7 mar 2019 alle ore 16:23 Ulrich =C3=96lman=
n &lt;<br>
&gt;&gt; &gt;&gt; <a href=3D"mailto:u.oelmann@pengutronix.de" target=3D"_bl=
ank">u.oelmann@pengutronix.de</a>&gt; ha scritto:<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; Hi there,<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; On Thu, Mar 07 2019 at 15:11 +0100, Stelling2 Carsten=
 &lt;<br>
&gt;&gt; &gt;&gt;&gt; <a href=3D"mailto:Carsten.Stelling2@goerlitz.com" tar=
get=3D"_blank">Carsten.Stelling2@goerlitz.com</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt;&gt; &gt; Have you seen <a href=3D"https://github.com/peng=
utronix/genimage" rel=3D"noreferrer" target=3D"_blank">https://github.com/p=
engutronix/genimage</a>?<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; you can find it included within<br>
&gt;&gt; <a href=3D"https://github.com/pengutronix/meta-ptx" rel=3D"norefer=
rer" target=3D"_blank">https://github.com/pengutronix/meta-ptx</a><br>
&gt;&gt; &gt;&gt;&gt; with an accompanying genimage.bbclass.<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; Best regards<br>
&gt;&gt; &gt;&gt;&gt; Ulrich<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt; Regards,<br>
&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt; Carsten<br>
&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt; Von: <a href=3D"mailto:yocto-bounces@yoctoprojec=
t.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a> [mailto:<br>
&gt;&gt; &gt;&gt;&gt; <a href=3D"mailto:yocto-bounces@yoctoproject.org" tar=
get=3D"_blank">yocto-bounces@yoctoproject.org</a>] Im Auftrag von Gabriele =
Zampieri<br>
&gt;&gt; &gt;&gt;&gt; &gt; Gesendet: Montag, 4. M=C3=A4rz 2019 12:17<br>
&gt;&gt; &gt;&gt;&gt; &gt; An: <a href=3D"mailto:yocto@yoctoproject.org" ta=
rget=3D"_blank">yocto@yoctoproject.org</a><br>
&gt;&gt; &gt;&gt;&gt; &gt; Betreff: [yocto] Multiple ubifs partition<br>
&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt; Hi all,<br>
&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt; I&#39;m trying to build a distribution that has =
multiple partitions. The<br>
&gt;&gt; &gt;&gt;&gt; desiderata is something like:<br>
&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt; - rootfs.ubifs mounted on /<br>
&gt;&gt; &gt;&gt;&gt; &gt; - data.ubifs mounted on /data<br>
&gt;&gt; &gt;&gt;&gt; &gt; - opt.ubifs mounted on /opt<br>
&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt; I was wondering if there is a standard way to ac=
hieve the goal. I see<br>
&gt;&gt; &gt;&gt;&gt; that there is a tool called wic, but it does not seem=
s to support<br>
&gt;&gt; ubifs. I<br>
&gt;&gt; &gt;&gt;&gt; could post process the tarball image and doing stuff =
with my scripts,<br>
&gt;&gt; but<br>
&gt;&gt; &gt;&gt;&gt; I&#39;d prefer doing this in a single bitbake run. Ca=
n you suggest<br>
&gt;&gt; something?<br>
&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt; Thanks,<br>
&gt;&gt; &gt;&gt;&gt; &gt; Gabriele<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; --<br>
&gt;&gt; &gt;&gt;&gt; Pengutronix e.K.=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| Ulrich =C3=
=96lmann<br>
&gt;&gt;=C2=A0 =C2=A0 |<br>
&gt;&gt; &gt;&gt;&gt; Industrial Linux Solutions=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0|<br>
&gt;&gt; <a href=3D"http://www.pengutronix.de/" rel=3D"noreferrer" target=
=3D"_blank">http://www.pengutronix.de/</a><br>
&gt;&gt; &gt;&gt;&gt; |<br>
&gt;&gt; &gt;&gt;&gt; Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +=
49-5121-206917-0<br>
&gt;&gt;=C2=A0 =C2=A0|<br>
&gt;&gt; &gt;&gt;&gt; Amtsgericht Hildesheim, HRA 2686=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0| Fax:<br>
&gt;&gt;=C2=A0 +49-5121-206917-5555 |<br>
&gt;&gt; &gt;&gt;&gt;<br>
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

--000000000000fa642d05883674f3--
