Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DAA39C25B76
	for <webhook@archiver.kernel.org>; Tue, 11 Jun 2024 10:07:05 +0000 (UTC)
Subject: fails to boot into GUI mode.:(EE) open /dev/dri/card0: No such file or directory in Yocto
To: yocto@lists.yoctoproject.org
From: "Kamal GMBH" <kamalgmbh32@gmail.com>
X-Originating-Location: Plano, Texas, US (161.69.80.64)
X-Originating-Platform: Windows Chrome 125
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 11 Jun 2024 02:59:32 -0700
Message-ID: <SFQD.1718099972477026446.xJ0G@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="VwqRGCjdzKxTt9RxjRs8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Jun 2024 10:07:05 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63315

--VwqRGCjdzKxTt9RxjRs8
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am building core-image-sato for my device but device *fails to boot into =
GUI mode*.

When I looked at Xorg.0.log file, found that Xserver is unable to find devi=
ce node( /dev/dri/card0 ).

I am using scarthgap branch with 6.6.26 kernel.

error:

(II) modesetting: Driver for Modesetting Kernel Drivers: kms
(II) FBDEV: driver for framebuffer: fbdev
(II) VESA: driver for VESA chipsets: vesa
(EE) *open /dev/dri/card0: No such file or directory*
(WW) Falling back to old probe method for modesetting
(EE) *open /dev/dri/card0: No such file or directory*
(II) Loading sub module "fbdevhw"
(II) LoadModule: "fbdevhw"
(II) Loading /usr/lib/xorg/modules/libfbdevhw.so
(II) Module fbdevhw: vendor=3D"X.Org Foundation"
compiled for 1.21.1.11, module version =3D 0.0.2
ABI class: X.Org Video Driver, version 25.2
(EE) Unable to find a valid framebuffer device
(WW) Falling back to old probe method for fbdev
(II) Loading sub module "fbdevhw"
(II) LoadModule: "fbdevhw"
(II) Loading /usr/lib/xorg/modules/libfbdevhw.so
(II) Module fbdevhw: vendor=3D"X.Org Foundation"
compiled for 1.21.1.11, module version =3D 0.0.2
ABI class: X.Org Video Driver, version 25.2
(EE) open /dev/fb0: No such file or directory
vesa: Ignoring device with a bound kernel driver
(EE) Screen 0 deleted because of no matching config section.
(II) UnloadModule: "modesetting"
(EE) Screen 0 deleted because of no matching config section.
(II) UnloadModule: "fbdev"
(II) UnloadSubModule: "fbdevhw"
(EE) Screen 0 deleted because of no matching config section.
(II) UnloadModule: "vesa"
(EE) Device(s) detected, but none match those in the config file.

can you please help here!

