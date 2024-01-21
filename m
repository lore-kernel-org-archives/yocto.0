Return-Path: <stephen@radxa.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9845BC47422
	for <webhook@archiver.kernel.org>; Sun, 21 Jan 2024 09:51:52 +0000 (UTC)
Subject: Re: [yocto] [meta-rockchip] [PATCH] machines: correct rk3066/rk3188/rk3288 kernel devicetree path
To: Trevor Woerner <twoerner@gmail.com>,yocto@lists.yoctoproject.org
From: "Stephen Chen" <stephen@radxa.com>
X-Originating-Location: London, England, GB (138.68.151.90)
X-Originating-Platform: Mac Firefox 121
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sun, 21 Jan 2024 01:51:47 -0800
References: <20240121045243.GA32674@localhost>
In-Reply-To: <20240121045243.GA32674@localhost>
Message-ID: <9257.1705830707849294512@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="I9OoYKLYsZjZOnmK2Oou"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 21 Jan 2024 09:51:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62213

--I9OoYKLYsZjZOnmK2Oou
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi

>=20
> Perhaps also take a look the email thread here:
> https://lists.yoctoproject.org/g/yocto/topic/101728482#61210

This patch fixes kernel build error like this.

Run command "MACHINE=3Drock2-square bitbake linux-yocto" and get the error.

|=C2=A0=C2=A0 SYNC=C2=A0=C2=A0=C2=A0 include/config/auto.conf
|=C2=A0=C2=A0 GEN=C2=A0=C2=A0=C2=A0=C2=A0 Makefile
| make[2]: *** No rule to make target 'arch/arm/boot/dts/rk3288-rock2-squar=
e.dtb'.=C2=A0 Stop.

You can run "MACHINE=3Dtinker-board bitbake linux-yocto" to test it.

>=20
> When I build I get:
>=20
> |
> /opt/oe/configs/z/build-master/tinker-board/layers/openembedded-core/scri=
pts/lib/wic/engine.py:362:
> SyntaxWarning: invalid escape sequence '\/'
> | abs_path =3D re.sub('\/\/+', '/', path)
> | INFO: Creating image(s)...
> |
> | ERROR: _exec_cmd: install -m 0644 -D
> /z/build-master/tinker-board/build/tmp-glibc/deploy/images/tinker-board/r=
ockchip/rk3288-tinker.dtb
> /z/build-master/tinker-board/build/tmp-glibc/work/tinker_board-oe-linux-g=
nueabi/core-image-base/1.0/tmp-wic/boot.6/rockchip/rk3288-tinker.dtb
> returned '1' instead of 0
> | output: install: cannot stat
> '/z/build-master/tinker-board/build/tmp-glibc/deploy/images/tinker-board/=
rockchip/rk3288-tinker.dtb':
> No such file or directory
> |
> | WARNING:
> /z/build-master/tinker-board/build/tmp-glibc/work/tinker_board-oe-linux-g=
nueabi/core-image-base/1.0/temp/run.do_image_wic.449:160
> exit 1 from 'BUILDDIR=3D"/z/build-master/tinker-board/build" PSEUDO_UNLOA=
D=3D1
> wic create "$wks" --vars
> "/z/build-master/tinker-board/build/tmp-glibc/sysroots/tinker-board/imgda=
ta/"
> -e "core-image-base" -o "$build_wic/" -w "$tmp_wic"'
> | WARNING: Backtrace (BB generated script):
> | #1: do_image_wic,
> /z/build-master/tinker-board/build/tmp-glibc/work/tinker_board-oe-linux-g=
nueabi/core-image-base/1.0/temp/run.do_image_wic.449,
> line 160
> | #2: main,
> /z/build-master/tinker-board/build/tmp-glibc/work/tinker_board-oe-linux-g=
nueabi/core-image-base/1.0/temp/run.do_image_wic.449,
> line 177
> ERROR: Task
> (/opt/oe/configs/z/build-master/tinker-board/layers/openembedded-core/met=
a/recipes-core/images/core-image-base.bb:do_image_wic)
> failed with exit code '1'

I think another patch would fix it.

>=20
> diff --git a/conf/machine/include/rockchip-wic.inc
> b/conf/machine/include/rockchip-wic.inc
> index 635288c..b4f4226 100644
> --- a/conf/machine/include/rockchip-wic.inc
> +++ b/conf/machine/include/rockchip-wic.inc
> @@ -13,7 +13,7 @@ WKS_FILE_DEPENDS ?=3D " \
> "
> IMAGE_BOOT_FILES =3D " \
> ${KERNEL_IMAGETYPE} \
> -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ${@bb.utils.contains('KERNEL_IMAGET=
YPE', 'fitImage', '',
> '${KERNEL_DEVICETREE}', d)} \
> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ${@bb.utils.contains('KERNEL_IMAGET=
YPE', 'fitImage', '',
> '${SOC_FAMILY}*.dtb', d)} \
> "
>=20
> # use the first-defined <baud>;<device> pair in SERIAL_CONSOLES

