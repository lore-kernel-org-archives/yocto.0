Return-Path: <gavrosc@yahoo.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8D9FBC3DA42
	for <webhook@archiver.kernel.org>; Sat, 13 Jul 2024 15:32:04 +0000 (UTC)
Subject: Bitbake: arm-poky-linux-gnueabi-gcc not found
To: yocto@lists.yoctoproject.org
From: gavrosc@yahoo.com
X-Originating-Location: =?UTF-8?B?VmFlc3RyYSBGcm9lbHVuZGEsIFbDpHN0cmEgR8O2dGFsYW5kIENvdW50eSwgU0U=?= (83.253.125.5)
X-Originating-Platform: Mac Safari 17.5
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 13 Jul 2024 08:31:58 -0700
Message-ID: <xXO5.1720884718448336000.EfxL@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Ygfx1V3RZRowNQqFdaAX"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 13 Jul 2024 15:32:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63483

--Ygfx1V3RZRowNQqFdaAX
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi
i am using ubuntu 22.04.4 LTS, bitbake 2.8.0, poky scarthgap branch and bea=
glebone black. I have created my own layer and my own helloworld recipe whi=
ch contain a helloworld.c. I would like to execute it in beaglebone black. =
When i am trying to execute 'bitbake helloworld' i am getting the error arm=
-poky-linux-gnueabi-gcc: not found.

Do i have to install arm-poky-linux-gnueabi-gcc or am i missing something e=
lse?

Here is the helloworld.bb file:

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

DESCRIPTION =3D "Hello World application"

SECTION =3D "examples"
LICENSE =3D "MIT"
LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bc=
f8506ecda2f7b4f302"

SRC_URI =3D "file://helloworld.c"

S =3D "${WORKDIR}"

do_compile() {
   ${CC} ${CFLAGS} ${LDFLAGS} helloworld.c -o helloworld
}

do_install() {
   install -d ${D}${bindir}
   install -m 0755 helloworld ${D}${bindir}
}

# Disable default dependency checks (including SHA256)
INHIBIT_DEFAULT_DEPS =3D "1"

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D

--Ygfx1V3RZRowNQqFdaAX
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p style=3D"font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-st=
roke-width: 0px; text-decoration: none; margin: 0px 0px 1.1em; padding: 0px=
; border: 0px; font-stretch: inherit; line-height: inherit; font-family: -a=
pple-system, BlinkMacSystemFont, 'Segoe UI Adjusted', 'Segoe UI', 'Liberati=
on Sans', sans-serif; font-size-adjust: inherit; font-kerning: inherit; fon=
t-variant-alternates: inherit; font-variant-ligatures: inherit; font-varian=
t-numeric: inherit; font-variant-east-asian: inherit; font-variant-position=
: inherit; font-feature-settings: inherit; font-optical-sizing: inherit; fo=
nt-variation-settings: inherit; font-size: 15px; vertical-align: baseline; =
box-sizing: inherit; clear: both; caret-color: #0c0d0e; color: #0c0d0e; tex=
t-align: left;">Hi<br />i am using ubuntu 22.04.4 LTS, bitbake 2.8.0, poky =
scarthgap branch and beaglebone black. I have created my own layer and my o=
wn helloworld recipe which contain a helloworld.c. I would like to execute =
it in beaglebone black. When i am trying to execute 'bitbake helloworld' i =
am getting the error arm-poky-linux-gnueabi-gcc: not found.</p>
<p style=3D"font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-st=
roke-width: 0px; text-decoration: none; margin: 0px 0px 1.1em; padding: 0px=
; border: 0px; font-stretch: inherit; line-height: inherit; font-family: -a=
pple-system, BlinkMacSystemFont, 'Segoe UI Adjusted', 'Segoe UI', 'Liberati=
on Sans', sans-serif; font-size-adjust: inherit; font-kerning: inherit; fon=
t-variant-alternates: inherit; font-variant-ligatures: inherit; font-varian=
t-numeric: inherit; font-variant-east-asian: inherit; font-variant-position=
: inherit; font-feature-settings: inherit; font-optical-sizing: inherit; fo=
nt-variation-settings: inherit; font-size: 15px; vertical-align: baseline; =
box-sizing: inherit; clear: both; caret-color: #0c0d0e; color: #0c0d0e; tex=
t-align: left;">Do i have to install arm-poky-linux-gnueabi-gcc or am i mis=
sing something else?</p>
<p style=3D"font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-st=
roke-width: 0px; text-decoration: none; margin: 0px 0px 1.1em; padding: 0px=
; border: 0px; font-stretch: inherit; line-height: inherit; font-family: -a=
pple-system, BlinkMacSystemFont, 'Segoe UI Adjusted', 'Segoe UI', 'Liberati=
on Sans', sans-serif; font-size-adjust: inherit; font-kerning: inherit; fon=
t-variant-alternates: inherit; font-variant-ligatures: inherit; font-varian=
t-numeric: inherit; font-variant-east-asian: inherit; font-variant-position=
: inherit; font-feature-settings: inherit; font-optical-sizing: inherit; fo=
nt-variation-settings: inherit; font-size: 15px; vertical-align: baseline; =
box-sizing: inherit; clear: both; caret-color: #0c0d0e; color: #0c0d0e; tex=
t-align: left;">Here is the helloworld.bb file:<br /><br />=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br /><br /></p>
<pre style=3D"font-style: normal; font-variant-caps: normal; font-weight: 4=
00; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform=
: none; widows: auto; word-spacing: 0px; -webkit-text-stroke-width: 0px; te=
xt-decoration: none; margin: 0px 0px calc(1.5em); padding: var(--su12); bor=
der: 0px; font-stretch: inherit; line-height: var(--lh-md); font-family: va=
r(--ff-mono); font-size-adjust: inherit; font-kerning: inherit; font-varian=
t-alternates: inherit; font-variant-ligatures: inherit; font-variant-numeri=
c: inherit; font-variant-east-asian: inherit; font-variant-position: inheri=
t; font-feature-settings: inherit; font-optical-sizing: inherit; font-varia=
tion-settings: inherit; font-size: var(--fs-body1); vertical-align: baselin=
e; box-sizing: inherit; width: auto; max-height: 600px; overflow: auto; bac=
kground-color: var(--highlight-bg); border-radius: var(--br-md); overflow-w=
rap: normal; color: #0c0d0e; caret-color: #0c0d0e; text-align: left;"><code=
 style=3D"margin: 0px; padding: 0px; border: 0px; font-style: inherit; font=