--VwqRGCjdzKxTt9RxjRs8
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p style=3D"margin: 0px 0px 1.1em; padding: 0px; border: 0px; font-style: n=
ormal; font-variant-ligatures: normal; font-variant-caps: normal; font-vari=
ant-numeric: inherit; font-variant-east-asian: inherit; font-variant-altern=
ates: inherit; font-variant-position: inherit; font-weight: 400; font-stret=
ch: inherit; line-height: inherit; font-family: -apple-system, BlinkMacSyst=
emFont, 'Segoe UI Adjusted', 'Segoe UI', 'Liberation Sans', sans-serif; fon=
t-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: in=
herit; font-variation-settings: inherit; font-size: 15px; vertical-align: b=
aseline; box-sizing: inherit; clear: both; --_pr-img-mb: 0; --theme-base-pr=
imary-color-h: 27; --theme-base-primary-color-s: 89%; --theme-base-primary-=
color-l: 48%; --theme-primary-custom-100: hsl(var(--theme-base-primary-colo=
r-h), var(--theme-base-primary-color-s), calc(var(--theme-base-primary-colo=
r-l) + ((100% - var(--theme-base-primary-color-l)) * .9))); --theme-primary=
-custom-200: hsl(var(--theme-base-primary-color-h), var(--theme-base-primar=
y-color-s), calc(var(--theme-base-primary-color-l) + ((100% - var(--theme-b=
ase-primary-color-l)) * .75))); --theme-primary-custom-300: hsl(var(--theme=
-base-primary-color-h), var(--theme-base-primary-color-s), calc(var(--theme=
-base-primary-color-l) + ((100% - var(--theme-base-primary-color-l)) * .5))=
); --theme-primary-custom-400: hsl(var(--theme-base-primary-color-h), var(-=
-theme-base-primary-color-s), var(--theme-base-primary-color-l)); --theme-p=
rimary-custom-500: hsl(var(--theme-base-primary-color-h), var(--theme-base-=
primary-color-s), calc(var(--theme-base-primary-color-l) + (var(--theme-bas=
e-primary-color-l) * -.3))); --theme-primary-custom-600: hsl(var(--theme-ba=
se-primary-color-h), var(--theme-base-primary-color-s), calc(var(--theme-ba=
se-primary-color-l) + (var(--theme-base-primary-color-l) * -.6))); --theme-=
primary-custom: var(--theme-primary-custom-400); --theme-button-color: init=
ial; --theme-button-hover-color: initial; --theme-button-hover-background-c=
olor: initial; --theme-button-active-background-color: initial; --theme-but=
ton-selected-color: initial; --theme-button-selected-background-color: init=
ial; --theme-button-outlined-border-color: initial; --theme-button-outlined=
-selected-border-color: initial; --theme-button-primary-color: initial; --t=
heme-button-primary-active-color: initial; --theme-button-primary-hover-col=
or: initial; --theme-button-primary-selected-color: initial; --theme-button=
-primary-background-color: initial; --theme-button-primary-active-backgroun=
d-color: initial; --theme-button-primary-hover-background-color: initial; -=
-theme-button-primary-selected-background-color: initial; --theme-backgroun=
d-color: var(--white); --theme-background-position: top left; --theme-backg=
round-repeat: repeat; --theme-background-size: auto; --theme-background-att=
achment: auto; --theme-content-background-color: var(--white); --theme-cont=
ent-border-color: var(--black-225); --theme-header-background-color: var(--=
theme-primary); --theme-header-background-position: center left; --theme-he=
ader-background-repeat: repeat; --theme-header-background-size: auto; --the=
me-header-background-border-bottom: 0; --theme-header-link-color: var(--the=
me-primary); --theme-header-sponsored-color: hsla(0,0%,100%,0.4); --theme-h=
eader-foreground-color: transparent; --theme-header-foreground-position: bo=
ttom right; --theme-header-foreground-repeat: no-repeat; --theme-header-for=
eground-size: auto; --theme-footer-background-color: hsl(210,8%,5%); --them=
e-footer-background-position: top left; --theme-footer-background-repeat: n=
o-repeat; --theme-footer-background-size: auto; --theme-footer-background-b=
order-top: 0; --theme-footer-title-color: var(--black-250); --theme-footer-=
text-color: var(--black-300); --theme-footer-link-color: var(--black-300); =
--theme-footer-link-color-hover: var(--black-200); --theme-footer-divider-c=
olor: var(--black-500); --theme-footer-padding-top: 0; --theme-footer-paddi=
ng-bottom: 0; --theme-link-color: initial; --theme-link-color-hover: initia=
l; --theme-link-color-visited: initial; --theme-body-font-family: var(--ff-=
sans); --theme-body-font-color: var(--black-600); --theme-post-title-font-f=
amily: var(--ff-sans); --theme-post-title-color: var(--theme-link-color); -=
-theme-post-title-color-hover: var(--theme-link-color-hover); --theme-post-=
title-color-visited: var(--theme-link-color-visited); --theme-post-body-fon=
t-family: var(--ff-sans); --theme-post-owner-background-color: var(--theme-=
secondary-100); --theme-post-owner-new-background-color: var(--theme-second=
ary-200); --theme-topbar-bottom-border: 1px solid var(--black-225); color: =
#0c0d0e; letter-spacing: normal; orphans: 2; text-align: left; text-indent:=
 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stro=
ke-width: 0px; white-space: normal; background-color: #ffffff; text-decorat=
ion-thickness: initial; text-decoration-style: initial; text-decoration-col=
or: initial;">I am building <code style=3D"margin: 0px; padding: var(--su2)=
 var(--su4); border: 0px; font-style: inherit; font-variant: inherit; font-=
weight: inherit; font-stretch: inherit; line-height: inherit; font-family: =
var(--ff-mono); font-optical-sizing: inherit; font-kerning: inherit; font-f=
eature-settings: inherit; font-variation-settings: inherit; font-size: var(=
--_pr-code-fs); vertical-align: baseline; box-sizing: inherit; background-c=
olor: var(--black-200); white-space: pre-wrap; --theme-base-primary-color-h=
: 27; --theme-base-primary-color-s: 89%; --theme-base-primary-color-l: 48%;=
 --theme-primary-custom-100: hsl(var(--theme-base-primary-color-h), var(--t=
heme-base-primary-color-s), calc(var(--theme-base-primary-color-l) + ((100%=
 - var(--theme-base-primary-color-l)) * .9))); --theme-primary-custom-200: =
