Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12A9CE00BD0; Wed, 21 Jun 2017 07:27:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f196.google.com (mail-io0-f196.google.com
	[209.85.223.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E50F2E00B19
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 07:27:21 -0700 (PDT)
Received: by mail-io0-f196.google.com with SMTP id m19so863353ioe.1
	for <yocto@yoctoproject.org>; Wed, 21 Jun 2017 07:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=G74gQaekEVBSyV/EqMLtTcLSS+9koxIZwTwoqtgTA8A=;
	b=0vdMaxLhj6H8iPfS1QELsu891LX5kB32zwbmheG+sLp+4p84Py3o/HVhordOjyc+XE
	aXhyiCApvlhu8oWF5dGhjzqkZ8nP5umtsemdksmS4krDz2CF7pSIzhnucH4aniMFmCH1
	X0mf3y4abvIB4ST47YuAZdU7JTv9Tb5iQBWLezHzyxJ5fYnu2VCPh7KN3kqfquM6O1uU
	CgH0JzxpgjX0+Hmg+B2bFjoizp1hJZqdS42QqCyZgA4fKez+wLZsxQeHTpdzhYdTcKbz
	j+kcqnwqcTmVIk3zH+jr7iS2xJxPcrOrBsa30H5fV9PLMTQYZjCDVyiOwvNMb7cABZTK
	zhIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=G74gQaekEVBSyV/EqMLtTcLSS+9koxIZwTwoqtgTA8A=;
	b=lnovhM3ur9DhMHwQfQsWIvj5Mj7laSDBEnFlcvObDsap3k9IbBK+0CcDwS/31t5L1i
	DIZ7YJtFdGjM31r+Le110hmHJZjJ3zxiUnuC1iIzMSG8z7RQomk3lTnMG0/FnqCdaacs
	1yGDsqAiJEc0X3nxIzOtmlFuUzGITpu6FtvgaDwEt6rSiS2tUlkn54c6Bjg9jDJSTKAJ
	EOaJy7cK2nn7zGAWoNE2PLvzjf1sRWDAwOxXmOc2Onz/E5Q8xJnPt2snLuU0vp3qhJNG
	n21UDfuL3QocLnWm9Gl6NtglB0f+aQIW3iuzjs/e+4PxuVjL8O2BlHFXEhXYGwFRDc+x
	4UhA==
X-Gm-Message-State: AKS2vOwDd86oM6W+jAYdE3Pi+YepV4SXxbfSNmah5hKlBtVJBuCuqfMp
	eqX7sp+QV9J1bpiPZv9c3Nf2OkZX6HHn
X-Received: by 10.107.39.12 with SMTP id n12mr9642975ion.127.1498055240933;
	Wed, 21 Jun 2017 07:27:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.13.5 with HTTP; Wed, 21 Jun 2017 07:26:40 -0700 (PDT)
X-Originating-IP: [86.187.81.245]
In-Reply-To: <CAEsOVNempB7jsvU-EpX+eDwEfnzFveWVE4TuJaTtm2rLnfN6UQ@mail.gmail.com>
References: <20170616191213.26849-1-msm-oss@mcclintock.net>
	<CAMKF1spDNLxLAKFa8Cet8v=N_ejPFhQCHOVbmS93b30Sxg585Q@mail.gmail.com>
	<20170617152051.GO10782@bill-the-cat>
	<CAMKF1sqna8Q7myyv=qaB8jUjjDycxeFT4kC2cQmQA7RJhD4BKw@mail.gmail.com>
	<CAEsOVNempB7jsvU-EpX+eDwEfnzFveWVE4TuJaTtm2rLnfN6UQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 21 Jun 2017 15:26:40 +0100
Message-ID: <CAK18fxGt-MwUV4vNEp_TZesDYBfsb_VrARR=PEag-4jorC6sFQ@mail.gmail.com>
To: Matthew McClintock <msm-oss@mcclintock.net>
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
X-List-Received-Date: Wed, 21 Jun 2017 14:27:23 -0000
Content-Type: multipart/alternative; boundary="001a114082ac7d7adf0552792ad6"

--001a114082ac7d7adf0552792ad6
Content-Type: text/plain; charset="UTF-8"

On Sun, Jun 18, 2017 at 7:51 PM, Matthew McClintock <msm-oss@mcclintock.net>
wrote:

> On Sat, Jun 17, 2017 at 11:41 AM, Khem Raj <raj.khem@gmail.com> wrote:
> > On Sat, Jun 17, 2017 at 8:20 AM, Tom Rini <trini@konsulko.com> wrote:
> >> On Fri, Jun 16, 2017 at 06:05:07PM -0700, Khem Raj wrote:
> >>> On Fri, Jun 16, 2017 at 12:12 PM, Matthew McClintock
> >>> <msm-oss@mcclintock.net> wrote:
> >>> > This is useful to update the bootloader/vfat partition from u-boot
> when
> >>> > you don't want to update everything:
> >>> >
> >>> > U-Boot> tftpboot 0x1000000 tmp/0VXje
> >>> > Waiting for Ethernet connection... done.
> >>> > Using sms0 device
> >>> > TFTP from server 192.168.0.1; our IP address is 192.168.0.26
> >>> > Filename 'image.vfat'.
> >>> > Load address: 0x1000000
> >>> > Loading: ##################################################  40 MiB
> >>> >          2.1 MiB/s
> >>> > done
> >>> > Bytes transferred = 41943040 (2800000 hex)
> >>> > U-Boot> mmc part
> >>> >
> >>> > Partition Map for MMC device 0  --   Partition Type: DOS
> >>> >
> >>> > Part    Start Sector    Num Sectors     UUID            Type
> >>> >   1     8192            81920           a63a4fbc-01     0c Boot
> >>> >   2     90112           163840          a63a4fbc-02     83
> >>> > U-Boot> mmc erase 0x2000 0x14000
> >>> >
> >>> > MMC erase: dev # 0, block # 8192, count 81920 ... 81920 blocks
> erased:
> >>> > OK
> >>> > U-Boot> mmc write 0x1000000 0x2000 0x14000
> >>> >
> >>> > MMC write: dev # 0, block # 8192, count 81920 ... 81920 blocks
> written:
> >>> > OK
> >>> > U-Boot>
> >>> >
> >>> > Signed-off-by: Matthew McClintock <msm-oss@mcclintock.net>
> >>> > ---
> >>> >  classes/sdcard_image-rpi.bbclass | 8 ++++++++
> >>> >  1 file changed, 8 insertions(+)
> >>> >
> >>> > diff --git a/classes/sdcard_image-rpi.bbclass
> b/classes/sdcard_image-rpi.bbclass
> >>> > index af3e807..27a0dfc 100644
> >>> > --- a/classes/sdcard_image-rpi.bbclass
> >>> > +++ b/classes/sdcard_image-rpi.bbclass
> >>> > @@ -72,6 +72,10 @@ SDIMG = "${IMGDEPLOYDIR}/${IMAGE_NAME}
> .rootfs.rpi-sdimg"
> >>> >  # Additional files and/or directories to be copied into the vfat
> partition from the IMAGE_ROOTFS.
> >>> >  FATPAYLOAD ?= ""
> >>> >
> >>> > +# SD card vfat partition image name
> >>> > +SDIMG_VFAT = "${IMGDEPLOYDIR}/${IMAGE_NAME}.vfat"
> >>> > +SDIMG_LINK_VFAT = "${IMGDEPLOYDIR}/${IMAGE_LINK_NAME}.vfat"
> >>> > +
> >>> >  IMAGE_CMD_rpi-sdimg () {
> >>> >
> >>> >         # Align partitions
> >>> > @@ -145,6 +149,10 @@ IMAGE_CMD_rpi-sdimg () {
> >>> >         echo "${IMAGE_NAME}" > ${WORKDIR}/image-version-info
> >>> >         mcopy -i ${WORKDIR}/boot.img -v
> ${WORKDIR}/image-version-info ::
> >>> >
> >>> > +        # Deploy vfat partition
> >>> > +        cp ${WORKDIR}/boot.img ${SDIMG_VFAT}
> >>> > +        ln -sf ${SDIMG_VFAT} ${SDIMG_LINK_VFAT}
> >>> > +
> >>>
> >>> it is of use if I am not using u-boot ? is there any penalty ?
>
> Other than just having another thing copied into tmp there is no
> effect, even if you're not using u-boot.
>
> >>
> >> The stock firmware also uses a vfat partition, so this could just as
> >> easily hold those contents.
> >
> > yes it does, can it do the same operations like u-boot ?
>

I think what Khem is trying to say is if we don't need it (because I don't
think there is any use for it when using proprietary bootloader) can we
deploy it only in the case of uboot bootloader section?

P.S.: Would really be helpful to push a PR to github too so I can merge it
easier.

--
Andrei Gherzan

--001a114082ac7d7adf0552792ad6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On S=
un, Jun 18, 2017 at 7:51 PM, Matthew McClintock <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:msm-oss@mcclintock.net" target=3D"_blank">msm-oss@mcclintock.n=
et</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div class=3D"gmail-HOEnZb"><div class=3D"gmail-h5">On Sat, Jun 17, 2017=
 at 11:41 AM, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@g=
mail.com</a>&gt; wrote:<br>
&gt; On Sat, Jun 17, 2017 at 8:20 AM, Tom Rini &lt;<a href=3D"mailto:trini@=
konsulko.com">trini@konsulko.com</a>&gt; wrote:<br>
&gt;&gt; On Fri, Jun 16, 2017 at 06:05:07PM -0700, Khem Raj wrote:<br>
&gt;&gt;&gt; On Fri, Jun 16, 2017 at 12:12 PM, Matthew McClintock<br>
&gt;&gt;&gt; &lt;<a href=3D"mailto:msm-oss@mcclintock.net">msm-oss@mcclinto=
ck.net</a>&gt; wrote:<br>
&gt;&gt;&gt; &gt; This is useful to update the bootloader/vfat partition fr=
om u-boot when<br>
&gt;&gt;&gt; &gt; you don&#39;t want to update everything:<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; U-Boot&gt; tftpboot 0x1000000 tmp/0VXje<br>
&gt;&gt;&gt; &gt; Waiting for Ethernet connection... done.<br>
&gt;&gt;&gt; &gt; Using sms0 device<br>
&gt;&gt;&gt; &gt; TFTP from server 192.168.0.1; our IP address is 192.168.0=
.26<br>
&gt;&gt;&gt; &gt; Filename &#39;image.vfat&#39;.<br>
&gt;&gt;&gt; &gt; Load address: 0x1000000<br>
&gt;&gt;&gt; &gt; Loading: ##############################<wbr>#############=
#######=C2=A0 40 MiB<br>
&gt;&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 2.1 MiB/s<br>
&gt;&gt;&gt; &gt; done<br>
&gt;&gt;&gt; &gt; Bytes transferred =3D 41943040 (2800000 hex)<br>
&gt;&gt;&gt; &gt; U-Boot&gt; mmc part<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Partition Map for MMC device 0=C2=A0 --=C2=A0 =C2=A0Parti=
tion Type: DOS<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Part=C2=A0 =C2=A0 Start Sector=C2=A0 =C2=A0 Num Sectors=
=C2=A0 =C2=A0 =C2=A0UUID=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Type<br>
&gt;&gt;&gt; &gt;=C2=A0 =C2=A01=C2=A0 =C2=A0 =C2=A08192=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 81920=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0a63a4fb=
c-01=C2=A0 =C2=A0 =C2=A00c Boot<br>
&gt;&gt;&gt; &gt;=C2=A0 =C2=A02=C2=A0 =C2=A0 =C2=A090112=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0163840=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 a63a4fbc-0=
2=C2=A0 =C2=A0 =C2=A083<br>
&gt;&gt;&gt; &gt; U-Boot&gt; mmc erase 0x2000 0x14000<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; MMC erase: dev # 0, block # 8192, count 81920 ... 81920 b=
locks erased:<br>
&gt;&gt;&gt; &gt; OK<br>
&gt;&gt;&gt; &gt; U-Boot&gt; mmc write 0x1000000 0x2000 0x14000<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; MMC write: dev # 0, block # 8192, count 81920 ... 81920 b=
locks written:<br>
&gt;&gt;&gt; &gt; OK<br>
&gt;&gt;&gt; &gt; U-Boot&gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Signed-off-by: Matthew McClintock &lt;<a href=3D"mailto:m=
sm-oss@mcclintock.net">msm-oss@mcclintock.net</a>&gt;<br>
&gt;&gt;&gt; &gt; ---<br>
&gt;&gt;&gt; &gt;=C2=A0 classes/sdcard_image-rpi.<wbr>bbclass | 8 ++++++++<=
br>
&gt;&gt;&gt; &gt;=C2=A0 1 file changed, 8 insertions(+)<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; diff --git a/classes/sdcard_image-rpi.<wbr>bbclass b/clas=
ses/sdcard_image-rpi.<wbr>bbclass<br>
&gt;&gt;&gt; &gt; index af3e807..27a0dfc 100644<br>
&gt;&gt;&gt; &gt; --- a/classes/sdcard_image-rpi.<wbr>bbclass<br>
&gt;&gt;&gt; &gt; +++ b/classes/sdcard_image-rpi.<wbr>bbclass<br>
&gt;&gt;&gt; &gt; @@ -72,6 +72,10 @@ SDIMG =3D &quot;${IMGDEPLOYDIR}/${IMAG=
E_NAME}<wbr>.rootfs.rpi-sdimg&quot;<br>
&gt;&gt;&gt; &gt;=C2=A0 # Additional files and/or directories to be copied =
into the vfat partition from the IMAGE_ROOTFS.<br>
&gt;&gt;&gt; &gt;=C2=A0 FATPAYLOAD ?=3D &quot;&quot;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; +# SD card vfat partition image name<br>
&gt;&gt;&gt; &gt; +SDIMG_VFAT =3D &quot;${IMGDEPLOYDIR}/${IMAGE_NAME}<wbr>.=
vfat&quot;<br>
&gt;&gt;&gt; &gt; +SDIMG_LINK_VFAT =3D &quot;${IMGDEPLOYDIR}/${IMAGE_LINK_<=
wbr>NAME}.vfat&quot;<br>
&gt;&gt;&gt; &gt; +<br>
&gt;&gt;&gt; &gt;=C2=A0 IMAGE_CMD_rpi-sdimg () {<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0# Align partitions<br>
&gt;&gt;&gt; &gt; @@ -145,6 +149,10 @@ IMAGE_CMD_rpi-sdimg () {<br>
&gt;&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0echo &quot;${IMAGE_NAME}=
&quot; &gt; ${WORKDIR}/image-version-info<br>
&gt;&gt;&gt; &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0mcopy -i ${WORKDIR}/boot=
.img -v ${WORKDIR}/image-version-info ::<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 # Deploy vfat partition<br>
&gt;&gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 cp ${WORKDIR}/boot.img ${SDI=
MG_VFAT}<br>
&gt;&gt;&gt; &gt; +=C2=A0 =C2=A0 =C2=A0 =C2=A0 ln -sf ${SDIMG_VFAT} ${SDIMG=
_LINK_VFAT}<br>
&gt;&gt;&gt; &gt; +<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; it is of use if I am not using u-boot ? is there any penalty ?=
<br>
<br>
</div></div>Other than just having another thing copied into tmp there is n=
o<br>
effect, even if you&#39;re not using u-boot.<br>
<span class=3D"gmail-"><br>
&gt;&gt;<br>
&gt;&gt; The stock firmware also uses a vfat partition, so this could just =
as<br>
&gt;&gt; easily hold those contents.<br>
&gt;<br>
&gt; yes it does, can it do the same operations like u-boot ?<br></span></b=
lockquote><div><br></div><div>I think what Khem is trying to say is if we d=
on&#39;t need it (because I don&#39;t think there is any use for it when us=
ing proprietary bootloader) can we deploy it only in the case of uboot boot=
loader section?</div><div><br></div><div>P.S.: Would really be helpful to p=
ush a PR to github too so I can merge it easier.=C2=A0</div><div><br></div>=
<div><div><div class=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr">=
<div>--</div>Andrei Gherzan</div></div></div></div></div><div>=C2=A0</div><=
/div></div></div>

--001a114082ac7d7adf0552792ad6--
