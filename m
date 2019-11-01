Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B92CDE00D90; Fri,  1 Nov 2019 11:04:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com
	[209.85.167.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE07FE00E22
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2019 11:04:12 -0700 (PDT)
Received: by mail-lf1-f54.google.com with SMTP id j5so7827847lfh.10
	for <yocto@yoctoproject.org>; Fri, 01 Nov 2019 11:04:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=iLkiiZlkfxpiQk4L59dcfQOdXugaCT7tuqLrnugecBE=;
	b=juZSKPWbv4FLogAiabJVATyL7+a9eLSSo5+Hj7UtY9yVJrQUH+e5REUYL3HP+LcIn8
	JpDLfpoptFKraw+4oZlcGmt0ztHP03FlTdMzuqZB6BDaSZ9QnYeHXCKOWb9PI9eb+3QQ
	/LCs3JchrO4lHm1lEwc1OyzjQrAlEMDhEI4Z6IPuTPlbmyWOkriJz3/kr2/5E/stx4/6
	oABhJpjQc/wcjcgOmUMKp/qZW81FLjGPyZNLmUS0if8omAYTBjJhubspYS9gnmoOiWd4
	OFmaYe6r+2XlX2LO+4pjfU1f7x/iDP24oEM1fcfyKkNxtWp4dJfjtRKtRVwEZWfIQhOJ
	d7eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=iLkiiZlkfxpiQk4L59dcfQOdXugaCT7tuqLrnugecBE=;
	b=cttvR7uN0McNoxfnWqY3Dc49tOtkbXrot9+KiXkyZV1g+VLEQYeVOl//RvSeYPfOrW
	J4KOyMzHS9xu9e1IQxA/WR7aL2EmUPHr3i1RC8v2LqB/aIyvYldwQKPTLhRAS7k+fT0f
	OtHIY/D7Wtv7msfsj08/l1nkND/24wW06Spu08TwGCgfSBmjSykkCe3cIrZWhc6mWFo9
	XKklTxk6PVXdNzpRI53xTX1Wn/4tBxrR1RLUrst20elkw/q5v5Rw2NnmrAz3JJWnHT0V
	bXez3oKf82AJA8QFrOkcLxGEhCsahIqGaJwFPEggkoU9rBk9hDYw/ZqlfZejgzT5xiFC
	CaJw==
X-Gm-Message-State: APjAAAUXDjD4w96hEqxLVonpfcunnakWAe2y/r8dvEgxoH4UXaPF3cHX
	9z/4KXsW6V3GWrz4RPnosCIu98lP/8lPUZKXvXX5/Yomz/U=
X-Google-Smtp-Source: APXvYqzZ8jrnXNBqlIhCKowZ+h9OIh14oecK3r05He2LWi4Mst0O5siqWYe99Tmz0AGfL114FB+XjqF98/MVNNZMKGw=
X-Received: by 2002:a19:f608:: with SMTP id x8mr8517504lfe.112.1572631450338; 
	Fri, 01 Nov 2019 11:04:10 -0700 (PDT)
MIME-Version: 1.0
References: <2d1e4508-35e4-3754-3592-6c555e01a177@sri.com>
	<b796ff6c-a14c-ece3-40f5-713241386cda@intel.com>
	<CY4PR09MB1207D3F1962AADEB9D57E25C9A620@CY4PR09MB1207.namprd09.prod.outlook.com>
In-Reply-To: <CY4PR09MB1207D3F1962AADEB9D57E25C9A620@CY4PR09MB1207.namprd09.prod.outlook.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Fri, 1 Nov 2019 19:03:59 +0100
Message-ID: <CAP71WjzK7PnbkjBxe5En+wgSVgcdSU2WTSsBUg66ojGfWDgFpQ@mail.gmail.com>
To: Aaron Solochek <aaron.solochek@sri.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: visual studio code packages or building instructions?
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
X-List-Received-Date: Fri, 01 Nov 2019 18:04:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 1, 2019 at 6:51 PM Aaron Solochek <aaron.solochek@sri.com> wrot=
e:
>
> Well I grabbed the .deb that one of those links mentioned and converted i=
t to an rpm, but of course there are a ton of unmet dependencies, so I migh=
t have to build it anyway.
>
> I found these instructions for building it, which are pinned to an older =
version (which is probably fine)
>
> https://github.com/futurejones/code-oss-aarch64
>
> I have gotten most of the dependencies built with bitbake, except for the=
  x11 stuff:
>
> ERROR: Nothing RPROVIDES 'packagegroup-core-x11' (but /home/aarons/sri/bu=
llitt/nxp/imx-yocto-bsp/sources/meta-fsl-bsp-release/imx/meta-sdk/dynamic-l=
ayers/qt5-layer/recipes-fsl/images/fsl-image-qt5-validation-imx.bb RDEPENDS=
 on or otherwise requires it)
> packagegroup-core-x11 was skipped: missing required distro feature 'x11' =
(not in DISTRO_FEATURES)
> NOTE: Runtime target 'packagegroup-core-x11' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['packagegroup-core-x11']
> ERROR: Required build target 'fsl-image-qt5-validation-imx' has no builda=
ble providers.
> Missing or unbuildable dependency chain was: ['fsl-image-qt5-validation-i=
mx', 'packagegroup-core-x11']
>
> But this is my local.conf:
>
> MACHINE ??=3D 'imx8mqevk'
> DISTRO ?=3D 'fsl-imx-wayland'

The name of the distro most likely means that this distro is doing
DISTRO_FEATURES_remove =3D "x11"

which would result in the 'error' you are seeing. You should use a
distro which is compatible with X11 instead.

> PACKAGE_CLASSES ?=3D "package_rpm"
> EXTRA_IMAGE_FEATURES ?=3D "debug-tweaks"
> USER_CLASSES ?=3D "buildstats image-mklibs image-prelink"
> PATCHRESOLVE =3D "noop"
> BB_DISKMON_DIRS ??=3D "\
>     STOPTASKS,${TMPDIR},1G,100K \
>     STOPTASKS,${DL_DIR},1G,100K \
>     STOPTASKS,${SSTATE_DIR},1G,100K \
>     STOPTASKS,/tmp,100M,100K \
>     ABORT,${TMPDIR},100M,1K \
>     ABORT,${DL_DIR},100M,1K \
>     ABORT,${SSTATE_DIR},100M,1K \
>     ABORT,/tmp,10M,1K"
> PACKAGECONFIG_append_pn-qemu-native =3D " sdl"
> PACKAGECONFIG_append_pn-nativesdk-qemu =3D " sdl"
> CONF_VERSION =3D "1"
> #IMAGE_FEATURES_append =3D " package-management tools-sdk  x11-base x11"
> IMAGE_FEATURES +=3D "package-management"
> IMAGE_FEATURES +=3D "tools-sdk"
> IMAGE_FEATURES +=3D "x11-base"
> IMAGE_FEATURES +=3D "x11"

it fails because x11 is disable in DISTRO_FEATURES, not IMAGE_FEATURES.

>
>
> As you can see, I tried adding x11 both using IMAGE_FEATURES +=3D as well=
 as IMAGE_FEATURES_append (where I would then comment out the +=3D lines)
> Why is x11 never getting added to the DISTRO_FEATURES? I also tried putti=
ng x11 in DISTRO_FEATURES and DISTRO_FEATURES_append.

_remove can't be un-done.

>
> What is the correct thing here?
>
> I also installed yarn according to those instructions, which worked (it s=
aid it was successfully installed) however when I tried to use it I got an =
error about not finding gulp:
>
> # yarn watch
> yarn run v1.19.1
> $ gulp watch --max_old_space_size=3D4095
> /bin/sh: gulp: command not found
> error Command failed with exit code 127.
>
> I don't know anything about yarn. Is gulp another package I need to insta=
ll, or should it be part of yarn?
>
> Thank you.
>
> -Aaron
>
> -----Original Message-----
> From: Ross Burton <ross.burton@intel.com>
> Sent: Friday, November 1, 2019 12:52 PM
> To: Aaron Solochek <aaron.solochek@sri.com>; yocto@yoctoproject.org
> Subject: Re: [yocto] visual studio code packages or building instructions=
?
>
> On 01/11/2019 16:35, Aaron Solochek wrote:
> > I would like to get visual studio code on my NXP i.MX8. If someone is
> > aware of a aarch64 rpm of it, that would be the easiest.
> > Alternatively, if anyone knows how to build it using bitbake, I can bui=
ld it myself.
>
> Well Microsoft only make x86 binaries available:
>
> https://gcc02.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fcode.=
visualstudio.com%2F%23alt-downloads&amp;data=3D01%7C01%7Caaron.solochek%40s=
ri.com%7Ca9ecc8ecbf4e4aeb6bf208d75eebd148%7C40779d3379c44626b8bf140c4d5e907=
5%7C1&amp;sdata=3DmSWDKRoSwEfy2SiGAgOdcKZvcrvofVPqriDnu5Pd3bI%3D&amp;reserv=
ed=3D0
>
> So you'll have to follow the instructions at
> https://gcc02.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgithu=
b.com%2FMicrosoft%2Fvscode%2Fwiki%2FHow-to-Contribute%23build-and-run&amp;d=
ata=3D01%7C01%7Caaron.solochek%40sri.com%7Ca9ecc8ecbf4e4aeb6bf208d75eebd148=
%7C40779d3379c44626b8bf140c4d5e9075%7C1&amp;sdata=3D3WHuWNu9ngP%2Fbymit1Ugn=
uBawO1b123F1LdwTuHot0U%3D&amp;reserved=3D0
>
> They use Yarn, so you'll have to package that first.
>
> Comments like
> https://gcc02.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fgithu=
b.com%2Fmicrosoft%2Fvscode%2Fissues%2F6442%23issuecomment-509605292&amp;dat=
a=3D01%7C01%7Caaron.solochek%40sri.com%7Ca9ecc8ecbf4e4aeb6bf208d75eebd148%7=
C40779d3379c44626b8bf140c4d5e9075%7C1&amp;sdata=3DF0XX9b%2FADWjPJbeis%2FgIl=
yRunHbb4zpj6Mw3ac1Cs%2Fw%3D&amp;reserved=3D0
> on the bug asking for RPi support isn't exactly encouraging though.
>
> Ross
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

