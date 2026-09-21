Return-Path: <diwateprashant44@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4360BC982EE
	for <webhook@archiver.kernel.org>; Mon, 21 Sep 2026 13:23:54 +0000 (UTC)
Subject: [ANNOUNCE] open-source Embedded Linux device fleet management platform 
To: yocto@lists.yoctoproject.org
From: "Prashant Divate" <diwateprashant44@gmail.com>
X-Originating-Location: Bengaluru, Karnataka, IN (49.43.240.245)
X-Originating-Platform: Windows Chrome 153
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 21 Sep 2026 06:23:46 -0700
Message-ID: <a7zA.1789997026143862663.WNvz@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ul93aEmx7S5x2fmQArix"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 21 Sep 2026 13:23:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66737

--ul93aEmx7S5x2fmQArix
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Managing a Linux fleet shouldn=E2=80=99t mean replacing the update mechanis=
m your devices already use.

That=E2=80=99s the idea behind *Soul Room* , an open-source fleet-managemen=
t platform for embedded Linux and edge devices.
After months of development, testing, and iteration, I built Soul Room to b=
ring device visibility, remote access, and update workflows together for te=
ams working with *Yocto-based systems* , and other embedded Linux distribut=
ions like Ubuntu.

One important design choice: work with the device=E2=80=99s existing update=
 approach.
Soul Room supports capability-aware workflows for Mender, RAUC, OSTree, SWU=
pdate, Flatpak applications and product-specific adapter plugins, so teams =
can retain the update mechanism already validated for their devices through=
 a secure channel

What=E2=80=99s available in the beta?
=E2=80=A2 *User/role management* with different roles so cross-teams can ac=
cess the platform.
=E2=80=A2 Device enrollment with *TLS support* , live fleet monitoring and =
system telemetry.
=E2=80=A2 Hardware/software inventory, plus CVE and security-advisory visib=
ility.
=E2=80=A2 *Remote device access* through integrated ShellHub support.
=E2=80=A2 Jobs, deployments and controlled *secure OTA update campaigns*.

The platform also includes *fleet mapping, alerts, audit logs and role mana=
gement*. A portable Linux agent for system and the cloud platform can be de=
ployed using Docker Compose.
My goal is a practical, vendor-neutral platform that gives engineering team=
s visibility and control without tying them to one hardware vendor or Linux=
 distribution.

Repository: https://github.com/prashantdivate/soul-room-edge-platform
This is a first public beta, and I=E2=80=99d like the next iterations to be=
 shaped by people working with real devices.

Embedded Linux and Yocto developers: try it on a non-production device and =
tell me what works, what breaks, and what=E2=80=99s missing. Contributors a=
nd teams interested in pilot deployments are welcome.
What=E2=80=99s the biggest gap in your current fleet-management workflow?

--ul93aEmx7S5x2fmQArix
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div><span style=3D"color: rgba(0, 0, 0, 0.9); font-family: system-ui, -app=
le-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Ubuntu, Oxygen, Cantarel=
l, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', Arial, sans-serif, 'Apple C=
olor Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol'; font-size: 14px; font-sty=
le: normal; font-variant-ligatures: normal; font-variant-caps: normal; font=
-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-i=
ndent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-tex=
t-stroke-width: 0px; white-space: pre-wrap; background-color: #ffffff; text=
-decoration-thickness: initial; text-decoration-style: initial; text-decora=
tion-color: initial; display: inline !important; float: none;">Managing a L=
inux fleet shouldn&rsquo;t mean replacing the update mechanism your devices=
 already use.</span><br style=3D"box-sizing: border-box; color: rgba(0, 0, =