hsl(var(--theme-base-primary-color-h), var(--theme-base-primary-color-s), c=
alc(var(--theme-base-primary-color-l) + ((100% - var(--theme-base-primary-c=
olor-l)) * .75))); --theme-primary-custom-300: hsl(var(--theme-base-primary=
-color-h), var(--theme-base-primary-color-s), calc(var(--theme-base-primary=
-color-l) + ((100% - var(--theme-base-primary-color-l)) * .5))); --theme-pr=
imary-custom-400: hsl(var(--theme-base-primary-color-h), var(--theme-base-p=
rimary-color-s), var(--theme-base-primary-color-l)); --theme-primary-custom=
-500: hsl(var(--theme-base-primary-color-h), var(--theme-base-primary-color=
-s), calc(var(--theme-base-primary-color-l) + (var(--theme-base-primary-col=
or-l) * -.3))); --theme-primary-custom-600: hsl(var(--theme-base-primary-co=
lor-h), var(--theme-base-primary-color-s), calc(var(--theme-base-primary-co=
lor-l) + (var(--theme-base-primary-color-l) * -.6))); --theme-primary-custo=
m: var(--theme-primary-custom-400); --theme-button-color: initial; --theme-=
button-hover-color: initial; --theme-button-hover-background-color: initial=
; --theme-button-active-background-color: initial; --theme-button-selected-=
color: initial; --theme-button-selected-background-color: initial; --theme-=
button-outlined-border-color: initial; --theme-button-outlined-selected-bor=
der-color: initial; --theme-button-primary-color: initial; --theme-button-p=
rimary-active-color: initial; --theme-button-primary-hover-color: initial; =
--theme-button-primary-selected-color: initial; --theme-button-primary-back=
ground-color: initial; --theme-button-primary-active-background-color: init=
ial; --theme-button-primary-hover-background-color: initial; --theme-button=
-primary-selected-background-color: initial; --theme-background-color: var(=
--white); --theme-background-position: top left; --theme-background-repeat:=
 repeat; --theme-background-size: auto; --theme-background-attachment: auto=
; --theme-content-background-color: var(--white); --theme-content-border-co=
lor: var(--black-225); --theme-header-background-color: var(--theme-primary=
); --theme-header-background-position: center left; --theme-header-backgrou=
nd-repeat: repeat; --theme-header-background-size: auto; --theme-header-bac=
kground-border-bottom: 0; --theme-header-link-color: var(--theme-primary); =
--theme-header-sponsored-color: hsla(0,0%,100%,0.4); --theme-header-foregro=
und-color: transparent; --theme-header-foreground-position: bottom right; -=
-theme-header-foreground-repeat: no-repeat; --theme-header-foreground-size:=
 auto; --theme-footer-background-color: hsl(210,8%,5%); --theme-footer-back=
ground-position: top left; --theme-footer-background-repeat: no-repeat; --t=
heme-footer-background-size: auto; --theme-footer-background-border-top: 0;=
 --theme-footer-title-color: var(--black-250); --theme-footer-text-color: v=
ar(--black-300); --theme-footer-link-color: var(--black-300); --theme-foote=
r-link-color-hover: var(--black-200); --theme-footer-divider-color: var(--b=
lack-500); --theme-footer-padding-top: 0; --theme-footer-padding-bottom: 0;=
 --theme-link-color: initial; --theme-link-color-hover: initial; --theme-li=
