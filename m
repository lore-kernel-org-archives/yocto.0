Return-Path: <renato.mendes.pes@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1DF91C35274
	for <webhook@archiver.kernel.org>; Fri, 15 Dec 2023 15:14:05 +0000 (UTC)
Subject: Re: [yocto] Wireless interface (wlan) not shown on Raspberry Pi Zero W
To: Renato Mendes <renato.mendes.pes@gmail.com>,yocto@lists.yoctoproject.org
From: "Renato Mendes" <renato.mendes.pes@gmail.com>
X-Originating-Location: Petrópolis, Rio de Janeiro, BR (170.254.80.206)
X-Originating-Platform: Mac Chrome 120
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 15 Dec 2023 07:13:57 -0800
References: <16371.1702487095081210264@lists.yoctoproject.org>
In-Reply-To: <16371.1702487095081210264@lists.yoctoproject.org>
Message-ID: <2894.1702653237940424253@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Ub8F9PIMLVbDXSqnGF03"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 15:14:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61906

--Ub8F9PIMLVbDXSqnGF03
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm still struggling to solve that... I came up with a very basic configura=
tion on Yocto (using kirkstone):

# POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblayers.con=
f
# changes incompatibly
POKY_BBLAYERS_CONF_VERSION =3D "2"

BBPATH =3D "${TOPDIR}"
BBFILES ?=3D ""

BBLAYERS ?=3D " \
 /home/quadfloor/release_1/src/poky/meta \
 /home/quadfloor/release_1/src/poky/meta-poky \
 /home/quadfloor/release_1/src/poky/meta-yocto-bsp \
 /home/quadfloor/release_1/src/meta-openembedded/meta-oe \
 /home/quadfloor/release_1/src/meta-openembedded/meta-python \
 /home/quadfloor/release_1/src/meta-openembedded/meta-multimedia \
 /home/quadfloor/release_1/src/meta-openembedded/meta-networking \
 /home/quadfloor/release_1/src/meta-raspberrypi \
 "

local.conf:

MACHINE =3D "raspberrypi0-wifi"
SERIAL_CONSOLE =3D ""
DISABLE_RPI_BOOT_LOGO =3D "1"
DISABLE_OVERSCAN =3D "1"
DISABLE_SPLASH =3D "1"
BOOT_DELAY =3D "0"
GPU_MEM_256 =3D "128"
GPU_MEM_512 =3D "196"
GPU_MEM_1024 =3D "396"
PACKAGE_CLASSES =3D "package_ipk"
DISTRO_FEATURES:append =3D " wifi "
IMAGE_INSTALL:append =3D " linux-firmware-bcm43430 wpa-supplicant"
IMAGE_FSTYPES =3D "tar.bz2 ext4 rpi-sdimg"
SDIMG_ROOTFS_TYPE =3D "ext4"

The error still persists: No wlan at all (ifconfig -a show only lo).=20

No=C2=A0idea=C2=A0where=C2=A0to=C2=A0go=C2=A0-=C2=A0project=C2=A0stuck=C2=
=A0and=C2=A0tigh=C2=A0deadline...=C2=A0Help very much needed...