-variant-caps: inherit; font-weight: inherit; font-stretch: inherit; line-h=
eight: inherit; font-family: var(--ff-mono); font-size-adjust: inherit; fon=
t-kerning: inherit; font-variant-alternates: inherit; font-variant-ligature=
s: inherit; font-variant-numeric: inherit; font-variant-east-asian: inherit=
; font-variant-position: inherit; font-feature-settings: inherit; font-opti=
cal-sizing: inherit; font-variation-settings: inherit; font-size: var(--_pr=
-code-fs); vertical-align: baseline; box-sizing: inherit; background-color:=
 transparent; white-space: inherit; --theme-base-primary-color-h: 27; --the=
me-base-primary-color-s: 89%; --theme-base-primary-color-l: 48%; --theme-pr=
imary-custom-100: hsl(var(--theme-base-primary-color-h), var(--theme-base-p=
rimary-color-s), calc(var(--theme-base-primary-color-l) + ((100% - var(--th=
eme-base-primary-color-l)) * 0.9))); --theme-primary-custom-200: hsl(var(--=
theme-base-primary-color-h), var(--theme-base-primary-color-s), calc(var(--=
theme-base-primary-color-l) + ((100% - var(--theme-base-primary-color-l)) *=
 0.75))); --theme-primary-custom-300: hsl(var(--theme-base-primary-color-h)=
, var(--theme-base-primary-color-s), calc(var(--theme-base-primary-color-l)=
 + ((100% - var(--theme-base-primary-color-l)) * 0.5))); --theme-primary-cu=
stom-400: hsl(var(--theme-base-primary-color-h), var(--theme-base-primary-c=
olor-s), var(--theme-base-primary-color-l)); --theme-primary-custom-500: hs=
l(var(--theme-base-primary-color-h), var(--theme-base-primary-color-s), cal=
c(var(--theme-base-primary-color-l) + (var(--theme-base-primary-color-l) * =
-0.3))); --theme-primary-custom-600: hsl(var(--theme-base-primary-color-h),=
 var(--theme-base-primary-color-s), calc(var(--theme-base-primary-color-l) =
+ (var(--theme-base-primary-color-l) * -0.6))); --theme-primary-custom: var=
(--theme-primary-custom-400); --theme-button-color: initial; --theme-button=
-hover-color: initial; --theme-button-hover-background-color: initial; --th=
eme-button-active-background-color: initial; --theme-button-selected-color:=
 initial; --theme-button-selected-background-color: initial; --theme-button=