nk-color-visited: initial; --theme-body-font-family: var(--ff-sans); --them=
e-body-font-color: var(--black-600); --theme-post-title-font-family: var(--=
ff-sans); --theme-post-title-color: var(--theme-link-color); --theme-post-t=
itle-color-hover: var(--theme-link-color-hover); --theme-post-title-color-v=
isited: var(--theme-link-color-visited); --theme-post-body-font-family: var=
(--ff-sans); --theme-post-owner-background-color: var(--theme-secondary-100=
); --theme-post-owner-new-background-color: var(--theme-secondary-200); --t=
heme-topbar-bottom-border: 1px solid var(--black-225); color: var(--black-6=
00); border-radius: var(--br-sm);">core-image-sato</code><span>&nbsp;</span=
>for my device but device<span>&nbsp;</span><strong style=3D"margin: 0px; p=
adding: 0px; border: 0px; font-style: inherit; font-variant: inherit; font-=
weight: bold; font-stretch: inherit; line-height: inherit; font-family: inh=
erit; font-optical-sizing: inherit; font-kerning: inherit; font-feature-set=
tings: inherit; font-variation-settings: inherit; font-size: 15px; vertical=
-align: baseline; box-sizing: inherit; --theme-base-primary-color-h: 27; --=
theme-base-primary-color-s: 89%; --theme-base-primary-color-l: 48%; --theme=
-primary-custom-100: hsl(var(--theme-base-primary-color-h), var(--theme-bas=
e-primary-color-s), calc(var(--theme-base-primary-color-l) + ((100% - var(-=
-theme-base-primary-color-l)) * .9))); --theme-primary-custom-200: hsl(var(=
--theme-base-primary-color-h), var(--theme-base-primary-color-s), calc(var(=
--theme-base-primary-color-l) + ((100% - var(--theme-base-primary-color-l))=
 * .75))); --theme-primary-custom-300: hsl(var(--theme-base-primary-color-h=
), var(--theme-base-primary-color-s), calc(var(--theme-base-primary-color-l=
) + ((100% - var(--theme-base-primary-color-l)) * .5))); --theme-primary-cu=
stom-400: hsl(var(--theme-base-primary-color-h), var(--theme-base-primary-c=
olor-s), var(--theme-base-primary-color-l)); --theme-primary-custom-500: hs=
l(var(--theme-base-primary-color-h), var(--theme-base-primary-color-s), cal=
c(var(--theme-base-primary-color-l) + (var(--theme-base-primary-color-l) * =
-.3))); --theme-primary-custom-600: hsl(var(--theme-base-primary-color-h), =
var(--theme-base-primary-color-s), calc(var(--theme-base-primary-color-l) +=
 (var(--theme-base-primary-color-l) * -.6))); --theme-primary-custom: var(-=
-theme-primary-custom-400); --theme-button-color: initial; --theme-button-h=
over-color: initial; --theme-button-hover-background-color: initial; --them=
e-button-active-background-color: initial; --theme-button-selected-color: i=
nitial; --theme-button-selected-background-color: initial; --theme-button-o=
utlined-border-color: initial; --theme-button-outlined-selected-border-colo=
r: initial; --theme-button-primary-color: initial; --theme-button-primary-a=
ctive-color: initial; --theme-button-primary-hover-color: initial; --theme-=
button-primary-selected-color: initial; --theme-button-primary-background-c=
olor: initial; --theme-button-primary-active-background-color: initial; --t=
heme-button-primary-hover-background-color: initial; --theme-button-primary=
-selected-background-color: initial; --theme-background-color: var(--white)=
; --theme-background-position: top left; --theme-background-repeat: repeat;=
 --theme-background-size: auto; --theme-background-attachment: auto; --them=