0, 0.9); font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe =
UI', Roboto, Ubuntu, Oxygen, Cantarell, 'Fira Sans', 'Droid Sans', 'Helveti=
ca Neue', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe =
UI Symbol'; font-size: 14px; font-style: normal; font-variant-ligatures: no=
rmal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: 2; text-align: start; text-indent: 0px; text-transform: none; wido=
ws: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-=
wrap; background-color: #ffffff; text-decoration-thickness: initial; text-d=
ecoration-style: initial; text-decoration-color: initial;" /><br style=3D"b=
ox-sizing: border-box; color: rgba(0, 0, 0, 0.9); font-family: system-ui, -=
apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Ubuntu, Oxygen, Canta=
rell, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', Arial, sans-serif, 'Appl=
e Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol'; font-size: 14px; font-=
style: normal; font-variant-ligatures: normal; font-variant-caps: normal; f=
ont-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; tex=
t-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; white-space: pre-wrap; background-color: #ffffff; t=
ext-decoration-thickness: initial; text-decoration-style: initial; text-dec=
oration-color: initial;" /><span style=3D"color: rgba(0, 0, 0, 0.9); font-f=
amily: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Ub=
untu, Oxygen, Cantarell, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', Arial=
, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol'; fon=
t-size: 14px; font-style: normal; font-variant-ligatures: normal; font-vari=
ant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; tex=
t-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spa=
cing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; backgroun=
d-color: #ffffff; text-decoration-thickness: initial; text-decoration-style=
: initial; text-decoration-color: initial; display: inline !important; floa=
t: none;">That&rsquo;s the idea behind <strong>Soul Room</strong>, an open-=
source fleet-management platform for embedded Linux and edge devices.</span=
><br style=3D"box-sizing: border-box; color: rgba(0, 0, 0, 0.9); font-famil=
y: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Ubuntu=
, Oxygen, Cantarell, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', Arial, sa=
ns-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol'; font-si=
ze: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-al=
ign: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing=
: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; background-co=
lor: #ffffff; text-decoration-thickness: initial; text-decoration-style: in=
itial; text-decoration-color: initial;" /><span style=3D"color: rgba(0, 0, =
0, 0.9); font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe =
UI', Roboto, Ubuntu, Oxygen, Cantarell, 'Fira Sans', 'Droid Sans', 'Helveti=
ca Neue', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe =
UI Symbol'; font-size: 14px; font-style: normal; font-variant-ligatures: no=
rmal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: 2; text-align: start; text-indent: 0px; text-transform: none; wido=
ws: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-=
wrap; background-color: #ffffff; text-decoration-thickness: initial; text-d=
ecoration-style: initial; text-decoration-color: initial; display: inline !=
important; float: none;">After months of development, testing, and iteratio=
n, I built Soul Room to bring device visibility, remote access, and update =
workflows together for teams working with <strong>Yocto-based systems</stro=
ng>, and other embedded Linux distributions like <span style=3D"color: rgba=
(0, 0, 0, 0.9); font-family: system-ui, -apple-system, BlinkMacSystemFont, =
'Segoe UI', Roboto, Ubuntu, Oxygen, Cantarell, 'Fira Sans', 'Droid Sans', '=
Helvetica Neue', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', =
'Segoe UI Symbol'; font-size: 14px; font-style: normal; font-variant-ligatu=
res: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: n=
ormal; orphans: 2; text-align: start; text-indent: 0px; text-transform: non=
e; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-spac=
e: pre-wrap; background-color: #ffffff; text-decoration-thickness: initial;=
 text-decoration-style: initial; text-decoration-color: initial; display: i=
nline !important; float: none;">Ubuntu.</span></span><br style=3D"box-sizin=
g: border-box; color: rgba(0, 0, 0, 0.9); font-family: system-ui, -apple-sy=
stem, BlinkMacSystemFont, 'Segoe UI', Roboto, Ubuntu, Oxygen, Cantarell, 'F=
ira Sans', 'Droid Sans', 'Helvetica Neue', Arial, sans-serif, 'Apple Color =
Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol'; font-size: 14px; font-style: n=
ormal; font-variant-ligatures: normal; font-variant-caps: normal; font-weig=
ht: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent=
: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-str=
oke-width: 0px; white-space: pre-wrap; background-color: #ffffff; text-deco=
ration-thickness: initial; text-decoration-style: initial; text-decoration-=
color: initial;" /><br style=3D"box-sizing: border-box; color: rgba(0, 0, 0=
, 0.9); font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe U=
I', Roboto, Ubuntu, Oxygen, Cantarell, 'Fira Sans', 'Droid Sans', 'Helvetic=
a Neue', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe U=
I Symbol'; font-size: 14px; font-style: normal; font-variant-ligatures: nor=
mal; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; o=
rphans: 2; text-align: start; text-indent: 0px; text-transform: none; widow=
s: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-w=
rap; background-color: #ffffff; text-decoration-thickness: initial; text-de=
coration-style: initial; text-decoration-color: initial;" /><span style=3D"=
color: rgba(0, 0, 0, 0.9); font-family: system-ui, -apple-system, BlinkMacS=
ystemFont, 'Segoe UI', Roboto, Ubuntu, Oxygen, Cantarell, 'Fira Sans', 'Dro=
id Sans', 'Helvetica Neue', Arial, sans-serif, 'Apple Color Emoji', 'Segoe =
UI Emoji', 'Segoe UI Symbol'; font-size: 14px; font-style: normal; font-var=
iant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter=
-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tra=
nsform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;=
 white-space: pre-wrap; background-color: #ffffff; text-decoration-thicknes=