--Ub8F9PIMLVbDXSqnGF03
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm still struggling to solve that... I came up with a very basic configura=
tion on Yocto (using kirkstone):<br /><br /><br /><br />
<pre style=3D"margin-bottom: calc(1.5em); padding: var(--su12); font-varian=
t-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternat=
es: inherit; font-variant-position: inherit; font-stretch: inherit; line-he=
ight: var(--lh-md); font-family: var(--ff-mono); font-optical-sizing: inher=
it; font-kerning: inherit; font-feature-settings: inherit; font-variation-s=
ettings: inherit; font-size: var(--fs-body1); vertical-align: baseline; box=
-sizing: inherit; width: auto; max-height: 600px; background-color: var(--h=
ighlight-bg); border-radius: var(--br-md); overflow-wrap: normal; --theme-b=
ase-primary-color-h: 153.44262295; --theme-base-primary-color-s: 51.6949152=
5%; --theme-base-primary-color-l: 46.2745098%; --theme-primary-custom-100: =
hsl(var(--theme-base-primary-color-h), var(--theme-base-primary-color-s), c=
alc(var(--theme-base-primary-color-l) + ((100% - var(--theme-base-primary-c=
olor-l)) * .9))); --theme-primary-custom-200: hsl(var(--theme-base-primary-=
color-h), var(--theme-base-primary-color-s), calc(var(--theme-base-primary-=
color-l) + ((100% - var(--theme-base-primary-color-l)) * .75))); --theme-pr=
imary-custom-300: hsl(var(--theme-base-primary-color-h), var(--theme-base-p=
rimary-color-s), calc(var(--theme-base-primary-color-l) + ((100% - var(--th=
eme-base-primary-color-l)) * .5))); --theme-primary-custom-400: hsl(var(--t=
heme-base-primary-color-h), var(--theme-base-primary-color-s), var(--theme-=
base-primary-color-l)); --theme-primary-custom-500: hsl(var(--theme-base-pr=
imary-color-h), var(--theme-base-primary-color-s), calc(var(--theme-base-pr=
imary-color-l) + (var(--theme-base-primary-color-l) * -.3))); --theme-prima=
ry-custom-600: hsl(var(--theme-base-primary-color-h), var(--theme-base-prim=
ary-color-s), calc(var(--theme-base-primary-color-l) + (var(--theme-base-pr=
imary-color-l) * -.6))); --theme-primary-custom: var(--theme-primary-custom=
-400); --theme-button-color: var(--theme-primary); --theme-button-hover-col=
or: var(--theme-primary-400); --theme-button-hover-background-color: var(--=
theme-primary-100); --theme-button-active-background-color: var(--theme-pri=
mary-200); --theme-button-selected-color: var(--theme-primary-600); --theme=
-button-selected-background-color: var(--theme-primary-300); --theme-button=
-outlined-border-color: var(--theme-primary-400); --theme-button-outlined-s=
elected-border-color: var(--theme-primary-500); --theme-button-primary-colo=
r: var(--white); --theme-button-primary-active-color: var(--white); --theme=
-button-primary-hover-color: var(--white); --theme-button-primary-selected-=
color: var(--white); --theme-button-primary-background-color: var(--theme-p=
rimary-400); --theme-button-primary-active-background-color: var(--theme-pr=
imary-600); --theme-button-primary-hover-background-color: var(--theme-prim=
ary-500); --theme-button-primary-selected-background-color: var(--theme-pri=
mary-600); --theme-background-color: var(--white); --theme-background-posit=
ion: top left; --theme-background-repeat: repeat; --theme-background-size: =
auto; --theme-background-attachment: auto; --theme-content-background-color=
: var(--white); --theme-content-border-color: var(--black-225); --theme-hea=
der-background-color: var(--theme-primary); --theme-header-background-posit=
ion: center left; --theme-header-background-repeat: repeat; --theme-header-=
background-size: 255px 122px; --theme-header-background-border-bottom: 0; -=
-theme-header-link-color: var(--theme-primary); --theme-header-sponsored-co=
lor: hsla(0,0%,100%,0.4); --theme-header-foreground-color: transparent; --t=
heme-header-foreground-position: bottom right; --theme-header-foreground-re=
peat: no-repeat; --theme-header-foreground-size: auto; --theme-footer-backg=
round-color: var(--theme-primary); --theme-footer-background-position: top =
left; --theme-footer-background-repeat: repeat; --theme-footer-background-s=
ize: auto; --theme-footer-background-border-top: 0; --theme-footer-title-co=
lor: hsl(0,0%,100%); --theme-footer-text-color: hsl(210,8%,90%); --theme-fo=
oter-link-color: hsl(210,8%,95%); --theme-footer-link-color-hover: hsl(210,=
8%,98%); --theme-footer-divider-color: hsl(210,9%,75%); --theme-footer-padd=
ing-top: 0; --theme-footer-padding-bottom: 0; --theme-link-color: #119294; =
--theme-link-color-hover: #16bfc2; --theme-link-color-visited: #063839; --t=
heme-tag-color: #828E93; --theme-tag-background-color: #F0F0F0; --theme-tag=
-border-color: transparent; --theme-tag-hover-color: #758287; --theme-tag-h=
over-background-color: #e3e3e3; --theme-tag-hover-border-color: rgba(0,0,0,=
0); --theme-tag-required-color: var(--white); --theme-tag-required-backgrou=
nd-color: var(--theme-secondary-500); --theme-tag-required-border-color: tr=
ansparent; --theme-tag-required-hover-color: var(--white); --theme-tag-requ=
ired-hover-background-color: var(--theme-secondary-400); --theme-tag-requir=
ed-hover-border-color: transparent; --theme-body-font-family: var(--ff-sans=
); --theme-body-font-color: var(--black-600); --theme-post-title-font-famil=
y: var(--ff-sans); --theme-post-title-color: var(--theme-link-color); --the=
me-post-title-color-hover: var(--theme-link-color-hover); --theme-post-titl=
e-color-visited: var(--theme-link-color-visited); --theme-post-body-font-fa=
mily: var(--ff-sans); --theme-post-owner-background-color: var(--theme-prim=
ary-100); --theme-post-owner-new-background-color: var(--theme-primary-200)=
; --theme-topbar-bottom-border: none; color: #0c0d0e; border: 0px initial i=
nitial;"><code style=3D"margin: 0px; border: 0px; font-style: inherit; font=
-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height=
: inherit; font-family: var(--ff-mono); font-optical-sizing: inherit; font-=
kerning: inherit; font-feature-settings: inherit; font-variation-settings: =
inherit; font-size: var(--_pr-code-fs); vertical-align: baseline; box-sizin=
g: inherit; white-space: inherit; --theme-base-primary-color-h: 153.4426229=
5; --theme-base-primary-color-s: 51.69491525%; --theme-base-primary-color-l=
: 46.2745098%; --theme-primary-custom-100: hsl(var(--theme-base-primary-col=
or-h), var(--theme-base-primary-color-s), calc(var(--theme-base-primary-col=
or-l) + ((100% - var(--theme-base-primary-color-l)) * .9))); --theme-primar=
y-custom-200: hsl(var(--theme-base-primary-color-h), var(--theme-base-prima=
ry-color-s), calc(var(--theme-base-primary-color-l) + ((100% - var(--theme-=
base-primary-color-l)) * .75))); --theme-primary-custom-300: hsl(var(--them=
e-base-primary-color-h), var(--theme-base-primary-color-s), calc(var(--them=
e-base-primary-color-l) + ((100% - var(--theme-base-primary-color-l)) * .5)=
)); --theme-primary-custom-400: hsl(var(--theme-base-primary-color-h), var(=
--theme-base-primary-color-s), var(--theme-base-primary-color-l)); --theme-=
primary-custom-500: hsl(var(--theme-base-primary-color-h), var(--theme-base=
-primary-color-s), calc(var(--theme-base-primary-color-l) + (var(--theme-ba=
se-primary-color-l) * -.3))); --theme-primary-custom-600: hsl(var(--theme-b=
ase-primary-color-h), var(--theme-base-primary-color-s), calc(var(--theme-b=
ase-primary-color-l) + (var(--theme-base-primary-color-l) * -.6))); --theme=
-primary-custom: var(--theme-primary-custom-400); --theme-button-color: var=
(--theme-primary); --theme-button-hover-color: var(--theme-primary-400); --=
theme-button-hover-background-color: var(--theme-primary-100); --theme-butt=
on-active-background-color: var(--theme-primary-200); --theme-button-select=
ed-color: var(--theme-primary-600); --theme-button-selected-background-colo=
r: var(--theme-primary-300); --theme-button-outlined-border-color: var(--th=
eme-primary-400); --theme-button-outlined-selected-border-color: var(--them=
e-primary-500); --theme-button-primary-color: var(--white); --theme-button-=
primary-active-color: var(--white); --theme-button-primary-hover-color: var=
(--white); --theme-button-primary-selected-color: var(--white); --theme-but=
ton-primary-background-color: var(--theme-primary-400); --theme-button-prim=
ary-active-background-color: var(--theme-primary-600); --theme-button-prima=
ry-hover-background-color: var(--theme-primary-500); --theme-button-primary=
-selected-background-color: var(--theme-primary-600); --theme-background-co=
lor: var(--white); --theme-background-position: top left; --theme-backgroun=
d-repeat: repeat; --theme-background-size: auto; --theme-background-attachm=
ent: auto; --theme-content-background-color: var(--white); --theme-content-=
border-color: var(--black-225); --theme-header-background-color: var(--them=
e-primary); --theme-header-background-position: center left; --theme-header=
-background-repeat: repeat; --theme-header-background-size: 255px 122px; --=
theme-header-background-border-bottom: 0; --theme-header-link-color: var(--=
theme-primary); --theme-header-sponsored-color: hsla(0,0%,100%,0.4); --them=
e-header-foreground-color: transparent; --theme-header-foreground-position:=
 bottom right; --theme-header-foreground-repeat: no-repeat; --theme-header-=