e-content-background-color: var(--white); --theme-content-border-color: var=
(--black-225); --theme-header-background-color: var(--theme-primary); --the=
me-header-background-position: center left; --theme-header-background-repea=
t: repeat; --theme-header-background-size: auto; --theme-header-background-=
border-bottom: 0; --theme-header-link-color: var(--theme-primary); --theme-=
header-sponsored-color: hsla(0,0%,100%,0.4); --theme-header-foreground-colo=
r: transparent; --theme-header-foreground-position: bottom right; --theme-h=
eader-foreground-repeat: no-repeat; --theme-header-foreground-size: auto; -=
-theme-footer-background-color: hsl(210,8%,5%); --theme-footer-background-p=
osition: top left; --theme-footer-background-repeat: no-repeat; --theme-foo=
ter-background-size: auto; --theme-footer-background-border-top: 0; --theme=
-footer-title-color: var(--black-250); --theme-footer-text-color: var(--bla=
ck-300); --theme-footer-link-color: var(--black-300); --theme-footer-link-c=
olor-hover: var(--black-200); --theme-footer-divider-color: var(--black-500=
); --theme-footer-padding-top: 0; --theme-footer-padding-bottom: 0; --theme=
-link-color: initial; --theme-link-color-hover: initial; --theme-link-color=
-visited: initial; --theme-body-font-family: var(--ff-sans); --theme-body-f=
ont-color: var(--black-600); --theme-post-title-font-family: var(--ff-sans)=
; --theme-post-title-color: var(--theme-link-color); --theme-post-title-col=
or-hover: var(--theme-link-color-hover); --theme-post-title-color-visited: =
var(--theme-link-color-visited); --theme-post-body-font-family: var(--ff-sa=
ns); --theme-post-owner-background-color: var(--theme-secondary-100); --the=
me-post-owner-new-background-color: var(--theme-secondary-200); --theme-top=
bar-bottom-border: 1px solid var(--black-225);">fails to boot into GUI mode=
</strong>.</p>
<p style=3D"margin: 0px 0px 1.1em; padding: 0px; border: 0px; font-style: n=
ormal; font-variant-ligatures: normal; font-variant-caps: normal; font-vari=
ant-numeric: inherit; font-variant-east-asian: inherit; font-variant-altern=
ates: inherit; font-variant-position: inherit; font-weight: 400; font-stret=
ch: inherit; line-height: inherit; font-family: -apple-system, BlinkMacSyst=
emFont, 'Segoe UI Adjusted', 'Segoe UI', 'Liberation Sans', sans-serif; fon=
t-optical-sizing: inherit; font-kerning: inherit; font-feature-settings: in=
herit; font-variation-settings: inherit; font-size: 15px; vertical-align: b=
aseline; box-sizing: inherit; clear: both; --_pr-img-mb: 0; --theme-base-pr=
imary-color-h: 27; --theme-base-primary-color-s: 89%; --theme-base-primary-=
color-l: 48%; --theme-primary-custom-100: hsl(var(--theme-base-primary-colo=
r-h), var(--theme-base-primary-color-s), calc(var(--theme-base-primary-colo=
r-l) + ((100% - var(--theme-base-primary-color-l)) * .9))); --theme-primary=
-custom-200: hsl(var(--theme-base-primary-color-h), var(--theme-base-primar=
y-color-s), calc(var(--theme-base-primary-color-l) + ((100% - var(--theme-b=
ase-primary-color-l)) * .75))); --theme-primary-custom-300: hsl(var(--theme=
-base-primary-color-h), var(--theme-base-primary-color-s), calc(var(--theme=
-base-primary-color-l) + ((100% - var(--theme-base-primary-color-l)) * .5))=
); --theme-primary-custom-400: hsl(var(--theme-base-primary-color-h), var(-=
-theme-base-primary-color-s), var(--theme-base-primary-color-l)); --theme-p=
rimary-custom-500: hsl(var(--theme-base-primary-color-h), var(--theme-base-=
primary-color-s), calc(var(--theme-base-primary-color-l) + (var(--theme-bas=
e-primary-color-l) * -.3))); --theme-primary-custom-600: hsl(var(--theme-ba=
se-primary-color-h), var(--theme-base-primary-color-s), calc(var(--theme-ba=
se-primary-color-l) + (var(--theme-base-primary-color-l) * -.6))); --theme-=
primary-custom: var(--theme-primary-custom-400); --theme-button-color: init=
ial; --theme-button-hover-color: initial; --theme-button-hover-background-c=
olor: initial; --theme-button-active-background-color: initial; --theme-but=
ton-selected-color: initial; --theme-button-selected-background-color: init=
ial; --theme-button-outlined-border-color: initial; --theme-button-outlined=
-selected-border-color: initial; --theme-button-primary-color: initial; --t=
heme-button-primary-active-color: initial; --theme-button-primary-hover-col=
or: initial; --theme-button-primary-selected-color: initial; --theme-button=
-primary-background-color: initial; --theme-button-primary-active-backgroun=
d-color: initial; --theme-button-primary-hover-background-color: initial; -=
-theme-button-primary-selected-background-color: initial; --theme-backgroun=
d-color: var(--white); --theme-background-position: top left; --theme-backg=
round-repeat: repeat; --theme-background-size: auto; --theme-background-att=
achment: auto; --theme-content-background-color: var(--white); --theme-cont=
ent-border-color: var(--black-225); --theme-header-background-color: var(--=
theme-primary); --theme-header-background-position: center left; --theme-he=
ader-background-repeat: repeat; --theme-header-background-size: auto; --the=
me-header-background-border-bottom: 0; --theme-header-link-color: var(--the=
me-primary); --theme-header-sponsored-color: hsla(0,0%,100%,0.4); --theme-h=
eader-foreground-color: transparent; --theme-header-foreground-position: bo=
ttom right; --theme-header-foreground-repeat: no-repeat; --theme-header-for=
eground-size: auto; --theme-footer-background-color: hsl(210,8%,5%); --them=
e-footer-background-position: top left; --theme-footer-background-repeat: n=
o-repeat; --theme-footer-background-size: auto; --theme-footer-background-b=
order-top: 0; --theme-footer-title-color: var(--black-250); --theme-footer-=
text-color: var(--black-300); --theme-footer-link-color: var(--black-300); =
--theme-footer-link-color-hover: var(--black-200); --theme-footer-divider-c=
olor: var(--black-500); --theme-footer-padding-top: 0; --theme-footer-paddi=
ng-bottom: 0; --theme-link-color: initial; --theme-link-color-hover: initia=
l; --theme-link-color-visited: initial; --theme-body-font-family: var(--ff-=
sans); --theme-body-font-color: var(--black-600); --theme-post-title-font-f=
amily: var(--ff-sans); --theme-post-title-color: var(--theme-link-color); -=
-theme-post-title-color-hover: var(--theme-link-color-hover); --theme-post-=
title-color-visited: var(--theme-link-color-visited); --theme-post-body-fon=
t-family: var(--ff-sans); --theme-post-owner-background-color: var(--theme-=
secondary-100); --theme-post-owner-new-background-color: var(--theme-second=
ary-200); --theme-topbar-bottom-border: 1px solid var(--black-225); color: =
#0c0d0e; letter-spacing: normal; orphans: 2; text-align: left; text-indent:=
 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stro=