s: initial; text-decoration-style: initial; text-decoration-color: initial;=
 display: inline !important; float: none;">One important design choice: wor=
k with the device&rsquo;s existing update approach.</span><br style=3D"box-=
sizing: border-box; color: rgba(0, 0, 0, 0.9); font-family: system-ui, -app=
le-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Ubuntu, Oxygen, Cantarel=
l, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', Arial, sans-serif, 'Apple C=
olor Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol'; font-size: 14px; font-sty=
le: normal; font-variant-ligatures: normal; font-variant-caps: normal; font=
-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-i=
ndent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-tex=
t-stroke-width: 0px; white-space: pre-wrap; background-color: #ffffff; text=
-decoration-thickness: initial; text-decoration-style: initial; text-decora=
tion-color: initial;" /><span style=3D"color: rgba(0, 0, 0, 0.9); font-fami=
ly: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Ubunt=
u, Oxygen, Cantarell, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', Arial, s=
ans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol'; font-s=
ize: 14px; font-style: normal; font-variant-ligatures: normal; font-variant=
-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-a=
lign: start; text-indent: 0px; text-transform: none; widows: 2; word-spacin=
g: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; background-c=
olor: #ffffff; text-decoration-thickness: initial; text-decoration-style: i=
nitial; text-decoration-color: initial; display: inline !important; float: =
none;">Soul Room supports capability-aware workflows for Mender, RAUC, OSTr=
ee, SWUpdate, Flatpak applications and product-specific adapter plugins, so=
 teams can retain the update mechanism already validated for their devices =
through a secure channel</span><br style=3D"box-sizing: border-box; color: =
rgba(0, 0, 0, 0.9); font-family: system-ui, -apple-system, BlinkMacSystemFo=
nt, 'Segoe UI', Roboto, Ubuntu, Oxygen, Cantarell, 'Fira Sans', 'Droid Sans=
', 'Helvetica Neue', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoj=
i', 'Segoe UI Symbol'; font-size: 14px; font-style: normal; font-variant-li=
gatures: normal; font-variant-caps: normal; font-weight: 400; letter-spacin=
g: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform:=
 none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-=
space: pre-wrap; background-color: #ffffff; text-decoration-thickness: init=
ial; text-decoration-style: initial; text-decoration-color: initial;" /><br=
 style=3D"box-sizing: border-box; color: rgba(0, 0, 0, 0.9); font-family: s=
ystem-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Ubuntu, Ox=
ygen, Cantarell, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', Arial, sans-s=
erif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol'; font-size: =
14px; font-style: normal; font-variant-ligatures: normal; font-variant-caps=
: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align:=
 start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0p=
x; -webkit-text-stroke-width: 0px; white-space: pre-wrap; background-color:=
 #ffffff; text-decoration-thickness: initial; text-decoration-style: initia=
l; text-decoration-color: initial;" /><span style=3D"color: rgba(0, 0, 0, 0=
.9); font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI',=
 Roboto, Ubuntu, Oxygen, Cantarell, 'Fira Sans', 'Droid Sans', 'Helvetica N=
eue', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI S=
ymbol'; font-size: 14px; font-style: normal; font-variant-ligatures: normal=
; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orph=
ans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: =
2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap=
; background-color: #ffffff; text-decoration-thickness: initial; text-decor=
ation-style: initial; text-decoration-color: initial; display: inline !impo=
rtant; float: none;">What&rsquo;s available in the beta?</span><br style=3D=
"box-sizing: border-box; color: rgba(0, 0, 0, 0.9); font-family: system-ui,=
 -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Ubuntu, Oxygen, Can=
tarell, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', Arial, sans-serif, 'Ap=
ple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol'; font-size: 14px; fon=
t-style: normal; font-variant-ligatures: normal; font-variant-caps: normal;=
 font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; t=
ext-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webki=
t-text-stroke-width: 0px; white-space: pre-wrap; background-color: #ffffff;=
 text-decoration-thickness: initial; text-decoration-style: initial; text-d=
