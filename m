Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DDCC6E00BD0; Wed, 21 Jun 2017 08:00:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f67.google.com (mail-lf0-f67.google.com
	[209.85.215.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C128E00B19
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 08:00:37 -0700 (PDT)
Received: by mail-lf0-f67.google.com with SMTP id u62so21803147lfg.0
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 08:00:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=gOmKvB5BfIy71GB5R5Xu4u+I8s5sd18jhYXBz4Iinvk=;
	b=nJWKBIrtJ8V/1Pbqn+0Q7btqbEmfVIz4uTM+QYVwk2Z4dKz0H+XJlsTN1XJ6G7L4/g
	6Zlvw4a1e7onES4Mv/QOo4C/pb+LNMZDrG0u0LEapy8kKt0Gc8oHp4bvB84G88FRh1kj
	nxUUosacPgKj5rca9IrDBw4vObQOAxHdh9R3c8Ax88DOH5Sg0HIZviOnRCaZD2zAB8Qx
	SXcc5dPOBYnCFQG8UGcp0TMse6i5DDxNUSXaFgwHww42fpGu5wxyYZYSWT8Be9IO7n0e
	2afO3u5IDET5HMdgE2yoJ+gg5jC77uN27C3FDGce1vhIVC9Gd8kjEi66qOe7TjHxOUXw
	WVSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=gOmKvB5BfIy71GB5R5Xu4u+I8s5sd18jhYXBz4Iinvk=;
	b=N/1Ojo8HoV2iK6lfOs1Q9VkCzBjCry62HfMSkKzqf3O3EzI6KvlfPFZkfngGvNtSTW
	Q/wKA1Qq3UzxnozWsJXXjoKoONtff7ogLknZQ0LiO2q3ek8+6oGweEdWEU9v6Yt8t1Xc
	JfuqXZNok/jU8HvHIVXaLWLT86v1tw3dH/c7oqxnSzWRLu2i4qQhWmEERPjkzkLa2XW7
	3tLyFFnMhrPgeXIri/+ojVfjgQIvLUyF0H6Hm7yM+zuYKZ8l68GRAGL9cVl67pPVoMCA
	eJzuSy4Tbj+9FfTfJuYoIoLi6V4iEH3G+CjwkLuuEdQyxqroP+lm9lQ1uLIiHYk+gOM1
	ooUw==
X-Gm-Message-State: AKS2vOy+Ex9JzdK+4cw96YYCrYRCycBSxUysAHGj4PaHER8rqa0V5l7s
	iq2FP9fyWTXvmSirat+2gncYMGCbzw==
X-Received: by 10.80.144.68 with SMTP id z4mr24892654edz.143.1498057236827;
	Wed, 21 Jun 2017 08:00:36 -0700 (PDT)
MIME-Version: 1.0
References: <20170616191213.26849-1-msm-oss@mcclintock.net>
	<CAMKF1spDNLxLAKFa8Cet8v=N_ejPFhQCHOVbmS93b30Sxg585Q@mail.gmail.com>
	<20170617152051.GO10782@bill-the-cat>
	<CAMKF1sqna8Q7myyv=qaB8jUjjDycxeFT4kC2cQmQA7RJhD4BKw@mail.gmail.com>
	<CAEsOVNempB7jsvU-EpX+eDwEfnzFveWVE4TuJaTtm2rLnfN6UQ@mail.gmail.com>
	<CAK18fxGt-MwUV4vNEp_TZesDYBfsb_VrARR=PEag-4jorC6sFQ@mail.gmail.com>
	<CAEsOVNcdLCEPX7q=e6fp+Sg4od1oEQu_uUcFTBFK3KF4MNEetQ@mail.gmail.com>
In-Reply-To: <CAEsOVNcdLCEPX7q=e6fp+Sg4od1oEQu_uUcFTBFK3KF4MNEetQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 21 Jun 2017 15:00:25 +0000
Message-ID: <CAMKF1squEcWZ3K5LT7bFA+f1oaa4HyZu5Cmwv9riBoud=S7qdA@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>,
	Matthew McClintock <msm-oss@mcclintock.net>
Cc: Tom Rini <trini@konsulko.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] sdcard_image-rpi.bbclass: deploy vfat partition
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
X-List-Received-Date: Wed, 21 Jun 2017 15:00:42 -0000
Content-Type: multipart/alternative; boundary="f403045c2b7874572e055279a175"

--f403045c2b7874572e055279a175
Content-Type: text/plain; charset="UTF-8"

On Wed, Jun 21, 2017 at 10:29 AM Matthew McClintock <msm-oss@mcclintock.net>
wrote:

> On Wed, Jun 21, 2017 at 9:26 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > On Sun, Jun 18, 2017 at 7:51 PM, Matthew McClintock <
> msm-oss@mcclintock.net>
> > wrote:
> >>
> >> On Sat, Jun 17, 2017 at 11:41 AM, Khem Raj <raj.khem@gmail.com> wrote:
> >> > On Sat, Jun 17, 2017 at 8:20 AM, Tom Rini <trini@konsulko.com> wrote:
> >> >> On Fri, Jun 16, 2017 at 06:05:07PM -0700, Khem Raj wrote:
> >> >>> On Fri, Jun 16, 2017 at 12:12 PM, Matthew McClintock
> >> >>> <msm-oss@mcclintock.net> wrote:
> >> >>> > This is useful to update the bootloader/vfat partition from u-boot
> >> >>> > when
> >> >>> > you don't want to update everything:
> >> >>> >
> >> >>> > U-Boot> tftpboot 0x1000000 tmp/0VXje
> >> >>> > Waiting for Ethernet connection... done.
> >> >>> > Using sms0 device
> >> >>> > TFTP from server 192.168.0.1; our IP address is 192.168.0.26
> >> >>> > Filename 'image.vfat'.
> >> >>> > Load address: 0x1000000
> >> >>> > Loading: ##################################################  40
> MiB
> >> >>> >          2.1 MiB/s
> >> >>> > done
> >> >>> > Bytes transferred = 41943040 (2800000 hex)
> >> >>> > U-Boot> mmc part
> >> >>> >
> >> >>> > Partition Map for MMC device 0  --   Partition Type: DOS
> >> >>> >
> >> >>> > Part    Start Sector    Num Sectors     UUID            Type
> >> >>> >   1     8192            81920           a63a4fbc-01     0c Boot
> >> >>> >   2     90112           163840          a63a4fbc-02     83
> >> >>> > U-Boot> mmc erase 0x2000 0x14000
> >> >>> >
> >> >>> > MMC erase: dev # 0, block # 8192, count 81920 ... 81920 blocks
> >> >>> > erased:
> >> >>> > OK
> >> >>> > U-Boot> mmc write 0x1000000 0x2000 0x14000
> >> >>> >
> >> >>> > MMC write: dev # 0, block # 8192, count 81920 ... 81920 blocks
> >> >>> > written:
> >> >>> > OK
> >> >>> > U-Boot>
> >> >>> >
> >> >>> > Signed-off-by: Matthew McClintock <msm-oss@mcclintock.net>
> >> >>> > ---
> >> >>> >  classes/sdcard_image-rpi.bbclass | 8 ++++++++
> >> >>> >  1 file changed, 8 insertions(+)
> >> >>> >
> >> >>> > diff --git a/classes/sdcard_image-rpi.bbclass
> >> >>> > b/classes/sdcard_image-rpi.bbclass
> >> >>> > index af3e807..27a0dfc 100644
> >> >>> > --- a/classes/sdcard_image-rpi.bbclass
> >> >>> > +++ b/classes/sdcard_image-rpi.bbclass
> >> >>> > @@ -72,6 +72,10 @@ SDIMG =
> >> >>> > "${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.rpi-sdimg"
> >> >>> >  # Additional files and/or directories to be copied into the vfat
> >> >>> > partition from the IMAGE_ROOTFS.
> >> >>> >  FATPAYLOAD ?= ""
> >> >>> >
> >> >>> > +# SD card vfat partition image name
> >> >>> > +SDIMG_VFAT = "${IMGDEPLOYDIR}/${IMAGE_NAME}.vfat"
> >> >>> > +SDIMG_LINK_VFAT = "${IMGDEPLOYDIR}/${IMAGE_LINK_NAME}.vfat"
> >> >>> > +
> >> >>> >  IMAGE_CMD_rpi-sdimg () {
> >> >>> >
> >> >>> >         # Align partitions
> >> >>> > @@ -145,6 +149,10 @@ IMAGE_CMD_rpi-sdimg () {
> >> >>> >         echo "${IMAGE_NAME}" > ${WORKDIR}/image-version-info
> >> >>> >         mcopy -i ${WORKDIR}/boot.img -v
> >> >>> > ${WORKDIR}/image-version-info ::
> >> >>> >
> >> >>> > +        # Deploy vfat partition
> >> >>> > +        cp ${WORKDIR}/boot.img ${SDIMG_VFAT}
> >> >>> > +        ln -sf ${SDIMG_VFAT} ${SDIMG_LINK_VFAT}
> >> >>> > +
> >> >>>
> >> >>> it is of use if I am not using u-boot ? is there any penalty ?
> >>
> >> Other than just having another thing copied into tmp there is no
> >> effect, even if you're not using u-boot.
> >>
> >> >>
> >> >> The stock firmware also uses a vfat partition, so this could just as
> >> >> easily hold those contents.
> >> >
> >> > yes it does, can it do the same operations like u-boot ?
> >
> >
> > I think what Khem is trying to say is if we don't need it (because I
> don't
> > think there is any use for it when using proprietary bootloader) can we
> > deploy it only in the case of uboot bootloader section?
> >
> > P.S.: Would really be helpful to push a PR to github too so I can merge
> it
> > easier.
>
> If that's what Khem is saying I can deply only with KERNEL_IMAGETYPE =
> uImage... and also go via github. I suppose it's not too useful for
> the proprietary bootloader.


Right if its only valid for uimage alone then let's make it so however I
was looking for it being expanded to other boot loader too

>
>
> Khem, is that what you want?
>
> -M
>

--f403045c2b7874572e055279a175
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br><div class=3D"gmail_quote"><div dir=3D"auto">On Wed, Jun 21, 2017 =
at 10:29 AM Matthew McClintock &lt;<a href=3D"mailto:msm-oss@mcclintock.net=
">msm-oss@mcclintock.net</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">On Wed, Jun 21, 2017 at 9:26 AM, Andrei Gherzan &lt;<a href=3D"mailto:=
andrei@gherzan.ro" target=3D"_blank">andrei@gherzan.ro</a>&gt; wrote:<br>
&gt; On Sun, Jun 18, 2017 at 7:51 PM, Matthew McClintock &lt;<a href=3D"mai=
lto:msm-oss@mcclintock.net" target=3D"_blank">msm-oss@mcclintock.net</a>&gt=
;<br>
&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; On Sat, Jun 17, 2017 at 11:41 AM, Khem Raj &lt;<a href=3D"mailto:r=
aj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt; wrote:<br>
&gt;&gt; &gt; On Sat, Jun 17, 2017 at 8:20 AM, Tom Rini &lt;<a href=3D"mail=
to:trini@konsulko.com" target=3D"_blank">trini@konsulko.com</a>&gt; wrote:<=
br>
&gt;&gt; &gt;&gt; On Fri, Jun 16, 2017 at 06:05:07PM -0700, Khem Raj wrote:=
<br>
&gt;&gt; &gt;&gt;&gt; On Fri, Jun 16, 2017 at 12:12 PM, Matthew McClintock<=
br>
&gt;&gt; &gt;&gt;&gt; &lt;<a href=3D"mailto:msm-oss@mcclintock.net" target=
=3D"_blank">msm-oss@mcclintock.net</a>&gt; wrote:<br>
&gt;&gt; &gt;&gt;&gt; &gt; This is useful to update the bootloader/vfat par=
tition from u-boot<br>
&gt;&gt; &gt;&gt;&gt; &gt; when<br>
&gt;&gt; &gt;&gt;&gt; &gt; you don&#39;t want to update everything:<br>
&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt; U-Boot&gt; tftpboot 0x1000000 tmp/0VXje<br>
&gt;&gt; &gt;&gt;&gt; &gt; Waiting for Ethernet connection... done.<br>
&gt;&gt; &gt;&gt;&gt; &gt; Using sms0 device<br>
&gt;&gt; &gt;&gt;&gt; &gt; TFTP from server 192.168.0.1; our IP address is =
192.168.0.26<br>
&gt;&gt; &gt;&gt;&gt; &gt; Filename &#39;image.vfat&#39;.<br>
&gt;&gt; &gt;&gt;&gt; &gt; Load address: 0x1000000<br>
&gt;&gt; &gt;&gt;&gt; &gt; Loading: #######################################=
###########=C2=A0 40 MiB<br>
&gt;&gt; &gt;&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2.1 MiB/s<br>
&gt;&gt; &gt;&gt;&gt; &gt; done<br>
&gt;&gt; &gt;&gt;&gt; &gt; Bytes transferred =3D 41943040 (2800000 hex)<br>
&gt;&gt; &gt;&gt;&gt; &gt; U-Boot&gt; mmc part<br>
&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt; Partition Map for MMC device 0=C2=A0 --=C2=A0 =
=C2=A0Partition Type: DOS<br>
&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt; Part=C2=A0 =C2=A0 Start Sector=C2=A0 =C2=A0 Num =
Sectors=C2=A0 =C2=A0 =C2=A0UUID=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Ty=
pe<br>
&gt;&gt; &gt;&gt;&gt; &gt;=C2=A0 =C2=A01=C2=A0 =C2=A0 =C2=A08192=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 81920=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0a63a4fbc-01=C2=A0 =C2=A0 =C2=A00c Boot<br>
&gt;&gt; &gt;&gt;&gt; &gt;=C2=A0 =C2=A02=C2=A0 =C2=A0 =C2=A090112=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0163840=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 a63=
a4fbc-02=C2=A0 =C2=A0 =C2=A083<br>
&gt;&gt; &gt;&gt;&gt; &gt; U-Boot&gt; mmc erase 0x2000 0x14000<br>
&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt; MMC erase: dev # 0, block # 8192, count 81920 ..=
. 81920 blocks<br>
&gt;&gt; &gt;&gt;&gt; &gt; erased:<br>
&gt;&gt; &gt;&gt;&gt; &gt; OK<br>
&gt;&gt; &gt;&gt;&gt; &gt; U-Boot&gt; mmc write 0x1000000 0x2000 0x14000<br=
>
&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt; MMC write: dev # 0, block # 8192, count 81920 ..=
. 81920 blocks<br>
&gt;&gt; &gt;&gt;&gt; &gt; written:<br>
&gt;&gt; &gt;&gt;&gt; &gt; OK<br>
&gt;&gt; &gt;&gt;&gt; &gt; U-Boot&gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt; Signed-off-by: Matthew McClintock &lt;<a href=3D=
"mailto:msm-oss@mcclintock.net" target=3D"_blank">msm-oss@mcclintock.net</a=
>&gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt; ---<br>
&gt;&gt; &gt;&gt;&gt; &gt;=C2=A0 classes/sdcard_image-rpi.bbclass | 8 +++++=
+++<br>
&gt;&gt; &gt;&gt;&gt; &gt;=C2=A0 1 file changed, 8 insertions(+)<br>
&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt; diff --git a/classes/sdcard_image-rpi.bbclass<br=
>
&gt;&gt; &gt;&gt;&gt; &gt; b/classes/sdcard_image-rpi.bbclass<br>
&gt;&gt; &gt;&gt;&gt; &gt; index af3e807..27a0dfc 100644<br>
&gt;&gt; &gt;&gt;&gt; &gt; --- a/classes/sdcard_image-rpi.bbclass<br>
&gt;&gt; &gt;&gt;&gt; &gt; +++ b/classes/sdcard_image-rpi.bbclass<br>
&gt;&gt; &gt;&gt;&gt; &gt; @@ -72,6 +72,10 @@ SDIMG =3D<br>
&gt;&gt; &gt;&gt;&gt; &gt; &quot;${IMGDEPLOYDIR}/${IMAGE_NAME}.rootfs.rpi-s=
dimg&quot;<br>
&gt;&gt; &gt;&gt;&gt; &gt;=C2=A0 # Additional files and/or directories to b=
e copied into the vfat<br>
&gt;&gt; &gt;&gt;&gt; &gt; partition from the IMAGE_ROOTFS.<br>
&gt;&gt; &gt;&gt;&gt; &gt;=C2=A0 FATPAYLOAD ?=3D &quot;&quot;<br>
&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt; +# SD card vfat partition image name<br>
&gt;&gt; &gt;&gt;&gt; &gt; +SDIMG_VFAT =3D &quot;${IMGDEPLOYDIR}/${IMAGE_NA=
ME}.vfat&quot;<br>
&gt;&gt; &gt;&gt;&gt; &gt; +SDIMG_LINK_VFAT =3D &quot;${IMGDEPLOYDIR}/${IMA=
GE_LINK_NAME}.vfat&quot;<br>
&gt;&gt; &gt;&gt;&gt; &gt; +<br>
&gt;&gt; &gt;&gt;&gt; &gt;=C2=A0 IMAGE_CMD_rpi-sdimg () {<br>
&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Align partiti=
ons<br>
&gt;&gt; &gt;&gt;&gt; &gt; @@ -145,6 +149,10 @@ IMAGE_CMD_rpi-sdimg () {<br=
>
&gt;&gt; &gt;&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0echo &quot;${IM=
AGE_NAME}&quot; &gt; ${WORKDIR}/image-version-info<br>
&gt;&gt; &gt;&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mcopy -i ${WORK=
DIR}/boot.img -v<br>
&gt;&gt; &gt;&gt;&gt; &gt; ${WORKDIR}/image-version-info ::<br>
&gt;&gt; &gt;&gt;&gt; &gt;<br>
&gt;&gt; &gt;&gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Deploy vfat parti=
tion<br>
&gt;&gt; &gt;&gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 cp ${WORKDIR}/boot.=
img ${SDIMG_VFAT}<br>
&gt;&gt; &gt;&gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 ln -sf ${SDIMG_VFAT=
} ${SDIMG_LINK_VFAT}<br>
&gt;&gt; &gt;&gt;&gt; &gt; +<br>
&gt;&gt; &gt;&gt;&gt;<br>
&gt;&gt; &gt;&gt;&gt; it is of use if I am not using u-boot ? is there any =
penalty ?<br>
&gt;&gt;<br>
&gt;&gt; Other than just having another thing copied into tmp there is no<b=
r>
&gt;&gt; effect, even if you&#39;re not using u-boot.<br>
&gt;&gt;<br>
&gt;&gt; &gt;&gt;<br>
&gt;&gt; &gt;&gt; The stock firmware also uses a vfat partition, so this co=
uld just as<br>
&gt;&gt; &gt;&gt; easily hold those contents.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; yes it does, can it do the same operations like u-boot ?<br>
&gt;<br>
&gt;<br>
&gt; I think what Khem is trying to say is if we don&#39;t need it (because=
 I don&#39;t<br>
&gt; think there is any use for it when using proprietary bootloader) can w=
e<br>
&gt; deploy it only in the case of uboot bootloader section?<br>
&gt;<br>
&gt; P.S.: Would really be helpful to push a PR to github too so I can merg=
e it<br>
&gt; easier.<br>
<br>
If that&#39;s what Khem is saying I can deply only with KERNEL_IMAGETYPE =
=3D<br>
uImage... and also go via github. I suppose it&#39;s not too useful for<br>
the proprietary bootloader.</blockquote><div dir=3D"auto"><br></div><div di=
r=3D"auto">Right if its only valid for uimage alone then let&#39;s make it =
so however I was looking for it being expanded to other boot loader too</di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex"><br>
<br>
Khem, is that what you want?<br>
<br>
-M<br>
</blockquote></div></div>

--f403045c2b7874572e055279a175--