ke-width: 0px; white-space: normal; background-color: #ffffff; text-decorat=
ion-thickness: initial; text-decoration-style: initial; text-decoration-col=
or: initial;">When I looked at<span>&nbsp;</span><code style=3D"margin: 0px=
; padding: var(--su2) var(--su4); border: 0px; font-style: inherit; font-va=
riant: inherit; font-weight: inherit; font-stretch: inherit; line-height: i=
nherit; font-family: var(--ff-mono); font-optical-sizing: inherit; font-ker=
ning: inherit; font-feature-settings: inherit; font-variation-settings: inh=
erit; font-size: var(--_pr-code-fs); vertical-align: baseline; box-sizing: =
inherit; background-color: var(--black-200); white-space: pre-wrap; --theme=
-base-primary-color-h: 27; --theme-base-primary-color-s: 89%; --theme-base-=
primary-color-l: 48%; --theme-primary-custom-100: hsl(var(--theme-base-prim=
ary-color-h), var(--theme-base-primary-color-s), calc(var(--theme-base-prim=
ary-color-l) + ((100% - var(--theme-base-primary-color-l)) * .9))); --theme=
-primary-custom-200: hsl(var(--theme-base-primary-color-h), var(--theme-bas=
e-primary-color-s), calc(var(--theme-base-primary-color-l) + ((100% - var(-=
-theme-base-primary-color-l)) * .75))); --theme-primary-custom-300: hsl(var=
(--theme-base-primary-color-h), var(--theme-base-primary-color-s), calc(var=
(--theme-base-primary-color-l) + ((100% - var(--theme-base-primary-color-l)=
) * .5))); --theme-primary-custom-400: hsl(var(--theme-base-primary-color-h=
), var(--theme-base-primary-color-s), var(--theme-base-primary-color-l)); -=
-theme-primary-custom-500: hsl(var(--theme-base-primary-color-h), var(--the=
me-base-primary-color-s), calc(var(--theme-base-primary-color-l) + (var(--t=
heme-base-primary-color-l) * -.3))); --theme-primary-custom-600: hsl(var(--=
theme-base-primary-color-h), var(--theme-base-primary-color-s), calc(var(--=
theme-base-primary-color-l) + (var(--theme-base-primary-color-l) * -.6))); =
--theme-primary-custom: var(--theme-primary-custom-400); --theme-button-col=
or: initial; --theme-button-hover-color: initial; --theme-button-hover-back=
ground-color: initial; --theme-button-active-background-color: initial; --t=
heme-button-selected-color: initial; --theme-button-selected-background-col=
or: initial; --theme-button-outlined-border-color: initial; --theme-button-=
outlined-selected-border-color: initial; --theme-button-primary-color: init=
ial; --theme-button-primary-active-color: initial; --theme-button-primary-h=
over-color: initial; --theme-button-primary-selected-color: initial; --them=
e-button-primary-background-color: initial; --theme-button-primary-active-b=
ackground-color: initial; --theme-button-primary-hover-background-color: in=
itial; --theme-button-primary-selected-background-color: initial; --theme-b=
ackground-color: var(--white); --theme-background-position: top left; --the=
me-background-repeat: repeat; --theme-background-size: auto; --theme-backgr=
ound-attachment: auto; --theme-content-background-color: var(--white); --th=
eme-content-border-color: var(--black-225); --theme-header-background-color=
: var(--theme-primary); --theme-header-background-position: center left; --=
theme-header-background-repeat: repeat; --theme-header-background-size: aut=
o; --theme-header-background-border-bottom: 0; --theme-header-link-color: v=
ar(--theme-primary); --theme-header-sponsored-color: hsla(0,0%,100%,0.4); -=
-theme-header-foreground-color: transparent; --theme-header-foreground-posi=
tion: bottom right; --theme-header-foreground-repeat: no-repeat; --theme-he=
ader-foreground-size: auto; --theme-footer-background-color: hsl(210,8%,5%)=
; --theme-footer-background-position: top left; --theme-footer-background-r=
epeat: no-repeat; --theme-footer-background-size: auto; --theme-footer-back=
ground-border-top: 0; --theme-footer-title-color: var(--black-250); --theme=
-footer-text-color: var(--black-300); --theme-footer-link-color: var(--blac=
k-300); --theme-footer-link-color-hover: var(--black-200); --theme-footer-d=
ivider-color: var(--black-500); --theme-footer-padding-top: 0; --theme-foot=
er-padding-bottom: 0; --theme-link-color: initial; --theme-link-color-hover=
: initial; --theme-link-color-visited: initial; --theme-body-font-family: v=
ar(--ff-sans); --theme-body-font-color: var(--black-600); --theme-post-titl=
e-font-family: var(--ff-sans); --theme-post-title-color: var(--theme-link-c=
olor); --theme-post-title-color-hover: var(--theme-link-color-hover); --the=
me-post-title-color-visited: var(--theme-link-color-visited); --theme-post-=
body-font-family: var(--ff-sans); --theme-post-owner-background-color: var(=
--theme-secondary-100); --theme-post-owner-new-background-color: var(--them=
e-secondary-200); --theme-topbar-bottom-border: 1px solid var(--black-225);=
 color: var(--black-600); border-radius: var(--br-sm);">Xorg.0.log</code><s=