foreground-size: auto; --theme-footer-background-color: var(--theme-primary=
); --theme-footer-background-position: top left; --theme-footer-background-=
repeat: repeat; --theme-footer-background-size: auto; --theme-footer-backgr=
ound-border-top: 0; --theme-footer-title-color: hsl(0,0%,100%); --theme-foo=
ter-text-color: hsl(210,8%,90%); --theme-footer-link-color: hsl(210,8%,95%)=
; --theme-footer-link-color-hover: hsl(210,8%,98%); --theme-footer-divider-=
color: hsl(210,9%,75%); --theme-footer-padding-top: 0; --theme-footer-paddi=
ng-bottom: 0; --theme-link-color: #119294; --theme-link-color-hover: #16bfc=
2; --theme-link-color-visited: #063839; --theme-tag-color: #828E93; --theme=
-tag-background-color: #F0F0F0; --theme-tag-border-color: transparent; --th=
eme-tag-hover-color: #758287; --theme-tag-hover-background-color: #e3e3e3; =
--theme-tag-hover-border-color: rgba(0,0,0,0); --theme-tag-required-color: =
var(--white); --theme-tag-required-background-color: var(--theme-secondary-=
500); --theme-tag-required-border-color: transparent; --theme-tag-required-=
hover-color: var(--white); --theme-tag-required-hover-background-color: var=
(--theme-secondary-400); --theme-tag-required-hover-border-color: transpare=
nt; --theme-body-font-family: var(--ff-sans); --theme-body-font-color: var(=
--black-600); --theme-post-title-font-family: var(--ff-sans); --theme-post-=
title-color: var(--theme-link-color); --theme-post-title-color-hover: var(-=
-theme-link-color-hover); --theme-post-title-color-visited: var(--theme-lin=
k-color-visited); --theme-post-body-font-family: var(--ff-sans); --theme-po=
st-owner-background-color: var(--theme-primary-100); --theme-post-owner-new=
-background-color: var(--theme-primary-200); --theme-topbar-bottom-border: =
none;"># POKY_BBLAYERS_CONF_VERSION is increased each time build/conf/bblay=
ers.conf
# changes incompatibly
POKY_BBLAYERS_CONF_VERSION =3D "2"