ecoration-color: initial;" /><span style=3D"color: rgba(0, 0, 0, 0.9); font=
-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, =
Ubuntu, Oxygen, Cantarell, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', Ari=
al, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol'; f=
ont-size: 14px; font-style: normal; font-variant-ligatures: normal; font-va=
riant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; t=
ext-align: start; text-indent: 0px; text-transform: none; widows: 2; word-s=
pacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; backgro=
und-color: #ffffff; text-decoration-thickness: initial; text-decoration-sty=
le: initial; text-decoration-color: initial; display: inline !important; fl=
oat: none;">&bull; <strong>User/role management</strong> with different rol=
es so cross-teams can access the platform.</span><br style=3D"box-sizing: b=
order-box; color: rgba(0, 0, 0, 0.9); font-family: system-ui, -apple-system=
, BlinkMacSystemFont, 'Segoe UI', Roboto, Ubuntu, Oxygen, Cantarell, 'Fira =
Sans', 'Droid Sans', 'Helvetica Neue', Arial, sans-serif, 'Apple Color Emoj=
i', 'Segoe UI Emoji', 'Segoe UI Symbol'; font-size: 14px; font-style: norma=
l; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: =
400; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0p=
x; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-=
width: 0px; white-space: pre-wrap; background-color: #ffffff; text-decorati=
on-thickness: initial; text-decoration-style: initial; text-decoration-colo=
r: initial;" /><span style=3D"color: rgba(0, 0, 0, 0.9); font-family: syste=
m-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Ubuntu, Oxygen=
, Cantarell, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', Arial, sans-serif=
, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol'; font-size: 14px=
; font-style: normal; font-variant-ligatures: normal; font-variant-caps: no=
rmal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: sta=
rt; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -=
webkit-text-stroke-width: 0px; white-space: pre-wrap; background-color: #ff=
ffff; text-decoration-thickness: initial; text-decoration-style: initial; t=
ext-decoration-color: initial; display: inline !important; float: none;">&b=
ull; Device enrollment with <strong>TLS support</strong>, live fleet monito=
ring and system telemetry.</span><br style=3D"box-sizing: border-box; color=
: rgba(0, 0, 0, 0.9); font-family: system-ui, -apple-system, BlinkMacSystem=
Font, 'Segoe UI', Roboto, Ubuntu, Oxygen, Cantarell, 'Fira Sans', 'Droid Sa=
ns', 'Helvetica Neue', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Em=
oji', 'Segoe UI Symbol'; font-size: 14px; font-style: normal; font-variant-=
ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-spac=
ing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transfor=
m: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; whit=
e-space: pre-wrap; background-color: #ffffff; text-decoration-thickness: in=
itial; text-decoration-style: initial; text-decoration-color: initial;" /><=
span style=3D"color: rgba(0, 0, 0, 0.9); font-family: system-ui, -apple-sys=
tem, BlinkMacSystemFont, 'Segoe UI', Roboto, Ubuntu, Oxygen, Cantarell, 'Fi=
ra Sans', 'Droid Sans', 'Helvetica Neue', Arial, sans-serif, 'Apple Color E=
moji', 'Segoe UI Emoji', 'Segoe UI Symbol'; font-size: 14px; font-style: no=
rmal; font-variant-ligatures: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent:=
 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stro=
ke-width: 0px; white-space: pre-wrap; background-color: #ffffff; text-decor=
ation-thickness: initial; text-decoration-style: initial; text-decoration-c=
olor: initial; display: inline !important; float: none;">&bull; Hardware/so=
ftware inventory, plus CVE and security-advisory visibility.</span><br styl=
e=3D"box-sizing: border-box; color: rgba(0, 0, 0, 0.9); font-family: system=
-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Ubuntu, Oxygen,=
 Cantarell, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', Arial, sans-serif,=
 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol'; font-size: 14px;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: nor=
mal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: star=
t; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -w=
ebkit-text-stroke-width: 0px; white-space: pre-wrap; background-color: #fff=
fff; text-decoration-thickness: initial; text-decoration-style: initial; te=
xt-decoration-color: initial;" /><span style=3D"color: rgba(0, 0, 0, 0.9); =
font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Robo=
to, Ubuntu, Oxygen, Cantarell, 'Fira Sans', 'Droid Sans', 'Helvetica Neue',=
 Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol=