--I9OoYKLYsZjZOnmK2Oou
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi<br /><br />
<blockquote>Perhaps also take a look the email thread here:<br /><a href=3D=
"https://lists.yoctoproject.org/g/yocto/topic/101728482#61210" target=3D"_b=
lank" rel=3D"noopener">https://lists.yoctoproject.org/g/yocto/topic/1017284=
82#61210</a></blockquote>
This patch fixes kernel build error like this.<br /><br />Run command "MACH=
INE=3Drock2-square bitbake linux-yocto" and get the error.<br /><br />|&nbs=
p;&nbsp; SYNC&nbsp;&nbsp;&nbsp; include/config/auto.conf<br />|&nbsp;&nbsp;=
 GEN&nbsp;&nbsp;&nbsp;&nbsp; Makefile<br />| make[2]: *** No rule to make t=
arget 'arch/arm/boot/dts/rk3288-rock2-square.dtb'.&nbsp; Stop.<br /><br />Y=
ou can run "MACHINE=3Dtinker-board bitbake linux-yocto" to test it.<br /><b=
r />
<blockquote>When I build I get:<br /><br />| /opt/oe/configs/z/build-master=
/tinker-board/layers/openembedded-core/scripts/lib/wic/engine.py:362: Synta=
xWarning: invalid escape sequence '\/'<br />| abs_path =3D re.sub('\/\/+', =
'/', path)<br />| INFO: Creating image(s)...<br />| <br />| ERROR: _exec_cm=
d: install -m 0644 -D /z/build-master/tinker-board/build/tmp-glibc/deploy/i=
mages/tinker-board/rockchip/rk3288-tinker.dtb /z/build-master/tinker-board/=
build/tmp-glibc/work/tinker_board-oe-linux-gnueabi/core-image-base/1.0/tmp-=
wic/boot.6/rockchip/rk3288-tinker.dtb returned '1' instead of 0<br />| outp=
ut: install: cannot stat '/z/build-master/tinker-board/build/tmp-glibc/depl=
oy/images/tinker-board/rockchip/rk3288-tinker.dtb': No such file or directo=
ry<br />| <br />| WARNING: /z/build-master/tinker-board/build/tmp-glibc/wor=
k/tinker_board-oe-linux-gnueabi/core-image-base/1.0/temp/run.do_image_wic.4=
49:160 exit 1 from 'BUILDDIR=3D"/z/build-master/tinker-board/build" PSEUDO_=
UNLOAD=3D1 wic create "$wks" --vars "/z/build-master/tinker-board/build/tmp=
-glibc/sysroots/tinker-board/imgdata/" -e "core-image-base" -o "$build_wic/=
" -w "$tmp_wic"'<br />| WARNING: Backtrace (BB generated script):<br />| #1=
: do_image_wic, /z/build-master/tinker-board/build/tmp-glibc/work/tinker_bo=
ard-oe-linux-gnueabi/core-image-base/1.0/temp/run.do_image_wic.449, line 16=
0<br />| #2: main, /z/build-master/tinker-board/build/tmp-glibc/work/tinker=
_board-oe-linux-gnueabi/core-image-base/1.0/temp/run.do_image_wic.449, line=
 177<br />ERROR: Task (/opt/oe/configs/z/build-master/tinker-board/layers/o=
penembedded-core/meta/recipes-core/images/core-image-base.bb:do_image_wic) =
failed with exit code '1'</blockquote>
I think another patch would fix it.<br />
<blockquote>diff --git a/conf/machine/include/rockchip-wic.inc b/conf/machi=
ne/include/rockchip-wic.inc<br />index 635288c..b4f4226 100644<br />--- a/c=
onf/machine/include/rockchip-wic.inc<br />+++ b/conf/machine/include/rockch=
ip-wic.inc<br />@@ -13,7 +13,7 @@ WKS_FILE_DEPENDS ?=3D " \<br />&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "<br />&nbsp;IMAGE_BOOT_FILES =3D " \<br /=
>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${KERNEL_IMAGETYPE} \<br />-&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ${@bb.utils.contains('KERNEL_IMAGETYPE', =
'fitImage', '', '${KERNEL_DEVICETREE}', d)} \<br />+&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp; ${@bb.utils.contains('KERNEL_IMAGETYPE', 'fitImage', '', '${S=
OC_FAMILY}*.dtb', d)} \<br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; "<b=
r />&nbsp;<br />&nbsp;# use the first-defined &lt;baud&gt;;&lt;device&gt; p=
air in SERIAL_CONSOLES</blockquote>

--I9OoYKLYsZjZOnmK2Oou--

