Return-Path: <vladimir.graudt@yadro.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B292CC3DA4A
	for <webhook@archiver.kernel.org>; Mon, 29 Jul 2024 18:57:34 +0000 (UTC)
Subject: Is it legal to define functions within conf files?
To: yocto@lists.yoctoproject.org
From: vladimir.graudt@yadro.com
X-Originating-Location: Moscow, RU (89.207.88.243)
X-Originating-Platform: Linux Chrome 126
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 29 Jul 2024 11:57:33 -0700
Message-ID: <lTyq.1722279453641828012.2T1y@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ss1ITbuoIA6svZaRXGQm"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 29 Jul 2024 18:57:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63589

--ss1ITbuoIA6svZaRXGQm
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello!

Bitbake documentation states that it is not possible to define a function w=
ithin .conf file (" r egardless of the type of function, you can only defin=
e them in class (.bbclass ) and recipe (.bb or.inc ) files"). However, it t=
urns out that this limitation can be easily circumvented if one puts a defi=
nition of function into .inc file and 'requires' it in .conf (bitbake will =
not emit an error). This trick is extensively used in meta-arm-toolchain an=
d meta-external-toolchain layers (in tcmode-${TCMODE}.inc files) and even o=
nce in meta-core (see meta/conf/machine/include/microblaze/feature-microbla=
ze-versions.inc).

Could you please clarify if such "feature" is intentional? Because
1. It is not obvious from bitbake documentation (it is said that functions =
may be defined within .inc files, but based on word "recipe" I guess that .=
inc files included in .bb-s were meant)
2. It is kind of counter-intuitive that functions can be intertwined with c=
onf files

Thanks in advance,
Vladimir

--ss1ITbuoIA6svZaRXGQm
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello!</div>
<div>&nbsp;</div>
<div>Bitbake documentation states that it is not possible to define a funct=
ion within .conf file ("<span style=3D"color: #333333; font-family: Verdana=
, Sans, sans-serif; font-size: 16px; font-style: normal; font-variant-ligat=
ures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing: =
normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: no=
ne; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-spa=
ce: normal; background-color: #fcfcfc; text-decoration-thickness: initial; =
text-decoration-style: initial; text-decoration-color: initial; display: in=
line !important; float: none;">r<span style=3D"color: #333333; font-family:=
 Verdana, Sans, sans-serif; font-size: 16px; font-style: normal; font-varia=
nt-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-s=
pacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-trans=
form: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; w=
hite-space: normal; background-color: #fcfcfc; text-decoration-thickness: i=
nitial; text-decoration-style: initial; text-decoration-color: initial; dis=
play: inline !important; float: none;">egardless of the type of function, y=
ou can only define them in class (</span><code class=3D"docutils literal no=
translate" style=3D"box-sizing: border-box; font-family: SFMono-Regular, Me=
nlo, Monaco, Consolas, 'Liberation Mono', 'Courier New', Courier, monospace=
; font-size: 13.6px; white-space: normal; max-width: 100%; background-image=
: inherit; background-position: inherit; background-size: inherit; backgrou=
nd-repeat: inherit; background-attachment: inherit; background-origin: inhe=
rit; background-clip: inherit; background-color: #fcfcfc; border: none; pad=
ding: unset; color: #333333; overflow-x: auto; font-style: normal; font-var=
iant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter=
-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tra=
nsform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;=
 text-decoration-thickness: initial; text-decoration-style: initial; text-d=
ecoration-color: initial;"><span class=3D"pre" style=3D"box-sizing: border-=
box; font-size: medium; font-family: Courier, monospace;">.bbclass</span></=
code><span style=3D"color: #333333; font-family: Verdana, Sans, sans-serif;=
 font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-=
variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2;=
 text-align: start; text-indent: 0px; text-transform: none; widows: 2; word=
-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; backgro=
und-color: #fcfcfc; text-decoration-thickness: initial; text-decoration-sty=
le: initial; text-decoration-color: initial; display: inline !important; fl=
oat: none;">) and recipe (</span><code class=3D"docutils literal notranslat=
e" style=3D"box-sizing: border-box; font-family: SFMono-Regular, Menlo, Mon=
aco, Consolas, 'Liberation Mono', 'Courier New', Courier, monospace; font-s=
ize: 13.6px; white-space: normal; max-width: 100%; background-image: inheri=
t; background-position: inherit; background-size: inherit; background-repea=
t: inherit; background-attachment: inherit; background-origin: inherit; bac=
kground-clip: inherit; background-color: #fcfcfc; border: none; padding: un=
set; color: #333333; overflow-x: auto; font-style: normal; font-variant-lig=
atures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing=
: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: =
none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-de=
coration-thickness: initial; text-decoration-style: initial; text-decoratio=
n-color: initial;"><span class=3D"pre" style=3D"box-sizing: border-box; fon=
t-size: medium; font-family: Courier, monospace;">.bb</span></code><span st=
yle=3D"color: #333333; font-family: Verdana, Sans, sans-serif; font-size: 1=
6px; font-style: normal; font-variant-ligatures: normal; font-variant-caps:=
 normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px=
; -webkit-text-stroke-width: 0px; white-space: normal; background-color: #f=
cfcfc; text-decoration-thickness: initial; text-decoration-style: initial; =
text-decoration-color: initial; display: inline !important; float: none;"><=
span>&nbsp;</span>or<span>&nbsp;</span></span><code class=3D"docutils liter=
al notranslate" style=3D"box-sizing: border-box; font-family: SFMono-Regula=
r, Menlo, Monaco, Consolas, 'Liberation Mono', 'Courier New', Courier, mono=
space; font-size: 13.6px; white-space: normal; max-width: 100%; background-=
image: inherit; background-position: inherit; background-size: inherit; bac=
kground-repeat: inherit; background-attachment: inherit; background-origin:=
 inherit; background-clip: inherit; background-color: #fcfcfc; border: none=
; padding: unset; color: #333333; overflow-x: auto; font-style: normal; fon=
t-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; l=
etter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; tex=
t-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; text-decoration-thickness: initial; text-decoration-style: initial; t=
ext-decoration-color: initial;"><span class=3D"pre" style=3D"box-sizing: bo=
rder-box; font-size: medium; font-family: Courier, monospace;">.inc</span><=
/code><span style=3D"color: #333333; font-family: Verdana, Sans, sans-serif=
; font-size: 16px; font-style: normal; font-variant-ligatures: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2=
; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; backgr=
ound-color: #fcfcfc; text-decoration-thickness: initial; text-decoration-st=
yle: initial; text-decoration-color: initial; display: inline !important; f=
loat: none;">) files"). However, it turns out that this limitation can be e=
asily circumvented if one puts a definition of function into .inc file and =
'requires' it in .conf (bitbake will not emit an error). <span style=3D"col=
or: #333333; font-family: Verdana, Sans, sans-serif; font-size: 16px; font-=
style: normal; font-variant-ligatures: normal; font-variant-caps: normal; f=
ont-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; tex=
t-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; white-space: normal; background-color: #fcfcfc; tex=
t-decoration-thickness: initial; text-decoration-style: initial; text-decor=
ation-color: initial; display: inline !important; float: none;"><span style=
=3D"color: #333333; font-family: Verdana, Sans, sans-serif; font-size: 16px=
; font-style: normal; font-variant-ligatures: normal; font-variant-caps: no=
rmal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: sta=
rt; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -=
webkit-text-stroke-width: 0px; white-space: normal; background-color: #fcfc=
fc; text-decoration-thickness: initial; text-decoration-style: initial; tex=
t-decoration-color: initial; display: inline !important; float: none;">This=
 trick is extensively used in meta-arm-toolchain and meta-external-toolchai=
n layers (in tcmode-${TCMODE}.inc files) and even once in meta-core (see me=
ta/conf/machine/include/microblaze/feature-microblaze-versions.inc).</span>=
</span></span></span></div>
<div>&nbsp;</div>
<div><span style=3D"color: #333333; font-family: Verdana, Sans, sans-serif;=
 font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-=
variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2;=
 text-align: start; text-indent: 0px; text-transform: none; widows: 2; word=
-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; backgro=
und-color: #fcfcfc; text-decoration-thickness: initial; text-decoration-sty=
le: initial; text-decoration-color: initial; display: inline !important; fl=
oat: none;"><span style=3D"color: #333333; font-family: Verdana, Sans, sans=
-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal=
; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orph=
ans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: =
2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; =
background-color: #fcfcfc; text-decoration-thickness: initial; text-decorat=
ion-style: initial; text-decoration-color: initial; display: inline !import=
ant; float: none;"><span style=3D"color: #333333; font-family: Verdana, San=
s, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures:=
 normal; font-variant-caps: normal; font-weight: 400; letter-spacing: norma=
l; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; w=
idows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: n=
ormal; background-color: #fcfcfc; text-decoration-thickness: initial; text-=
decoration-style: initial; text-decoration-color: initial; display: inline =
!important; float: none;"><span style=3D"color: #333333; font-family: Verda=
na, Sans, sans-serif; font-size: 16px; font-style: normal; font-variant-lig=
atures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing=
: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: =
none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-s=
pace: normal; background-color: #fcfcfc; text-decoration-thickness: initial=
; text-decoration-style: initial; text-decoration-color: initial; display: =
inline !important; float: none;">Could you please clarify if such "feature"=
 is intentional? Because</span></span></span></span></div>
<div><span style=3D"color: #333333; font-family: Verdana, Sans, sans-serif;=
 font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-=
variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2;=
 text-align: start; text-indent: 0px; text-transform: none; widows: 2; word=
-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; backgro=
und-color: #fcfcfc; text-decoration-thickness: initial; text-decoration-sty=
le: initial; text-decoration-color: initial; display: inline !important; fl=
oat: none;"><span style=3D"color: #333333; font-family: Verdana, Sans, sans=
-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal=
; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orph=
ans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: =
2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; =
background-color: #fcfcfc; text-decoration-thickness: initial; text-decorat=
ion-style: initial; text-decoration-color: initial; display: inline !import=
ant; float: none;"><span style=3D"color: #333333; font-family: Verdana, San=
s, sans-serif; font-size: 16px; font-style: normal; font-variant-ligatures:=
 normal; font-variant-caps: normal; font-weight: 400; letter-spacing: norma=
l; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; w=
idows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: n=
ormal; background-color: #fcfcfc; text-decoration-thickness: initial; text-=
decoration-style: initial; text-decoration-color: initial; display: inline =
!important; float: none;"><span style=3D"color: #333333; font-family: Verda=
na, Sans, sans-serif; font-size: 16px; font-style: normal; font-variant-lig=
atures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing=
: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: =
none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-s=
pace: normal; background-color: #fcfcfc; text-decoration-thickness: initial=
; text-decoration-style: initial; text-decoration-color: initial; display: =
inline !important; float: none;">1. </span></span></span></span><span style=
=3D"color: #333333; font-family: Verdana, Sans, sans-serif; font-size: 16px=
; font-style: normal; font-variant-ligatures: normal; font-variant-caps: no=
rmal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: sta=
rt; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -=
webkit-text-stroke-width: 0px; white-space: normal; background-color: #fcfc=
fc; text-decoration-thickness: initial; text-decoration-style: initial; tex=
t-decoration-color: initial; display: inline !important; float: none;"><spa=
n style=3D"color: #333333; font-family: Verdana, Sans, sans-serif; font-siz=
e: 16px; font-style: normal; font-variant-ligatures: normal; font-variant-c=
aps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-ali=
gn: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing:=
 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-color=
: #fcfcfc; text-decoration-thickness: initial; text-decoration-style: initi=
al; text-decoration-color: initial; display: inline !important; float: none=
;">It is not obvious from bitbake documentation (it is said that functions =
may be defined within .inc files, but based on word "recipe" I guess that .=
inc files included in .bb-s were meant)</span></span></div>
<div><span style=3D"color: #333333; font-family: Verdana, Sans, sans-serif;=
 font-size: 16px; font-style: normal; font-variant-ligatures: normal; font-=
variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2;=
 text-align: start; text-indent: 0px; text-transform: none; widows: 2; word=
-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; backgro=
und-color: #fcfcfc; text-decoration-thickness: initial; text-decoration-sty=
le: initial; text-decoration-color: initial; display: inline !important; fl=
oat: none;"><span style=3D"color: #333333; font-family: Verdana, Sans, sans=
-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal=
; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orph=
ans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: =
2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; =
background-color: #fcfcfc; text-decoration-thickness: initial; text-decorat=
ion-style: initial; text-decoration-color: initial; display: inline !import=
ant; float: none;">2. It is kind of counter-intuitive that functions can be=
 intertwined with conf files</span></span></div>
<div>&nbsp;</div>
<div>Thanks in advance,</div>
<div>Vladimir</div>

--ss1ITbuoIA6svZaRXGQm--