'; font-size: 14px; font-style: normal; font-variant-ligatures: normal; fon=
t-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: =
2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wo=
rd-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; bac=
kground-color: #ffffff; text-decoration-thickness: initial; text-decoration=
-style: initial; text-decoration-color: initial; display: inline !important=
; float: none;">&bull; <strong>Remote device access</strong> through integr=
ated ShellHub support.</span><br style=3D"box-sizing: border-box; color: rg=
ba(0, 0, 0, 0.9); font-family: system-ui, -apple-system, BlinkMacSystemFont=
, 'Segoe UI', Roboto, Ubuntu, Oxygen, Cantarell, 'Fira Sans', 'Droid Sans',=
 'Helvetica Neue', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji'=
, 'Segoe UI Symbol'; font-size: 14px; font-style: normal; font-variant-liga=
tures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing:=
 normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: n=
one; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-sp=
ace: pre-wrap; background-color: #ffffff; text-decoration-thickness: initia=
l; text-decoration-style: initial; text-decoration-color: initial;" /><span=
 style=3D"color: rgba(0, 0, 0, 0.9); font-family: system-ui, -apple-system,=
 BlinkMacSystemFont, 'Segoe UI', Roboto, Ubuntu, Oxygen, Cantarell, 'Fira S=
ans', 'Droid Sans', 'Helvetica Neue', Arial, sans-serif, 'Apple Color Emoji=
', 'Segoe UI Emoji', 'Segoe UI Symbol'; font-size: 14px; font-style: normal=
; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 4=
00; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px=
; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-w=
idth: 0px; white-space: pre-wrap; background-color: #ffffff; text-decoratio=
n-thickness: initial; text-decoration-style: initial; text-decoration-color=
: initial; display: inline !important; float: none;">&bull; Jobs, deploymen=
ts and controlled<strong> secure OTA update campaigns</strong>.</span><br s=
tyle=3D"box-sizing: border-box; color: rgba(0, 0, 0, 0.9); font-family: sys=
tem-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Ubuntu, Oxyg=
en, Cantarell, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', Arial, sans-ser=
if, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol'; font-size: 14=
px; font-style: normal; font-variant-ligatures: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: s=
tart; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px;=
 -webkit-text-stroke-width: 0px; white-space: pre-wrap; background-color: #=
ffffff; text-decoration-thickness: initial; text-decoration-style: initial;=
 text-decoration-color: initial;" /><span style=3D"color: rgba(0, 0, 0, 0.9=
); font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', R=
oboto, Ubuntu, Oxygen, Cantarell, 'Fira Sans', 'Droid Sans', 'Helvetica Neu=
e', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Sym=
bol'; font-size: 14px; font-style: normal; font-variant-ligatures: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphan=
s: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2;=
 word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; =
background-color: #ffffff; text-decoration-thickness: initial; text-decorat=
ion-style: initial; text-decoration-color: initial; display: inline !import=
ant; float: none;"> </span><br style=3D"box-sizing: border-box; color: rgba=
(0, 0, 0, 0.9); font-family: system-ui, -apple-system, BlinkMacSystemFont, =
'Segoe UI', Roboto, Ubuntu, Oxygen, Cantarell, 'Fira Sans', 'Droid Sans', '=
Helvetica Neue', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', =
'Segoe UI Symbol'; font-size: 14px; font-style: normal; font-variant-ligatu=
res: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: n=
ormal; orphans: 2; text-align: start; text-indent: 0px; text-transform: non=
e; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-spac=
e: pre-wrap; background-color: #ffffff; text-decoration-thickness: initial;=
 text-decoration-style: initial; text-decoration-color: initial;" /><span s=
