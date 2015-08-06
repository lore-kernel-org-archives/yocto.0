Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E21AAE009B3; Wed,  5 Aug 2015 20:59:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f48.google.com (mail-pa0-f48.google.com
	[209.85.220.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F04CEE009EC
	for <yocto@yoctoproject.org>; Wed,  5 Aug 2015 20:59:58 -0700 (PDT)
Received: by pabxd6 with SMTP id xd6so34277044pab.2
	for <yocto@yoctoproject.org>; Wed, 05 Aug 2015 20:59:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=8X9Zu+j1myEOmRuBX3mH8zPU+Gf2Kw1jlWjEReYsWfE=;
	b=zbhu5RLnGP79UFPSIyF88KPWkI1XqrsG2DQowpGhu4m9RELWTuAuLwNBOZsu8e/T8G
	d4m8ruNMQ1Uk2rZUc+pQXBxbii6niM9gERXG3pet8YN8l+wRF+2gug4UKlYP2y/W8o+D
	qAD5VDa6OjW2P3a5hLmBxbb1K8XF5OXW2Pa2TpqDAQlyc0qtTA78SvVbm3XfjlHYY2ca
	UJDI8QTeF+iDv3cSmweNGp3eImucaB9VCIilnhwgFF1MRDiv9QZCyfMWFtPbHuIH6pDN
	ElKcWsZb562ez9rmSPz9WD3cOezuRkb4x06bYK4CWLOuJQrBSH0Vh17swmRAi2j/PhZJ
	wNdA==
X-Received: by 10.68.193.169 with SMTP id hp9mr27071764pbc.39.1438833598114;
	Wed, 05 Aug 2015 20:59:58 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:ec69:af94:a7e0:6a60?
	([2601:646:8601:4580:ec69:af94:a7e0:6a60])
	by smtp.gmail.com with ESMTPSA id q6sm4616266pdp.14.2015.08.05.20.59.57
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 05 Aug 2015 20:59:57 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2104\))
X-Pgp-Agent: GPGMail 2.5
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CALH0Xhn6OnMMcQoH=XZQVzv+nVDjTkw0Ggrfxb93x7TVGKHAeQ@mail.gmail.com>
Date: Wed, 5 Aug 2015 20:59:52 -0700
Message-Id: <85A21938-F24C-4C7C-A6A0-1429F9860E0C@gmail.com>
References: <CALH0Xhn6OnMMcQoH=XZQVzv+nVDjTkw0Ggrfxb93x7TVGKHAeQ@mail.gmail.com>
To: Dalton Fury <daltonfury42@gmail.com>
X-Mailer: Apple Mail (2.2104)
Cc: yocto@yoctoproject.org
Subject: Re: How to flash core-image-sato to a Nvidia Jetson TK1?
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
X-List-Received-Date: Thu, 06 Aug 2015 03:59:59 -0000
X-Groupsio-MsgNum: 25904
Content-Type: multipart/signed;
	boundary="Apple-Mail=_F4E76F93-08FF-43C7-B2C5-34BFC66EC6FB";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_F4E76F93-08FF-43C7-B2C5-34BFC66EC6FB
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_0D1ADB9D-376C-4126-96EC-6ACAB4CBEC2D"

--Apple-Mail=_0D1ADB9D-376C-4126-96EC-6ACAB4CBEC2D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Aug 3, 2015, at 11:15 AM, Dalton Fury <daltonfury42@gmail.com> =
wrote:
>=20
> Hi,
>=20
> I am a hobbyist, and liked yocto very much since I used in on an old =
Pandaboard ES. Now I got my hands on a Nvidia Jetson TK1, and want to =
get a yocto running on it. I intend to use it for heavy image processing =
and I prefer not to do it with the Ubuntu which comes with it loaded =
with GUI and Unity and all. So I build the image, but could not find any =
information on how to flash it to the eMMC on the board.
>=20
> Nvidia provides scripts for doing this. The process is as follows:
>=20
> 1) Download the driver package and extract it.
>=20
> 2) Download the sample rootfs and extract it to `rootfs` folder in =
where the driver package is extracted.
>=20
> 3) Run the apply_binaries.sh script. Upon inspecting the script, I =
found that it copies NVIDIA user space components, Nvidia firmware =
files, BSP test tools, gst test applications, create a lot of symbolic =
links within the rootfs extracted to the 'rootfs' folder. It also places =
the firmwares and kernel modules, and also copies some configuration =
files for the boot loader(U-Boot).
>=20
> 4) Run flash.sh.
>=20
> What I did is to copy the rootfs that was made with yocto, and =
entirely skip Step 3 assuming that all the necessary software is already =
made with yocto as a result of adding the BSP. This attempt of course, =
failed. Thought the kernel booted, it froze halfway. No error message. =
Just a flack screen with a while "_" on the top left corner.
>=20
> This is the bsp I used: https://github.com/kraj/meta-jetson-tk1 =
<https://github.com/kraj/meta-jetson-tk1>
>=20
> This is the guide I used as reference: =
http://elinux.org/Tegra/Downstream_SW/Gentoo_From_eMMC =
<http://elinux.org/Tegra/Downstream_SW/Gentoo_From_eMMC>
>=20
> If anyone has experience performing this(i bet you do), please help me =
out. Thanks.

I have booted Angstrom XFCE-nm-image on it from SD card. Firstly you =
need to flash new kernel and also modify the boot loader arguments so it =
boots from SD card first.
all instructions to update the boot loader cmdline and kernel are =
documented

