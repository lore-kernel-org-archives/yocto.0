Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00742E005BB; Mon, 13 Jun 2016 15:01:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B683E0059B
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2016 15:01:27 -0700 (PDT)
Received: by mail-io0-f175.google.com with SMTP id 5so132167081ioy.1
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2016 15:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc;
	bh=yE+tKsaXnHCI86FJuJIDyn2rPdpSKKCxzM8APkkoUpE=;
	b=iA7pyAe4SZrE0S/T0L/DldBDjmDfIWHTsTuFQJc9EsuwHihRiw1b+nXh/PZvkL8gEG
	h/PoW8RKYgkqJQNwuyM1/oZ8Hd+pMOUE0wqK2D8O2yO5P+GEC6LInnQ43hGDyd81uuCC
	PaC73gCdPpEPSEJ/inGrwraU4hPXA33hgzmD0EzqpMQtGmD3KFaYlhsZ/rV97ovZrC7T
	rzG0SQeV3MkYPoxDOTxEXUaORYeKJFGqDhbMrbpf7mt0mtRNUsqSv9OupWAh1amPI7y8
	E6JUx/LJCmdyN7K1NEHydR+SBDKOOD8btQWlTDQzpzQ/Jw+/Ahhc2C/JalfgjOWRq/IL
	adaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
	:date:message-id:subject:to:cc;
	bh=yE+tKsaXnHCI86FJuJIDyn2rPdpSKKCxzM8APkkoUpE=;
	b=NVP1BZeKkDCSjOm6F69vcPdcR71t69Y54qDfJuSHRIhCotHj536A5tg4t9XckvL/+S
	LR75N2XVe/LZDTOcB7w9t1zyDBFvxtGTzbWe6ZcWYLVTJrG8pdWMbzzMsjhjpHkeM+Fy
	9cvNImdvva4RVBNIpwP2I6/ZxfI9qJmlHjG2Y5vhSz/5TCi9GMfZj0oiQxuwngS6dtg7
	O8Cgvi/P/z5YPcrKBfBhnrexvl3DugDxTl1fYanzBElZ2DTBlONfxbm2H8Ccg07E0nww
	yOGaRtSI1iLhS62FHctqVacKex94IArI3JNqR1eXew7vIbbPJD401VFm0YnImG3Ujz5e
	i3ow==
X-Gm-Message-State: ALyK8tIqVh0JY2WTBlB9KWQ+PW99xNiPXE6mffGAdqufKsmHFXETyxy/0bx3dQgvrKSKfNU+XTMDZrDgbDvOHg==
X-Received: by 10.107.131.212 with SMTP id n81mr26247524ioi.126.1465855287399; 
	Mon, 13 Jun 2016 15:01:27 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.130.66 with HTTP; Mon, 13 Jun 2016 15:01:08 -0700 (PDT)
In-Reply-To: <f732c861dc8642279465a6e9707f8b83@BN3PR97MB0132.062d.mgd.msft.net>
References: <f732c861dc8642279465a6e9707f8b83@BN3PR97MB0132.062d.mgd.msft.net>
From: Christopher Larson <clarson@kergoth.com>
Date: Mon, 13 Jun 2016 15:01:08 -0700
X-Google-Sender-Auth: kcQXkpG3euGASImsuPO8MEpSgz4
Message-ID: <CABcZANkeE_RumUN=6D8n8zFQW8hEb-nRQgXBbc5ZMPkZniPLjA@mail.gmail.com>
To: Jeffrey D Boyer <Jeffrey.D.Boyer@jci.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Mounting USB drives on a "read-only-rootfs" based system
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
X-List-Received-Date: Mon, 13 Jun 2016 22:01:32 -0000
Content-Type: multipart/alternative; boundary=001a113ec32eb29eca05353007c3

--001a113ec32eb29eca05353007c3
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Afaik usb storage is already automounted by udev on /run/media/, so there's
no need to use /media for that purpose.

On Mon, Jun 13, 2016 at 2:22 PM, Jeffrey D Boyer <Jeffrey.D.Boyer@jci.com>
wrote:

> Hello,
>
>
>
> New to the list here, so I=E2=80=99m sorry if this question has been aske=
d before,
> but I couldn=E2=80=99t find a direct answer to it.
>
>
>
> I have a yocto image that was built using the following bb script line:
> IMAGE_FEATURES +=3D " read-only-rootfs".
>
>
>
> As this image eventually resides on a static flash device, it must be
> read-only.  However, the system hardware supports removable media (SD car=
d
> and USB drives), and I=E2=80=99d like to be able to mount and write to th=
ose
> removable drives / partitions for data logging purposes.  What needs to b=
e
> done in order to make the /media directory auto-mountable when a
> =E2=80=9Cread-only=E2=80=9D image is specified by the build script?
>
>
>
> Thanks.
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


--=20
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a113ec32eb29eca05353007c3
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Afaik usb storage is already automounted by udev on /run/m=
edia/, so there&#39;s no need to use /media for that purpose.<br><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Mon, Jun 13, 2016 at 2:2=
2 PM, Jeffrey D Boyer <span dir=3D"ltr">&lt;<a href=3D"mailto:Jeffrey.D.Boy=
er@jci.com" target=3D"_blank">Jeffrey.D.Boyer@jci.com</a>&gt;</span> wrote:=
<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div>
<p class=3D"MsoNormal">Hello,<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">New to the list here, so I=E2=80=99m sorry if this q=
uestion has been asked before, but I couldn=E2=80=99t find a direct answer =
to it.=C2=A0
<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I have a yocto image that was built using the follow=
ing bb script line: IMAGE_FEATURES +=3D &quot; read-only-rootfs&quot;.=C2=
=A0
<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">As this image eventually resides on a static flash d=
evice, it must be read-only.=C2=A0 However, the system hardware supports re=
movable media (SD card and USB drives), and I=E2=80=99d like to be able to =
mount and write to those removable drives / partitions
 for data logging purposes.=C2=A0 What needs to be done in order to make th=
e /media directory auto-mountable when a =E2=80=9Cread-only=E2=80=9D image =
is specified by the build script?<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Thanks.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div cla=
ss=3D"gmail_signature" data-smartmail=3D"gmail_signature">Christopher Larso=
n<br>clarson at kergoth dot com<br>Founder - BitBake, OpenEmbedded, OpenZau=
rus<br>Maintainer - Tslib<br>Senior Software Engineer, Mentor Graphics</div=
>
</div></div>

--001a113ec32eb29eca05353007c3--