BBPATH =3D "${TOPDIR}"
BBFILES ?=3D ""

BBLAYERS ?=3D " \
  /home/quadfloor/release_1/src/poky/meta \
  /home/quadfloor/release_1/src/poky/meta-poky \
  /home/quadfloor/release_1/src/poky/meta-yocto-bsp \
  /home/quadfloor/release_1/src/meta-openembedded/meta-oe \
  /home/quadfloor/release_1/src/meta-openembedded/meta-python \
  /home/quadfloor/release_1/src/meta-openembedded/meta-multimedia \
  /home/quadfloor/release_1/src/meta-openembedded/meta-networking \
  /home/quadfloor/release_1/src/meta-raspberrypi \
  "</code><br /><br />local.conf:<br /><br /></pre>
<pre style=3D"margin-bottom: calc(1.5em); padding: var(--su12); font-varian=
t-numeric: inherit; font-variant-east-asian: inherit; font-variant-alternat=
es: inherit; font-variant-position: inherit; font-stretch: inherit; line-he=
ight: var(--lh-md); font-family: var(--ff-mono); font-optical-sizing: inher=
it; font-kerning: inherit; font-feature-settings: inherit; font-variation-s=
ettings: inherit; font-size: var(--fs-body1); vertical-align: baseline; box=
-sizing: inherit; width: auto; max-height: 600px; background-color: var(--h=
ighlight-bg); border-radius: var(--br-md); overflow-wrap: normal; --theme-b=
ase-primary-color-h: 153.44262295; --theme-base-primary-color-s: 51.6949152=
5%; --theme-base-primary-color-l: 46.2745098%; --theme-primary-custom-100: =
hsl(var(--theme-base-primary-color-h), var(--theme-base-primary-color-s), c=
alc(var(--theme-base-primary-color-l) + ((100% - var(--theme-base-primary-c=
olor-l)) * .9))); --theme-primary-custom-200: hsl(var(--theme-base-primary-=
color-h), var(--theme-base-primary-color-s), calc(var(--theme-base-primary-=
color-l) + ((100% - var(--theme-base-primary-color-l)) * .75))); --theme-pr=
imary-custom-300: hsl(var(--theme-base-primary-color-h), var(--theme-base-p=
rimary-color-s), calc(var(--theme-base-primary-color-l) + ((100% - var(--th=
eme-base-primary-color-l)) * .5))); --theme-primary-custom-400: hsl(var(--t=
heme-base-primary-color-h), var(--theme-base-primary-color-s), var(--theme-=
base-primary-color-l)); --theme-primary-custom-500: hsl(var(--theme-base-pr=
imary-color-h), var(--theme-base-primary-color-s), calc(var(--theme-base-pr=
imary-color-l) + (var(--theme-base-primary-color-l) * -.3))); --theme-prima=
ry-custom-600: hsl(var(--theme-base-primary-color-h), var(--theme-base-prim=
ary-color-s), calc(var(--theme-base-primary-color-l) + (var(--theme-base-pr=
imary-color-l) * -.6))); --theme-primary-custom: var(--theme-primary-custom=
-400); --theme-button-color: var(--theme-primary); --theme-button-hover-col=
or: var(--theme-primary-400); --theme-button-hover-background-color: var(--=
theme-primary-100); --theme-button-active-background-color: var(--theme-pri=
mary-200); --theme-button-selected-color: var(--theme-primary-600); --theme=
-button-selected-background-color: var(--theme-primary-300); --theme-button=
-outlined-border-color: var(--theme-primary-400); --theme-button-outlined-s=
elected-border-color: var(--theme-primary-500); --theme-button-primary-colo=
r: var(--white); --theme-button-primary-active-color: var(--white); --theme=
-button-primary-hover-color: var(--white); --theme-button-primary-selected-=
color: var(--white); --theme-button-primary-background-color: var(--theme-p=
rimary-400); --theme-button-primary-active-background-color: var(--theme-pr=
imary-600); --theme-button-primary-hover-background-color: var(--theme-prim=
ary-500); --theme-button-primary-selected-background-color: var(--theme-pri=
mary-600); --theme-background-color: var(--white); --theme-background-posit=
ion: top left; --theme-background-repeat: repeat; --theme-background-size: =
auto; --theme-background-attachment: auto; --theme-content-background-color=
: var(--white); --theme-content-border-color: var(--black-225); --theme-hea=
der-background-color: var(--theme-primary); --theme-header-background-posit=
ion: center left; --theme-header-background-repeat: repeat; --theme-header-=
background-size: 255px 122px; --theme-header-background-border-bottom: 0; -=
-theme-header-link-color: var(--theme-primary); --theme-header-sponsored-co=
lor: hsla(0,0%,100%,0.4); --theme-header-foreground-color: transparent; --t=
heme-header-foreground-position: bottom right; --theme-header-foreground-re=
peat: no-repeat; --theme-header-foreground-size: auto; --theme-footer-backg=
round-color: var(--theme-primary); --theme-footer-background-position: top =
left; --theme-footer-background-repeat: repeat; --theme-footer-background-s=
ize: auto; --theme-footer-background-border-top: 0; --theme-footer-title-co=
lor: hsl(0,0%,100%); --theme-footer-text-color: hsl(210,8%,90%); --theme-fo=
oter-link-color: hsl(210,8%,95%); --theme-footer-link-color-hover: hsl(210,=
8%,98%); --theme-footer-divider-color: hsl(210,9%,75%); --theme-footer-padd=
ing-top: 0; --theme-footer-padding-bottom: 0; --theme-link-color: #119294; =
--theme-link-color-hover: #16bfc2; --theme-link-color-visited: #063839; --t=
heme-tag-color: #828E93; --theme-tag-background-color: #F0F0F0; --theme-tag=
-border-color: transparent; --theme-tag-hover-color: #758287; --theme-tag-h=
over-background-color: #e3e3e3; --theme-tag-hover-border-color: rgba(0,0,0,=
0); --theme-tag-required-color: var(--white); --theme-tag-required-backgrou=
nd-color: var(--theme-secondary-500); --theme-tag-required-border-color: tr=
ansparent; --theme-tag-required-hover-color: var(--white); --theme-tag-requ=
ired-hover-background-color: var(--theme-secondary-400); --theme-tag-requir=
ed-hover-border-color: transparent; --theme-body-font-family: var(--ff-sans=
); --theme-body-font-color: var(--black-600); --theme-post-title-font-famil=
y: var(--ff-sans); --theme-post-title-color: var(--theme-link-color); --the=
me-post-title-color-hover: var(--theme-link-color-hover); --theme-post-titl=
e-color-visited: var(--theme-link-color-visited); --theme-post-body-font-fa=
mily: var(--ff-sans); --theme-post-owner-background-color: var(--theme-prim=
ary-100); --theme-post-owner-new-background-color: var(--theme-primary-200)=
; --theme-topbar-bottom-border: none; color: #0c0d0e; border: 0px initial i=
nitial;"><code style=3D"margin: 0px; border: 0px; font-style: inherit; font=
-variant: inherit; font-weight: inherit; font-stretch: inherit; line-height=
: inherit; font-family: var(--ff-mono); font-optical-sizing: inherit; font-=
kerning: inherit; font-feature-settings: inherit; font-variation-settings: =
inherit; font-size: var(--_pr-code-fs); vertical-align: baseline; box-sizin=
g: inherit; white-space: inherit; --theme-base-primary-color-h: 153.4426229=
5; --theme-base-primary-color-s: 51.69491525%; --theme-base-primary-color-l=
: 46.2745098%; --theme-primary-custom-100: hsl(var(--theme-base-primary-col=
or-h), var(--theme-base-primary-color-s), calc(var(--theme-base-primary-col=
or-l) + ((100% - var(--theme-base-primary-color-l)) * .9))); --theme-primar=
y-custom-200: hsl(var(--theme-base-primary-color-h), var(--theme-base-prima=
ry-color-s), calc(var(--theme-base-primary-color-l) + ((100% - var(--theme-=
base-primary-color-l)) * .75))); --theme-primary-custom-300: hsl(var(--them=
e-base-primary-color-h), var(--theme-base-primary-color-s), calc(var(--them=
e-base-primary-color-l) + ((100% - var(--theme-base-primary-color-l)) * .5)=
)); --theme-primary-custom-400: hsl(var(--theme-base-primary-color-h), var(=
--theme-base-primary-color-s), var(--theme-base-primary-color-l)); --theme-=
primary-custom-500: hsl(var(--theme-base-primary-color-h), var(--theme-base=
-primary-color-s), calc(var(--theme-base-primary-color-l) + (var(--theme-ba=
se-primary-color-l) * -.3))); --theme-primary-custom-600: hsl(var(--theme-b=
ase-primary-color-h), var(--theme-base-primary-color-s), calc(var(--theme-b=
ase-primary-color-l) + (var(--theme-base-primary-color-l) * -.6))); --theme=
-primary-custom: var(--theme-primary-custom-400); --theme-button-color: var=
(--theme-primary); --theme-button-hover-color: var(--theme-primary-400); --=
theme-button-hover-background-color: var(--theme-primary-100); --theme-butt=
on-active-background-color: var(--theme-primary-200); --theme-button-select=
ed-color: var(--theme-primary-600); --theme-button-selected-background-colo=
r: var(--theme-primary-300); --theme-button-outlined-border-color: var(--th=
eme-primary-400); --theme-button-outlined-selected-border-color: var(--them=
e-primary-500); --theme-button-primary-color: var(--white); --theme-button-=
primary-active-color: var(--white); --theme-button-primary-hover-color: var=
(--white); --theme-button-primary-selected-color: var(--white); --theme-but=
ton-primary-background-color: var(--theme-primary-400); --theme-button-prim=
ary-active-background-color: var(--theme-primary-600); --theme-button-prima=
ry-hover-background-color: var(--theme-primary-500); --theme-button-primary=
-selected-background-color: var(--theme-primary-600); --theme-background-co=
lor: var(--white); --theme-background-position: top left; --theme-backgroun=
d-repeat: repeat; --theme-background-size: auto; --theme-background-attachm=
ent: auto; --theme-content-background-color: var(--white); --theme-content-=
border-color: var(--black-225); --theme-header-background-color: var(--them=
e-primary); --theme-header-background-position: center left; --theme-header=
-background-repeat: repeat; --theme-header-background-size: 255px 122px; --=
theme-header-background-border-bottom: 0; --theme-header-link-color: var(--=
theme-primary); --theme-header-sponsored-color: hsla(0,0%,100%,0.4); --them=
e-header-foreground-color: transparent; --theme-header-foreground-position:=
 bottom right; --theme-header-foreground-repeat: no-repeat; --theme-header-=
