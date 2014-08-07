Return-Path: <modemtec@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD51FE0080D; Thu,  7 Aug 2014 05:34:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (modemtec[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.66 listed in list.dnswl.org]
Received: from mail-yh0-f66.google.com (mail-yh0-f66.google.com
	[209.85.213.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCF71E00801
	for <yocto@yoctoproject.org>; Thu,  7 Aug 2014 05:34:31 -0700 (PDT)
Received: by mail-yh0-f66.google.com with SMTP id f73so738418yha.1
	for <yocto@yoctoproject.org>; Thu, 07 Aug 2014 05:34:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=OPRxNfk9T2TjzMMOWrQyEFcq1c1/kiZ05ArbgOiC3MA=;
	b=Lh5C7Vr7StnB9fgbqa5KT9RXNgWYMIhY22mJWkf6IbkQQWoO+sFf+UY0sxFmrJVBbG
	6FbgCzZq0wgYLe3zzcSGBLMJ5UtaHvQAdk3TCJGbEgPN6KJ+699WCOVzfnpInyt06PbY
	rUFtUgYrhRa/O89c5069hqMSGqxWo/LblPXkGE7gb09v4VMXbU07sdk22PTCo4MhT3uy
	tni+AqVy8yKI7Sx0A1mSwf0LfbSCh28bok5nkLFZTo4TTcIRCHWUhrTIYA74npw9RZoU
	Bya/+2ViL3yFNKfpUzWFZzvoaKL+v6Z1obWrjzT4Qsy+4TOZTzKOsvmAg5lBBRYPGPYu
	1YLA==
MIME-Version: 1.0
X-Received: by 10.236.131.109 with SMTP id l73mr4326927yhi.96.1407414870813;
	Thu, 07 Aug 2014 05:34:30 -0700 (PDT)
Received: by 10.170.218.9 with HTTP; Thu, 7 Aug 2014 05:34:30 -0700 (PDT)
Date: Thu, 7 Aug 2014 14:34:30 +0200
Message-ID: <CAFJF=uzpu4Uk8J4hWbmhd1AT-sH0XxvoBk2o0zi_139r8ySFZw@mail.gmail.com>
From: Modemtec Modemtec <modemtec@gmail.com>
To: yocto@yoctoproject.org
Subject: (No subject)
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
X-List-Received-Date: Thu, 07 Aug 2014 12:34:42 -0000
Content-Type: multipart/alternative; boundary=20cf3005dd5a6d2ee40500094fce

--20cf3005dd5a6d2ee40500094fce
Content-Type: text/plain; charset=UTF-8

Hello,

I ran into an error during do_populate_sdk in meta-toolchain for machine
socfpga_cyclone5:

ERROR: packagegroup-cross-canadian-socfpga_cyclone5 not found in the base
feeds (i686-nativesdk noarch any all).
List packages for example:
binutils-cross-canadian-arm-2.24-r0@i686_nativesdk
binutils-cross-canadian-arm-dbg-2.24-r0@i686_nativesdk etc
ERROR: Function failed: do_populate_sdk
ERROR: Logfile of failure stored in:
/modemtec/linux/yocto-daisy/build-socfpga_cyclone5/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/meta-toolchain/1.0-r7/temp/log.do_populate_sdk.12635
ERROR: Task 7 (/modemtec/linux/yocto-daisy/meta/recipes-core/meta/
meta-toolchain.bb, do_populate_sdk) failed with exit code '1'

I tried to find an answer, but without success. I tried to compile
nativesdk-packagegroup-sdk-host and it was already compiled.

I was able to compile u-boot, kernel, kernel modules, dtb, rootfs and
everythink works quite well, but now I'm stuck with this and have no clue
how to solve this. If anyone knows how to make it working I would be very
glad.

Thank you very much

Lesek Franek ModemTec s.r.o.

Build Configuration:
BB_VERSION        = "1.22.0"
BUILD_SYS         = "i686-linux"
NATIVELSBSTRING   = "LinuxMint-17"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "socfpga_cyclone5"
DISTRO            = "poky"
DISTRO_VERSION    = "1.6.1"
TUNE_FEATURES     = "armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto
meta-yocto-bsp    = "daisy:810dd79720d607f1a31e73ff5f0862928fe06eb2"
meta-altera       =
"angstrom-v2014.06-yocto1.6:cbf58fc9d7df88fcb6ec6db9aa109533bf180d5e"
meta-socfpga_altera = "master:1bd7bca0877adcced73acfb4c4522b02c9244917"
meta-modemtec     = "master:e7316808ddc034bc3dcdedc8c1e0d2ab5ce3af22"
meta-oe
meta-webserver    = "daisy:dca466c074c9a35bc0133e7e0d65cca0731e2acf"
meta-qt5          = "daisy:0137274b13a568718e441f8f1c611a653db9f2f7"

--20cf3005dd5a6d2ee40500094fce
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I ran into an error d=
uring do_populate_sdk in meta-toolchain for machine socfpga_cyclone5:<br></=
div><div><br></div><div>ERROR: packagegroup-cross-canadian-socfpga_cyclone5=
 not found in the base feeds (i686-nativesdk noarch any all).<br>
</div><div>List packages for example: binutils-cross-canadian-arm-2.24-r0@i=
686_nativesdk binutils-cross-canadian-arm-dbg-2.24-r0@i686_nativesdk=C2=A0e=
tc</div><div><div>ERROR: Function failed: do_populate_sdk</div><div>ERROR: =
Logfile of failure stored in: /modemtec/linux/yocto-daisy/build-socfpga_cyc=
lone5/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/meta-toolchain/1.0-r7/tem=
p/log.do_populate_sdk.12635</div>
<div>ERROR: Task 7 (/modemtec/linux/yocto-daisy/meta/recipes-core/meta/<a h=
ref=3D"http://meta-toolchain.bb">meta-toolchain.bb</a>, do_populate_sdk) fa=
iled with exit code &#39;1&#39;</div></div><div><br></div><div>I tried to f=
ind an answer, but without success. I tried to compile nativesdk-packagegro=
up-sdk-host and it was already compiled.</div>
<div><br></div><div>I was able to compile u-boot, kernel, kernel modules, d=
tb, rootfs and everythink works quite well, but now I&#39;m stuck with this=
 and have no clue how to solve this. If anyone knows how to make it working=
 I would be very glad.</div>
<div><br></div><div>Thank you very much</div><div><br></div><div>Lesek Fran=
ek ModemTec s.r.o.</div><div><br></div><div><div>Build Configuration:</div>=
<div>BB_VERSION =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.22.0&quot;</div><div=
>BUILD_SYS =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;i686-linux&quot;</div>
<div>NATIVELSBSTRING =C2=A0 =3D &quot;LinuxMint-17&quot;</div><div>TARGET_S=
YS =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;arm-poky-linux-gnueabi&quot;</div><=
div>MACHINE =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;socfpga_cyclone5&q=
uot;</div><div>DISTRO =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;po=
ky&quot;</div>
<div>DISTRO_VERSION =C2=A0 =C2=A0=3D &quot;1.6.1&quot;</div><div>TUNE_FEATU=
RES =C2=A0 =C2=A0 =3D &quot;armv7a vfp neon&quot;</div><div>TARGET_FPU =C2=
=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;vfp-neon&quot;</div><div>meta =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div>meta-yocto =C2=A0 =C2=A0 =
=C2=A0 =C2=A0</div><div>meta-yocto-bsp =C2=A0 =C2=A0=3D &quot;daisy:810dd79=
720d607f1a31e73ff5f0862928fe06eb2&quot;</div>
<div>meta-altera =C2=A0 =C2=A0 =C2=A0 =3D &quot;angstrom-v2014.06-yocto1.6:=
cbf58fc9d7df88fcb6ec6db9aa109533bf180d5e&quot;</div><div>meta-socfpga_alter=
a =3D &quot;master:1bd7bca0877adcced73acfb4c4522b02c9244917&quot;</div><div=
>meta-modemtec =C2=A0 =C2=A0 =3D &quot;master:e7316808ddc034bc3dcdedc8c1e0d=
2ab5ce3af22&quot;</div>
<div>meta-oe =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div><div>meta-webser=
ver =C2=A0 =C2=A0=3D &quot;daisy:dca466c074c9a35bc0133e7e0d65cca0731e2acf&q=
uot;</div><div>meta-qt5 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;daisy:0=
137274b13a568718e441f8f1c611a653db9f2f7&quot;</div></div></div>

--20cf3005dd5a6d2ee40500094fce--
