Return-Path: <ganesh.manoj.mahajan@signify.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4C8AC02183
	for <webhook@archiver.kernel.org>; Fri, 17 Jan 2025 13:05:18 +0000 (UTC)
Subject: [scarthgap] Gplv2 layer incompatibility
To: yocto@lists.yoctoproject.org
From: "Ganesh Mahajan" <ganesh.manoj.mahajan@signify.com>
X-Originating-Location: IN (165.225.124.181)
X-Originating-Platform: Windows Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 17 Jan 2025 05:05:14 -0800
Message-ID: <Lxlg.1737119114497277084.OacT@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="H3ROuFryknIIev2ZsDxL"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Jan 2025 13:05:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64575

--H3ROuFryknIIev2ZsDxL
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

As we have phased out meta-gplv2 for Scarthgap, but my system needs gplv2 a=
nd also i need to upgrade to scarthgap. Is there a way to have both accompl=
ished.
I am getting below error. When i run bitbake.

build@ubuntu-bionic:~/project/build$ bitbake
ERROR: Layer gplv2 is not compatible with the core layer which only support=
s these series: scarthgap (layer is compatible with dunfell)

--H3ROuFryknIIev2ZsDxL
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div><span style=3D"color: #333333; font-family: system-ui, 'Segoe UI', Rob=
oto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, '=
Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'=
; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2=
; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; backgr=
ound-color: #ffffff; text-decoration-thickness: initial; text-decoration-st=
yle: initial; text-decoration-color: initial; display: inline !important; f=
loat: none;">As we have phased out meta-gplv2 for Scarthgap, but my system =
needs gplv2 and also i need to upgrade to scarthgap. Is there a way to have=
 both accomplished.</span><br style=3D"box-sizing: border-box; overflow-wra=
p: break-word !important; color: #333333; font-family: system-ui, 'Segoe UI=
', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-se=
rif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color =
Emoji'; font-size: 16px; font-style: normal; font-variant-ligatures: normal=
; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orph=
ans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: =
2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; =
background-color: #ffffff; text-decoration-thickness: initial; text-decorat=
ion-style: initial; text-decoration-color: initial;" /><span style=3D"color=
: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'N=
oto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji', 'Sego=
e UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-s=
tyle: normal; font-variant-ligatures: normal; font-variant-caps: normal; fo=
nt-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text=
-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-t=
ext-stroke-width: 0px; white-space: normal; background-color: #ffffff; text=
-decoration-thickness: initial; text-decoration-style: initial; text-decora=
tion-color: initial; display: inline !important; float: none;">I am getting=
 below error. When i run bitbake.</span><br style=3D"box-sizing: border-box=
; overflow-wrap: break-word !important; color: #333333; font-family: system=
-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', =
Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol'=
, 'Noto Color Emoji'; font-size: 16px; font-style: normal; font-variant-lig=
atures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing=
: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: =
none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-s=
pace: normal; background-color: #ffffff; text-decoration-thickness: initial=
; text-decoration-style: initial; text-decoration-color: initial;" /><br st=
yle=3D"box-sizing: border-box; overflow-wrap: break-word !important; color:=
 #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'No=
to Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji', 'Segoe=
 UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-st=
yle: normal; font-variant-ligatures: normal; font-variant-caps: normal; fon=
t-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-=
indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px; white-space: normal; background-color: #ffffff; text-=
decoration-thickness: initial; text-decoration-style: initial; text-decorat=
ion-color: initial;" /><span style=3D"color: #333333; font-family: system-u=
i, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Ar=
ial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', =
'Noto Color Emoji'; font-size: 16px; font-style: normal; font-variant-ligat=
ures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: =
normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: no=
ne; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-spa=
ce: normal; background-color: #ffffff; text-decoration-thickness: initial; =
text-decoration-style: initial; text-decoration-color: initial; display: in=
line !important; float: none;">build@ubuntu-bionic:~/project/build$ bitbake=
</span><br style=3D"box-sizing: border-box; overflow-wrap: break-word !impo=
rtant; color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helveti=
ca Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color E=
moji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: =
16px; font-style: normal; font-variant-ligatures: normal; font-variant-caps=
: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align:=
 start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0p=
x; -webkit-text-stroke-width: 0px; white-space: normal; background-color: #=
ffffff; text-decoration-thickness: initial; text-decoration-style: initial;=
 text-decoration-color: initial;" /><span style=3D"color: #333333; font-fam=
ily: system-ui, 'Segoe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberat=
ion Sans', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe=
 UI Symbol', 'Noto Color Emoji'; font-size: 16px; font-style: normal; font-=
variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; let=
ter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-=
transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0=
px; white-space: normal; background-color: #ffffff; text-decoration-thickne=
ss: initial; text-decoration-style: initial; text-decoration-color: initial=
; display: inline !important; float: none;">ERROR: Layer gplv2 is not compa=
tible with the core layer which only supports these series: scarthgap (laye=
r is compatible with dunfell)</span></div>

--H3ROuFryknIIev2ZsDxL--