foreground-size: auto; --theme-footer-background-color: var(--theme-primary=
); --theme-footer-background-position: top left; --theme-footer-background-=
repeat: repeat; --theme-footer-background-size: auto; --theme-footer-backgr=
ound-border-top: 0; --theme-footer-title-color: hsl(0,0%,100%); --theme-foo=
ter-text-color: hsl(210,8%,90%); --theme-footer-link-color: hsl(210,8%,95%)=
; --theme-footer-link-color-hover: hsl(210,8%,98%); --theme-footer-divider-=
color: hsl(210,9%,75%); --theme-footer-padding-top: 0; --theme-footer-paddi=
ng-bottom: 0; --theme-link-color: #119294; --theme-link-color-hover: #16bfc=
2; --theme-link-color-visited: #063839; --theme-tag-color: #828E93; --theme=
-tag-background-color: #F0F0F0; --theme-tag-border-color: transparent; --th=
eme-tag-hover-color: #758287; --theme-tag-hover-background-color: #e3e3e3; =
--theme-tag-hover-border-color: rgba(0,0,0,0); --theme-tag-required-color: =
var(--white); --theme-tag-required-background-color: var(--theme-secondary-=
500); --theme-tag-required-border-color: transparent; --theme-tag-required-=
hover-color: var(--white); --theme-tag-required-hover-background-color: var=
(--theme-secondary-400); --theme-tag-required-hover-border-color: transpare=
nt; --theme-body-font-family: var(--ff-sans); --theme-body-font-color: var(=
--black-600); --theme-post-title-font-family: var(--ff-sans); --theme-post-=
title-color: var(--theme-link-color); --theme-post-title-color-hover: var(-=
-theme-link-color-hover); --theme-post-title-color-visited: var(--theme-lin=
k-color-visited); --theme-post-body-font-family: var(--ff-sans); --theme-po=
st-owner-background-color: var(--theme-primary-100); --theme-post-owner-new=
-background-color: var(--theme-primary-200); --theme-topbar-bottom-border: =
none;">MACHINE =3D "raspberrypi0-wifi"
SERIAL_CONSOLE =3D ""
DISABLE_RPI_BOOT_LOGO =3D "1"
DISABLE_OVERSCAN =3D "1"
DISABLE_SPLASH =3D "1"
BOOT_DELAY =3D "0"
GPU_MEM_256 =3D "128"
GPU_MEM_512 =3D "196"
GPU_MEM_1024 =3D "396"
PACKAGE_CLASSES =3D "package_ipk"
DISTRO_FEATURES:append =3D " wifi "
IMAGE_INSTALL:append =3D " linux-firmware-bcm43430 wpa-supplicant"
IMAGE_FSTYPES =3D "tar.bz2 ext4 rpi-sdimg"
SDIMG_ROOTFS_TYPE =3D "ext4"<br /><br />The error still persists: No wlan a=
t all (ifconfig -a show only lo). <br /><br />No&nbsp;idea&nbsp;where&nbsp;=
to&nbsp;go&nbsp;-&nbsp;project&nbsp;stuck&nbsp;and&nbsp;tigh&nbsp;deadline.=
..&nbsp;</code>Help very much needed...</pre>

--Ub8F9PIMLVbDXSqnGF03--