-outlined-border-color: initial; --theme-button-outlined-selected-border-co=
lor: initial; --theme-button-primary-color: initial; --theme-button-primary=
-active-color: initial; --theme-button-primary-hover-color: initial; --them=
e-button-primary-selected-color: initial; --theme-button-primary-background=
-color: initial; --theme-button-primary-active-background-color: initial; -=
-theme-button-primary-hover-background-color: initial; --theme-button-prima=
ry-selected-background-color: initial; --theme-background-color: var(--whit=
e); --theme-background-position: top left; --theme-background-repeat: repea=
t; --theme-background-size: auto; --theme-background-attachment: auto; --th=
eme-content-background-color: var(--white); --theme-content-border-color: v=
ar(--black-225); --theme-header-background-color: var(--theme-primary); --t=
heme-header-background-position: center left; --theme-header-background-rep=
eat: repeat; --theme-header-background-size: auto; --theme-header-backgroun=
d-border-bottom: 0; --theme-header-link-color: var(--theme-primary); --them=
e-header-sponsored-color: hsla(0,0%,100%,0.4); --theme-header-foreground-co=
lor: transparent; --theme-header-foreground-position: bottom right; --theme=
-header-foreground-repeat: no-repeat; --theme-header-foreground-size: auto;=
 --theme-footer-background-color: hsl(210,8%,5%); --theme-footer-background=
-position: top left; --theme-footer-background-repeat: no-repeat; --theme-f=
ooter-background-size: auto; --theme-footer-background-border-top: 0; --the=
me-footer-title-color: var(--black-250); --theme-footer-text-color: var(--b=
lack-300); --theme-footer-link-color: var(--black-300); --theme-footer-link=
-color-hover: var(--black-200); --theme-footer-divider-color: var(--black-5=
00); --theme-footer-padding-top: 0; --theme-footer-padding-bottom: 0; --the=
me-link-color: initial; --theme-link-color-hover: initial; --theme-link-col=
or-visited: initial; --theme-body-font-family: var(--ff-sans); --theme-body=
-font-color: var(--black-600); --theme-post-title-font-family: var(--ff-san=
s); --theme-post-title-color: var(--theme-link-color); --theme-post-title-c=
olor-hover: var(--theme-link-color-hover); --theme-post-title-color-visited=
: var(--theme-link-color-visited); --theme-post-body-font-family: var(--ff-=
sans); --theme-post-owner-background-color: var(--theme-secondary-100); --t=
heme-post-owner-new-background-color: var(--theme-secondary-200); --theme-t=
opbar-bottom-border: 1px solid var(--black-225); color: var(--black-600); b=
order-radius: 0px;">DESCRIPTION =3D "Hello World application"

SECTION =3D "examples"
LICENSE =3D "MIT"
LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bc=
f8506ecda2f7b4f302"


SRC_URI =3D "file://helloworld.c"

S =3D "${WORKDIR}"

do_compile() {
    ${CC} ${CFLAGS} ${LDFLAGS} helloworld.c -o helloworld
}

do_install() {
    install -d ${D}${bindir}
    install -m 0755 helloworld ${D}${bindir}
}

# Disable default dependency checks (including SHA256)
INHIBIT_DEFAULT_DEPS =3D "1"
</code></pre>
<p style=3D"font-style: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; orphans: auto; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; -webkit-text-st=
roke-width: 0px; text-decoration: none; margin: 0px 0px 1.1em; padding: 0px=
; border: 0px; font-stretch: inherit; line-height: inherit; font-family: -a=
pple-system, BlinkMacSystemFont, 'Segoe UI Adjusted', 'Segoe UI', 'Liberati=
on Sans', sans-serif; font-size-adjust: inherit; font-kerning: inherit; fon=
t-variant-alternates: inherit; font-variant-ligatures: inherit; font-varian=
t-numeric: inherit; font-variant-east-asian: inherit; font-variant-position=
: inherit; font-feature-settings: inherit; font-optical-sizing: inherit; fo=
nt-variation-settings: inherit; font-size: 15px; vertical-align: baseline; =
box-sizing: inherit; clear: both; caret-color: #0c0d0e; color: #0c0d0e; tex=
t-align: left;"><br /><br /><br /><br />=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</p>

--Ygfx1V3RZRowNQqFdaAX--

