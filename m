Return-Path: <dimtass@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66763E00D31; Mon,  3 Jun 2019 00:53:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dimtass[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.193 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f193.google.com (mail-oi1-f193.google.com
	[209.85.167.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E35FAE00C6A
	for <yocto@yoctoproject.org>; Mon,  3 Jun 2019 00:53:44 -0700 (PDT)
Received: by mail-oi1-f193.google.com with SMTP id m202so992468oig.6
	for <yocto@yoctoproject.org>; Mon, 03 Jun 2019 00:53:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=upzDlJhpK5CsP+HD7AViLI/2hW1CDT3UYr+w+5LSySM=;
	b=nSGxQKQpO6TBKV4YvOjrvUPdcVqbOzLYukOBcZYU/KSyPdNA+1pVIjOOs38RaeJZE1
	K48hGUX2VvQPfwrZzOCiU+TGCR4XW6B3OUqxrb/k9mBYAVQh/Pgsfpw4zuY6JufxmCRq
	lfNfYrptHB/fY2rQPyet1xB7sko3kSHPNJB489cX5nv2T7dPdQi2j7QWqzUHLGCcTxvo
	CaE4tz86G8pgObGZOHJ6Qu2RG/8G3P+wxrreikqneXsVhTAJ0kEH77j5z8g/QiS1XEl/
	UzRV+x2O6rLAd7R0C1BNzjaqdoMgUInG76sKPVoOyntp1QaaOBPKq5I9iRmCpXz0cRKl
	5KXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=upzDlJhpK5CsP+HD7AViLI/2hW1CDT3UYr+w+5LSySM=;
	b=oNSQF8OiDrNDJeNTQTjMMIRM4QvdBI3MO9tBrxzxDn02Lnyn3c19inXCCgzeR8Fzai
	GdgRMXOcUkCfY15HKOY1RUVdpJDE7plEu15EFoXvHIp3A+TGBFjLcNbjyzR189tN2NNs
	x5SEzhdz7z06qBYv94b4U1Ixn9xlslItWw0RI62A1vNxVHBWZrlILJlWawaOMGHsfJZt
	a5/+RBdvVb75TCaOw9v729csGmX7KYaP9/htJMLuJY7J8BHoZt6ITMtEvFlZ+Pa+3pI1
	yWc+leVfxXOKWJDKpBWnROGF0btvKTnctqXJKLR56HU6yoTygERA9lP69KcGFtGSAvgf
	NNyg==
X-Gm-Message-State: APjAAAV5SDpy6tf/raI/0PAaUHQLheaaFW9V1EVJ+3JYMf1pdXw/gNQc
	j1eWwKHNOb9T96oc6og648OddZcwg7Ry8iS1Q5w=
X-Google-Smtp-Source: APXvYqzkfPo7DeONcFFJVyBWBvY6bae2aBtu45ejJ6BVnCT4noFV6ihriNCU9HWcZfyk8COlaPYFnUQAy7N+EZv4fA8=
X-Received: by 2002:aca:e8c8:: with SMTP id f191mr168349oih.45.1559548424171; 
	Mon, 03 Jun 2019 00:53:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWTwG4oo=qJvbrx04zaTXRy8u1H6HLEGV_J7r25jpzSVOA@mail.gmail.com>
	<20190531132253.GC20781@bill-the-cat>
	<CAA=hcWQwSD4MLVJLbNz2nzv0SQAgMdkcnRPFfPCQN5NW+7XYhw@mail.gmail.com>
In-Reply-To: <CAA=hcWQwSD4MLVJLbNz2nzv0SQAgMdkcnRPFfPCQN5NW+7XYhw@mail.gmail.com>
From: Dimitris Tassopoulos <dimtass@gmail.com>
Date: Mon, 3 Jun 2019 09:53:33 +0200
Message-ID: <CACKFPN0fDvi=G624dXNnEdegitvJ4jDUS0QzoYGrNEvjAs411A@mail.gmail.com>
To: JH <jupiter.hce@gmail.com>
Cc: Tom Rini <trini@konsulko.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to extract files from wic.gz image?
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
X-List-Received-Date: Mon, 03 Jun 2019 07:53:45 -0000
Content-Type: multipart/alternative; boundary="000000000000d53535058a66a9ec"

--000000000000d53535058a66a9ec
Content-Type: text/plain; charset="UTF-8"

Hi JH,

I believe the most important feature of the wic images is to be able to
flash your SD card faster than just extract and dd the full image on the
SD card. For that reason you can use the bmap-tool which already supports
the gz  compression (as also .bz2). To do that you also need the bmap file
for this image. If it's not already there then you can add it your in your
image
like this:

IMAGE_FSTYPES += "wic.bmap"

(see also here:
https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#flashing-images-using-bmaptool
)

Then you can just run:

$ sudo bmaptool copy dev-image-20190528085324.rootfs.wic.gz /dev/sdX

and you copy the gz image on your SD much much faster.

Regards,
Dimitris

On Sat, Jun 1, 2019 at 12:40 PM JH <jupiter.hce@gmail.com> wrote:

> Thanks Zoran and Tom, I can use dd to install the image to SD card on
> IMX EVK, now I need to install the image to NAND flash of a customized
> IMX device via USB HID, it cannot use the dd, IMX provided UUU utility
> which I am new to it and I have to decompose the image to
> zImage-initramfs and  losetup -P does work, dd does not work either.
>
> $ losetup -P dev-image-20190528085324.rootfs.wic
> losetup: solar-dev-image-solarevk-20190518084330.rootfs.wic: failed to
> use device: No such device
>
> Thanks for your helps anyway.
>
> Kind regards,
>
> - jupiter
>
> On 5/31/19, Tom Rini <trini@konsulko.com> wrote:
> > On Fri, May 31, 2019 at 10:21:40PM +1000, JH wrote:
> >> Hi,
> >>
> >> What command and tools to extract files from Yocto / bitbake image
> >> such as dev-image-20190528085324.rootfs.wic.gz?
> >>
> >> I am using IMX UUU to install dev-image-20190528085324.rootfs.wic.gz
> >> to IMX, I was advised to extract the archive and use "uuu <script
> >> name>" or "uuu u-boot-dtb.imx" to get bootloader work first.
> >
> > A wic image is just another way of saying it's a raw disk image.
> > Decompress it, losetup -P (generally useful, but not needed this time)
> > and dd out the contents you want.
> >
> > --
> > Tom
> >
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000d53535058a66a9ec
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi JH,<div><br></div><div>I believe the most important fea=
ture of the wic images is to be able to</div><div>flash your SD card faster=
 than just extract and dd the full image on the</div><div>SD card. For that=
 reason you can use the bmap-tool which already supports</div><div>the gz=
=C2=A0 compression (as also .bz2). To do that you also need the bmap file</=
div><div>for this image. If it&#39;s not already there then you can add it =
your in your image</div><div>like this:</div><div><pre class=3D"gmail-liter=
allayout" style=3D"overflow:auto;color:rgb(51,51,51)">IMAGE_FSTYPES +=3D &q=
uot;wic.bmap&quot;</pre></div><div>(see also here:=C2=A0<a href=3D"https://=
www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#flashing-ima=
ges-using-bmaptool">https://www.yoctoproject.org/docs/current/mega-manual/m=
ega-manual.html#flashing-images-using-bmaptool</a>)</div><div><br></div><di=
v>Then you can just run:</div><div><br></div><div>$ sudo bmaptool copy=C2=
=A0dev-image-20190528085324.rootfs.wic.gz /dev/sdX</div><div><br></div><div=
>and you copy the gz image on your SD much much faster.</div><div><br></div=
><div>Regards,</div><div>Dimitris</div></div><br><div class=3D"gmail_quote"=
><div dir=3D"ltr" class=3D"gmail_attr">On Sat, Jun 1, 2019 at 12:40 PM JH &=
lt;<a href=3D"mailto:jupiter.hce@gmail.com">jupiter.hce@gmail.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Thanks Zor=
an and Tom, I can use dd to install the image to SD card on<br>
IMX EVK, now I need to install the image to NAND flash of a customized<br>
IMX device via USB HID, it cannot use the dd, IMX provided UUU utility<br>
which I am new to it and I have to decompose the image to<br>
zImage-initramfs and=C2=A0 losetup -P does work, dd does not work either.<b=
r>
<br>
$ losetup -P dev-image-20190528085324.rootfs.wic<br>
losetup: solar-dev-image-solarevk-20190518084330.rootfs.wic: failed to<br>
use device: No such device<br>
<br>
Thanks for your helps anyway.<br>
<br>
Kind regards,<br>
<br>
- jupiter<br>
<br>
On 5/31/19, Tom Rini &lt;<a href=3D"mailto:trini@konsulko.com" target=3D"_b=
lank">trini@konsulko.com</a>&gt; wrote:<br>
&gt; On Fri, May 31, 2019 at 10:21:40PM +1000, JH wrote:<br>
&gt;&gt; Hi,<br>
&gt;&gt;<br>
&gt;&gt; What command and tools to extract files from Yocto / bitbake image=
<br>
&gt;&gt; such as dev-image-20190528085324.rootfs.wic.gz?<br>
&gt;&gt;<br>
&gt;&gt; I am using IMX UUU to install dev-image-20190528085324.rootfs.wic.=
gz<br>
&gt;&gt; to IMX, I was advised to extract the archive and use &quot;uuu &lt=
;script<br>
&gt;&gt; name&gt;&quot; or &quot;uuu u-boot-dtb.imx&quot; to get bootloader=
 work first.<br>
&gt;<br>
&gt; A wic image is just another way of saying it&#39;s a raw disk image.<b=
r>
&gt; Decompress it, losetup -P (generally useful, but not needed this time)=
<br>
&gt; and dd out the contents you want.<br>
&gt;<br>
&gt; --<br>
&gt; Tom<br>
&gt;<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000d53535058a66a9ec--