pan>&nbsp;</span>file, found that Xserver is unable to find device node(<co=
de style=3D"margin: 0px; padding: var(--su2) var(--su4); border: 0px; font-=
style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: =
inherit; line-height: inherit; font-family: var(--ff-mono); font-optical-si=
zing: inherit; font-kerning: inherit; font-feature-settings: inherit; font-=
variation-settings: inherit; font-size: var(--_pr-code-fs); vertical-align:=
 baseline; box-sizing: inherit; background-color: var(--black-200); white-s=
pace: pre-wrap; --theme-base-primary-color-h: 27; --theme-base-primary-colo=
r-s: 89%; --theme-base-primary-color-l: 48%; --theme-primary-custom-100: hs=
l(var(--theme-base-primary-color-h), var(--theme-base-primary-color-s), cal=
c(var(--theme-base-primary-color-l) + ((100% - var(--theme-base-primary-col=
or-l)) * .9))); --theme-primary-custom-200: hsl(var(--theme-base-primary-co=
lor-h), var(--theme-base-primary-color-s), calc(var(--theme-base-primary-co=
lor-l) + ((100% - var(--theme-base-primary-color-l)) * .75))); --theme-prim=
ary-custom-300: hsl(var(--theme-base-primary-color-h), var(--theme-base-pri=
mary-color-s), calc(var(--theme-base-primary-color-l) + ((100% - var(--them=
e-base-primary-color-l)) * .5))); --theme-primary-custom-400: hsl(var(--the=
me-base-primary-color-h), var(--theme-base-primary-color-s), var(--theme-ba=
se-primary-color-l)); --theme-primary-custom-500: hsl(var(--theme-base-prim=
ary-color-h), var(--theme-base-primary-color-s), calc(var(--theme-base-prim=
ary-color-l) + (var(--theme-base-primary-color-l) * -.3))); --theme-primary=
-custom-600: hsl(var(--theme-base-primary-color-h), var(--theme-base-primar=
y-color-s), calc(var(--theme-base-primary-color-l) + (var(--theme-base-prim=
ary-color-l) * -.6))); --theme-primary-custom: var(--theme-primary-custom-4=
00); --theme-button-color: initial; --theme-button-hover-color: initial; --=
theme-button-hover-background-color: initial; --theme-button-active-backgro=
und-color: initial; --theme-button-selected-color: initial; --theme-button-=
selected-background-color: initial; --theme-button-outlined-border-color: i=
nitial; --theme-button-outlined-selected-border-color: initial; --theme-but=
ton-primary-color: initial; --theme-button-primary-active-color: initial; -=
-theme-button-primary-hover-color: initial; --theme-button-primary-selected=
-color: initial; --theme-button-primary-background-color: initial; --theme-=
button-primary-active-background-color: initial; --theme-button-primary-hov=
er-background-color: initial; --theme-button-primary-selected-background-co=
lor: initial; --theme-background-color: var(--white); --theme-background-po=
sition: top left; --theme-background-repeat: repeat; --theme-background-siz=
e: auto; --theme-background-attachment: auto; --theme-content-background-co=
lor: var(--white); --theme-content-border-color: var(--black-225); --theme-=
header-background-color: var(--theme-primary); --theme-header-background-po=
sition: center left; --theme-header-background-repeat: repeat; --theme-head=
er-background-size: auto; --theme-header-background-border-bottom: 0; --the=
me-header-link-color: var(--theme-primary); --theme-header-sponsored-color:=
 hsla(0,0%,100%,0.4); --theme-header-foreground-color: transparent; --theme=
-header-foreground-position: bottom right; --theme-header-foreground-repeat=
: no-repeat; --theme-header-foreground-size: auto; --theme-footer-backgroun=
d-color: hsl(210,8%,5%); --theme-footer-background-position: top left; --th=
eme-footer-background-repeat: no-repeat; --theme-footer-background-size: au=
to; --theme-footer-background-border-top: 0; --theme-footer-title-color: va=
r(--black-250); --theme-footer-text-color: var(--black-300); --theme-footer=
-link-color: var(--black-300); --theme-footer-link-color-hover: var(--black=
-200); --theme-footer-divider-color: var(--black-500); --theme-footer-paddi=
ng-top: 0; --theme-footer-padding-bottom: 0; --theme-link-color: initial; -=
-theme-link-color-hover: initial; --theme-link-color-visited: initial; --th=
eme-body-font-family: var(--ff-sans); --theme-body-font-color: var(--black-=
600); --theme-post-title-font-family: var(--ff-sans); --theme-post-title-co=
lor: var(--theme-link-color); --theme-post-title-color-hover: var(--theme-l=
ink-color-hover); --theme-post-title-color-visited: var(--theme-link-color-=
visited); --theme-post-body-font-family: var(--ff-sans); --theme-post-owner=
-background-color: var(--theme-secondary-100); --theme-post-owner-new-backg=
round-color: var(--theme-secondary-200); --theme-topbar-bottom-border: 1px =
solid var(--black-225); color: var(--black-600); border-radius: var(--br-sm=
);">/dev/dri/card0</code>).<br /><br />I am using scarthgap branch with 6.6=
.26 kernel.<br /><br />error:<br /><br />(II) modesetting: Driver for Modes=
etting Kernel Drivers: kms<br />(II) FBDEV: driver for framebuffer: fbdev<b=
r />(II) VESA: driver for VESA chipsets: vesa<br />(EE) <strong>open /dev/d=
ri/card0: No such file or directory</strong><br />(WW) Falling back to old =
probe method for modesetting<br />(EE) <strong>open /dev/dri/card0: No such=
 file or directory</strong><br />(II) Loading sub module "fbdevhw"<br />(II=
) LoadModule: "fbdevhw"<br />(II) Loading /usr/lib/xorg/modules/libfbdevhw.=
so<br />(II) Module fbdevhw: vendor=3D"X.Org Foundation"<br />&nbsp; &nbsp;=
 compiled for 1.21.1.11, module version =3D 0.0.2<br />&nbsp; &nbsp; ABI cl=
ass: X.Org Video Driver, version 25.2<br />(EE) Unable to find a valid fram=
ebuffer device<br />(WW) Falling back to old probe method for fbdev<br />(I=
I) Loading sub module "fbdevhw"<br />(II) LoadModule: "fbdevhw"<br />(II) L=
oading /usr/lib/xorg/modules/libfbdevhw.so<br />(II) Module fbdevhw: vendor=
=3D"X.Org Foundation"<br />&nbsp; &nbsp; compiled for 1.21.1.11, module ver=
sion =3D 0.0.2<br />&nbsp; &nbsp; ABI class: X.Org Video Driver, version 25=
.2<br />(EE) open /dev/fb0: No such file or directory<br />vesa: Ignoring d=
evice with a bound kernel driver<br />(EE) Screen 0 deleted because of no m=
atching config section.<br />(II) UnloadModule: "modesetting"<br />(EE) Scr=
een 0 deleted because of no matching config section.<br />(II) UnloadModule=
: "fbdev"<br />(II) UnloadSubModule: "fbdevhw"<br />(EE) Screen 0 deleted b=
ecause of no matching config section.<br />(II) UnloadModule: "vesa"<br />(=
EE) Device(s) detected, but none match those in the config file.<br /><br /=
><span style=3D"color: #3b4045; font-family: -apple-system, BlinkMacSystemF=
ont, 'Segoe UI Adjusted', 'Segoe UI', 'Liberation Sans', sans-serif; font-s=
ize: 15px; font-style: normal; font-variant-ligatures: normal; font-variant=
-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-a=
lign: left; text-indent: 0px; text-transform: none; widows: 2; word-spacing=
: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-colo=
r: #ffffff; text-decoration-thickness: initial; text-decoration-style: init=
ial; text-decoration-color: initial; display: inline !important; float: non=
e;">can you please help here!</span></p>

--VwqRGCjdzKxTt9RxjRs8--