tyle=3D"color: rgba(0, 0, 0, 0.9); font-family: system-ui, -apple-system, B=
linkMacSystemFont, 'Segoe UI', Roboto, Ubuntu, Oxygen, Cantarell, 'Fira San=
s', 'Droid Sans', 'Helvetica Neue', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol'; font-size: 14px; font-style: normal; =
font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-wid=
th: 0px; white-space: pre-wrap; background-color: #ffffff; text-decoration-=
thickness: initial; text-decoration-style: initial; text-decoration-color: =
initial; display: inline !important; float: none;">The platform also includ=
es <strong>fleet mapping, alerts, audit logs and role management</strong>. =
A portable Linux agent for system and the cloud platform can be deployed us=
ing Docker Compose.</span><br style=3D"box-sizing: border-box; color: rgba(=
0, 0, 0, 0.9); font-family: system-ui, -apple-system, BlinkMacSystemFont, '=
Segoe UI', Roboto, Ubuntu, Oxygen, Cantarell, 'Fira Sans', 'Droid Sans', 'H=
elvetica Neue', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', '=
Segoe UI Symbol'; font-size: 14px; font-style: normal; font-variant-ligatur=
es: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: no=
rmal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none=
; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space=
: pre-wrap; background-color: #ffffff; text-decoration-thickness: initial; =
text-decoration-style: initial; text-decoration-color: initial;" /><span st=
yle=3D"color: rgba(0, 0, 0, 0.9); font-family: system-ui, -apple-system, Bl=
inkMacSystemFont, 'Segoe UI', Roboto, Ubuntu, Oxygen, Cantarell, 'Fira Sans=
', 'Droid Sans', 'Helvetica Neue', Arial, sans-serif, 'Apple Color Emoji', =
'Segoe UI Emoji', 'Segoe UI Symbol'; font-size: 14px; font-style: normal; f=
ont-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400;=
 letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; t=
ext-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-widt=
h: 0px; white-space: pre-wrap; background-color: #ffffff; text-decoration-t=
hickness: initial; text-decoration-style: initial; text-decoration-color: i=
nitial; display: inline !important; float: none;">My goal is a practical, v=
endor-neutral platform that gives engineering teams visibility and control =
without tying them to one hardware vendor or Linux distribution.</span><br =
style=3D"box-sizing: border-box; color: rgba(0, 0, 0, 0.9); font-family: sy=
stem-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Ubuntu, Oxy=
gen, Cantarell, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', Arial, sans-se=
rif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol'; font-size: 1=
4px; font-style: normal; font-variant-ligatures: normal; font-variant-caps:=
 normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px=
; -webkit-text-stroke-width: 0px; white-space: pre-wrap; background-color: =
#ffffff; text-decoration-thickness: initial; text-decoration-style: initial=
; text-decoration-color: initial;" /><br style=3D"box-sizing: border-box; c=
olor: rgba(0, 0, 0, 0.9); font-family: system-ui, -apple-system, BlinkMacSy=
stemFont, 'Segoe UI', Roboto, Ubuntu, Oxygen, Cantarell, 'Fira Sans', 'Droi=
d Sans', 'Helvetica Neue', Arial, sans-serif, 'Apple Color Emoji', 'Segoe U=
I Emoji', 'Segoe UI Symbol'; font-size: 14px; font-style: normal; font-vari=
ant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-=
spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tran=
sform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
white-space: pre-wrap; background-color: #ffffff; text-decoration-thickness=
: initial; text-decoration-style: initial; text-decoration-color: initial;"=
 /><span style=3D"color: rgba(0, 0, 0, 0.9); font-family: system-ui, -apple=
-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Ubuntu, Oxygen, Cantarell,=
 'Fira Sans', 'Droid Sans', 'Helvetica Neue', Arial, sans-serif, 'Apple Col=
or Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol'; font-size: 14px; font-style=
: normal; font-variant-ligatures: normal; font-variant-caps: normal; font-w=
eight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-ind=
ent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-=
stroke-width: 0px; white-space: pre-wrap; background-color: #ffffff; text-d=
ecoration-thickness: initial; text-decoration-style: initial; text-decorati=
on-color: initial; display: inline !important; float: none;">Repository:</s=
pan><span class=3D"_8df50281 d1901be7" style=3D"box-sizing: border-box; mar=
gin: 0px; padding: 0px; border: 0px; font-size: 14px; font-family: system-u=
i, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Ubuntu, Oxygen, C=
antarell, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', Arial, sans-serif, '=
Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol'; vertical-align: ba=
seline; white-space: pre; color: rgba(0, 0, 0, 0.9); font-style: normal; fo=
nt-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; te=
xt-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; background-color: #ffffff; text-decoration-thickness: initial; text-=
decoration-style: initial; text-decoration-color: initial;"> <a href=3D"htt=
ps://github.com/prashantdivate/soul-room-edge-platform" target=3D"_blank" r=
el=3D"noopener">https://github.com/prashantdivate/soul-room-edge-platform</=
a></span><br style=3D"box-sizing: border-box; color: rgba(0, 0, 0, 0.9); fo=
nt-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto=
, Ubuntu, Oxygen, Cantarell, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', A=
rial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol';=
 font-size: 14px; font-style: normal; font-variant-ligatures: normal; font-=
variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2;=
 text-align: start; text-indent: 0px; text-transform: none; widows: 2; word=
-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; backg=
round-color: #ffffff; text-decoration-thickness: initial; text-decoration-s=
tyle: initial; text-decoration-color: initial;" /><span style=3D"color: rgb=
a(0, 0, 0, 0.9); font-family: system-ui, -apple-system, BlinkMacSystemFont,=
 'Segoe UI', Roboto, Ubuntu, Oxygen, Cantarell, 'Fira Sans', 'Droid Sans', =
'Helvetica Neue', Arial, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji',=
 'Segoe UI Symbol'; font-size: 14px; font-style: normal; font-variant-ligat=
ures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: =
normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: no=
ne; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-spa=
ce: pre-wrap; background-color: #ffffff; text-decoration-thickness: initial=
; text-decoration-style: initial; text-decoration-color: initial; display: =
inline !important; float: none;">This is a first public beta, and I&rsquo;d=
 like the next iterations to be shaped by people working with real devices.=
</span><br style=3D"box-sizing: border-box; color: rgba(0, 0, 0, 0.9); font=
-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, =
Ubuntu, Oxygen, Cantarell, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', Ari=
al, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol'; f=
ont-size: 14px; font-style: normal; font-variant-ligatures: normal; font-va=
riant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; t=
ext-align: start; text-indent: 0px; text-transform: none; widows: 2; word-s=
pacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; backgro=
und-color: #ffffff; text-decoration-thickness: initial; text-decoration-sty=
le: initial; text-decoration-color: initial;" /><br style=3D"box-sizing: bo=
rder-box; color: rgba(0, 0, 0, 0.9); font-family: system-ui, -apple-system,=
 BlinkMacSystemFont, 'Segoe UI', Roboto, Ubuntu, Oxygen, Cantarell, 'Fira S=
ans', 'Droid Sans', 'Helvetica Neue', Arial, sans-serif, 'Apple Color Emoji=
', 'Segoe UI Emoji', 'Segoe UI Symbol'; font-size: 14px; font-style: normal=
; font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 4=
00; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px=
; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-w=
idth: 0px; white-space: pre-wrap; background-color: #ffffff; text-decoratio=
n-thickness: initial; text-decoration-style: initial; text-decoration-color=
: initial;" /><span style=3D"color: rgba(0, 0, 0, 0.9); font-family: system=
-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Ubuntu, Oxygen,=
 Cantarell, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', Arial, sans-serif,=
 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol'; font-size: 14px;=
 font-style: normal; font-variant-ligatures: normal; font-variant-caps: nor=
mal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: star=
t; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -w=
ebkit-text-stroke-width: 0px; white-space: pre-wrap; background-color: #fff=
fff; text-decoration-thickness: initial; text-decoration-style: initial; te=
xt-decoration-color: initial; display: inline !important; float: none;">Emb=
edded Linux and Yocto developers: try it on a non-production device and tel=
l me what works, what breaks, and what&rsquo;s missing. Contributors and te=
ams interested in pilot deployments are welcome.</span><br style=3D"box-siz=
ing: border-box; color: rgba(0, 0, 0, 0.9); font-family: system-ui, -apple-=
system, BlinkMacSystemFont, 'Segoe UI', Roboto, Ubuntu, Oxygen, Cantarell, =
'Fira Sans', 'Droid Sans', 'Helvetica Neue', Arial, sans-serif, 'Apple Colo=
r Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol'; font-size: 14px; font-style:=
 normal; font-variant-ligatures: normal; font-variant-caps: normal; font-we=
ight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-inde=
nt: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-s=
troke-width: 0px; white-space: pre-wrap; background-color: #ffffff; text-de=
coration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial;" /><span style=3D"color: rgba(0, 0, 0, 0.9); font-family:=
 system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Ubuntu, =
Oxygen, Cantarell, 'Fira Sans', 'Droid Sans', 'Helvetica Neue', Arial, sans=
-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol'; font-size=
: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-ca=
ps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-alig=
n: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: =
0px; -webkit-text-stroke-width: 0px; white-space: pre-wrap; background-colo=
r: #ffffff; text-decoration-thickness: initial; text-decoration-style: init=
ial; text-decoration-color: initial; display: inline !important; float: non=
e;">What&rsquo;s the biggest gap in your current fleet-management workflow?=
</span></div>

--ul93aEmx7S5x2fmQArix--