see =
https://cyclicredundancy.wordpress.com/2014/05/10/flashing-the-rootfs-on-a=
-nvidia-jetson-tk1/ =
<https://cyclicredundancy.wordpress.com/2014/05/10/flashing-the-rootfs-on-=
a-nvidia-jetson-tk1/>

you might need

sudo ./flash.sh -S 14580MiB jetson-tk1 mmcblk0p1


> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_0D1ADB9D-376C-4126-96EC-6ACAB4CBEC2D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dus-ascii"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><br class=3D""><div><blockquote type=3D"cite" class=3D""><div =
class=3D"">On Aug 3, 2015, at 11:15 AM, Dalton Fury &lt;<a =
href=3D"mailto:daltonfury42@gmail.com" =
class=3D"">daltonfury42@gmail.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><div dir=3D"ltr" =
class=3D"">Hi,<div class=3D""><br class=3D""></div><div class=3D"">I am =
a hobbyist, and liked yocto very much since I used in on an old =
Pandaboard ES. Now I got my hands on a Nvidia Jetson TK1, and want to =
get a yocto running on it. I intend to use it for heavy image processing =
and I prefer not to do it with the Ubuntu which comes with it loaded =
with GUI and Unity and all. So I build the image, but could not find any =
information on how to flash it to the eMMC on the board.&nbsp;</div><div =
class=3D""><br class=3D""></div><div class=3D"">Nvidia provides scripts =
for doing this. The process is as follows:</div><div class=3D""><br =
class=3D""></div><div class=3D"">1) Download the driver package and =
extract it.</div><div class=3D""><br class=3D""></div><div class=3D"">2) =
Download the sample rootfs and extract it to `rootfs` folder in where =
the driver package is extracted.</div><div class=3D""><br =
class=3D""></div><div class=3D"">3) Run the apply_binaries.sh script. =
Upon inspecting the script, I found that it copies NVIDIA user space =
components, Nvidia firmware files, BSP test tools, gst test =
applications, create a lot of symbolic links within the rootfs extracted =
to the 'rootfs' folder. It also places the&nbsp;firmwares and kernel =
modules, and also copies some configuration files for the boot =
loader(U-Boot).</div><div class=3D""><br class=3D""></div><div =
class=3D"">4) Run flash.sh.</div><div class=3D""><br class=3D""></div><div=
 class=3D"">What I did is to copy the rootfs that was made with yocto, =
and entirely skip Step 3 assuming that all the necessary software is =
already made with yocto as a result of adding the BSP. This attempt of =
course, failed. Thought the kernel booted, it froze halfway. No error =
message. Just a flack screen with a while "_" on the top left =
corner.</div><div class=3D""><br class=3D""></div><div class=3D"">This =
is the bsp I used:&nbsp;<a =
href=3D"https://github.com/kraj/meta-jetson-tk1" =
class=3D"">https://github.com/kraj/meta-jetson-tk1</a></div><div =
class=3D""><br class=3D""></div><div class=3D"">This is the guide I used =
as reference:&nbsp;<a =
href=3D"http://elinux.org/Tegra/Downstream_SW/Gentoo_From_eMMC" =
class=3D"">http://elinux.org/Tegra/Downstream_SW/Gentoo_From_eMMC</a></div=
><div class=3D""><br class=3D""></div><div class=3D"">If anyone has =
experience performing this(i bet you do), please help me out. =
Thanks.&nbsp;</div></div></div></blockquote><div><br =
class=3D""></div><div>I have booted Angstrom XFCE-nm-image on it from SD =
card. Firstly you need to flash new kernel and also modify the boot =
loader arguments so it boots from SD card first.</div><div>all =
instructions to update the boot loader cmdline and kernel are =
documented</div><div><br class=3D""></div><div>see&nbsp;<a =
href=3D"https://cyclicredundancy.wordpress.com/2014/05/10/flashing-the-roo=
tfs-on-a-nvidia-jetson-tk1/" =
class=3D"">https://cyclicredundancy.wordpress.com/2014/05/10/flashing-the-=
rootfs-on-a-nvidia-jetson-tk1/</a></div><div><br class=3D""></div><div>you=
 might need&nbsp;</div><div><br class=3D""></div><div>sudo =
./flash.sh&nbsp;-S 14580MiB&nbsp;jetson-tk1 mmcblk0p1</div><div><br =
class=3D""></div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">
-- <br class=3D"">_______________________________________________<br =
class=3D"">yocto mailing list<br class=3D""><a =
href=3D"mailto:yocto@yoctoproject.org" =
class=3D"">yocto@yoctoproject.org</a><br =
class=3D"">https://lists.yoctoproject.org/listinfo/yocto<br =
class=3D""></div></blockquote></div><br class=3D""></body></html>=

--Apple-Mail=_0D1ADB9D-376C-4126-96EC-6ACAB4CBEC2D--

--Apple-Mail=_F4E76F93-08FF-43C7-B2C5-34BFC66EC6FB
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlXC27wACgkQuwUzVZGdMxTjRwCeJ1CqMV8HX0gTPeuD/1SlDecK
6KIAnRVi996nA5Jnvx50zFbZSGZI5NBd
=Wz3s
-----END PGP SIGNATURE-----

--Apple-Mail=_F4E76F93-08FF-43C7-B2C5-34BFC66EC6FB--
