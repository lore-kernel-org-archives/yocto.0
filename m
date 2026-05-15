Return-Path: <mail2uvijay@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E41E5CD4F25
	for <webhook@archiver.kernel.org>; Fri, 15 May 2026 14:54:12 +0000 (UTC)
Subject: imx93 yocto build failing due to parsec fetcherror
To: yocto@lists.yoctoproject.org
From: mail2uvijay@gmail.com
X-Originating-Location: Chennai, Tamil Nadu, IN (136.226.242.245)
X-Originating-Platform: Windows Chrome 148
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 15 May 2026 07:54:06 -0700
Message-ID: <QxVD.1778856846043312542.8F3H@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="y765FAHqeo60bKykSHxJ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 May 2026 14:54:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66562

--y765FAHqeo60bKykSHxJ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

i am building osm-imx93 board image from scarthgap branch. getting parsec f=
etch error.

Summary :=C2=A02=C2=A0tasks=C2=A0failed:
/home/ubuntu/imx93-yocto-bsp/sources/meta-security/meta-parsec/recipes-pars=
ec/parsec-tool/parsec-tool_0.7.0.bb:do_fetch
/home/ubuntu/imx93-yocto-bsp/sources/meta-security/meta-parsec/recipes-pars=
ec/parsec-service/parsec-service_1.3.0.bb:do_fetch
Summary : There were=C2=A010=C2=A0WARNING=C2=A0messages.
Summary : There were=C2=A04=C2=A0ERROR=C2=A0messages,=C2=A0returning=C2=A0a=
=C2=A0non-zero=C2=A0exit=C2=A0code.

$bitbake -c fetch parsec-tool
ERROR: parsec-tool-0.7.0-r0 do_fetch: Bitbake Fetcher Error: FetchError('Un=
able to fetch URL from any source.', 'crate://crates.io/parsec-tool/0.7.0')

Please suggest how to resolve this fetch errors.

--y765FAHqeo60bKykSHxJ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>i am building osm-imx93 board image from scarthgap branch. getting <sp=
an data-teams=3D"true">parsec fetch error.</span></div>
<div>&nbsp;</div>
<div><span data-teams=3D"true"><span class=3D"hljs-function" style=3D"box-s=
izing: border-box; -webkit-font-smoothing: antialiased; line-height: 24px; =
color: #e37d80; font-family: 'Cascadia Mono', Consolas, ui-monospace, Menlo=
, Monaco, monospace; font-size: 14px; font-style: normal; font-variant-liga=
tures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing:=
 normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: n=
one; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-sp=
ace: pre; background-color: #292929; text-decoration-thickness: initial; te=
xt-decoration-style: initial; text-decoration-color: initial;">Summary</spa=
n><span style=3D"color: #ffffff; font-family: 'Cascadia Mono', Consolas, ui=
-monospace, Menlo, Monaco, monospace; font-size: 14px; font-style: normal; =
font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-wid=
th: 0px; white-space: pre; background-color: #292929; text-decoration-thick=
ness: initial; text-decoration-style: initial; text-decoration-color: initi=
al; display: inline !important; float: none;">:&nbsp;2&nbsp;tasks&nbsp;fail=
ed:</span><br style=3D"box-sizing: border-box; -webkit-font-smoothing: anti=
aliased; color: #ffffff; font-family: 'Cascadia Mono', Consolas, ui-monospa=
ce, Menlo, Monaco, monospace; font-size: 14px; font-style: normal; font-var=
iant-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter=
-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; text-tra=
nsform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px;=
 white-space: pre; background-color: #292929; text-decoration-thickness: in=
itial; text-decoration-style: initial; text-decoration-color: initial;" /><=
span style=3D"color: #ffffff; font-family: 'Cascadia Mono', Consolas, ui-mo=
nospace, Menlo, Monaco, monospace; font-size: 14px; font-style: normal; fon=
t-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; l=
etter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; tex=
t-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; white-space: pre; background-color: #292929; text-decoration-thicknes=
s: initial; text-decoration-style: initial; text-decoration-color: initial;=
 display: inline !important; float: none;"> &nbsp;/home/ubuntu/imx93-yocto-=
bsp/sources/meta-security/meta-parsec/recipes-parsec/parsec-tool/parsec-too=
l_0.7.0.bb:do_fetch</span><br style=3D"box-sizing: border-box; -webkit-font=
-smoothing: antialiased; color: #ffffff; font-family: 'Cascadia Mono', Cons=
olas, ui-monospace, Menlo, Monaco, monospace; font-size: 14px; font-style: =
normal; font-variant-ligatures: normal; font-variant-caps: normal; font-wei=
ght: 400; letter-spacing: normal; orphans: 2; text-align: start; text-inden=
t: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-st=
roke-width: 0px; white-space: pre; background-color: #292929; text-decorati=
on-thickness: initial; text-decoration-style: initial; text-decoration-colo=
r: initial;" /><span style=3D"color: #ffffff; font-family: 'Cascadia Mono',=
 Consolas, ui-monospace, Menlo, Monaco, monospace; font-size: 14px; font-st=
yle: normal; font-variant-ligatures: normal; font-variant-caps: normal; fon=
t-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; text-=
indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-te=
xt-stroke-width: 0px; white-space: pre; background-color: #292929; text-dec=
oration-thickness: initial; text-decoration-style: initial; text-decoration=
-color: initial; display: inline !important; float: none;"> &nbsp;/home/ubu=
ntu/imx93-yocto-bsp/sources/meta-security/meta-parsec/recipes-parsec/parsec=
-service/parsec-service_1.3.0.bb:do_fetch</span><br style=3D"box-sizing: bo=
rder-box; -webkit-font-smoothing: antialiased; color: #ffffff; font-family:=
 'Cascadia Mono', Consolas, ui-monospace, Menlo, Monaco, monospace; font-si=
ze: 14px; font-style: normal; font-variant-ligatures: normal; font-variant-=
caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-al=
ign: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing=
: 0px; -webkit-text-stroke-width: 0px; white-space: pre; background-color: =
#292929; text-decoration-thickness: initial; text-decoration-style: initial=
; text-decoration-color: initial;" /><span class=3D"hljs-function" style=3D=
"box-sizing: border-box; -webkit-font-smoothing: antialiased; line-height: =
24px; color: #e37d80; font-family: 'Cascadia Mono', Consolas, ui-monospace,=
 Menlo, Monaco, monospace; font-size: 14px; font-style: normal; font-varian=
t-ligatures: normal; font-variant-caps: normal; font-weight: 400; letter-sp=
acing: normal; orphans: 2; text-align: start; text-indent: 0px; text-transf=
orm: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; wh=
ite-space: pre; background-color: #292929; text-decoration-thickness: initi=
al; text-decoration-style: initial; text-decoration-color: initial;">Summar=
y</span><span style=3D"color: #ffffff; font-family: 'Cascadia Mono', Consol=
as, ui-monospace, Menlo, Monaco, monospace; font-size: 14px; font-style: no=
rmal; font-variant-ligatures: normal; font-variant-caps: normal; font-weigh=
t: 400; letter-spacing: normal; orphans: 2; text-align: start; text-indent:=
 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stro=
ke-width: 0px; white-space: pre; background-color: #292929; text-decoration=
-thickness: initial; text-decoration-style: initial; text-decoration-color:=
 initial; display: inline !important; float: none;">:&nbsp;</span><span cla=
ss=3D"hljs-function" style=3D"box-sizing: border-box; -webkit-font-smoothin=
g: antialiased; line-height: 24px; color: #e37d80; font-family: 'Cascadia M=
ono', Consolas, ui-monospace, Menlo, Monaco, monospace; font-size: 14px; fo=
nt-style: normal; font-variant-ligatures: normal; font-variant-caps: normal=
; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; =
text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webk=
it-text-stroke-width: 0px; white-space: pre; background-color: #292929; tex=
t-decoration-thickness: initial; text-decoration-style: initial; text-decor=
ation-color: initial;">There</span><span style=3D"color: #ffffff; font-fami=
ly: 'Cascadia Mono', Consolas, ui-monospace, Menlo, Monaco, monospace; font=
-size: 14px; font-style: normal; font-variant-ligatures: normal; font-varia=
nt-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text=
-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spac=
ing: 0px; -webkit-text-stroke-width: 0px; white-space: pre; background-colo=
r: #292929; text-decoration-thickness: initial; text-decoration-style: init=
ial; text-decoration-color: initial; display: inline !important; float: non=
e;">&nbsp;were&nbsp;10&nbsp;WARNING&nbsp;messages.</span><br style=3D"box-s=
izing: border-box; -webkit-font-smoothing: antialiased; color: #ffffff; fon=
t-family: 'Cascadia Mono', Consolas, ui-monospace, Menlo, Monaco, monospace=
; font-size: 14px; font-style: normal; font-variant-ligatures: normal; font=
-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans: 2=
; text-align: start; text-indent: 0px; text-transform: none; widows: 2; wor=
d-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre; backgroun=
d-color: #292929; text-decoration-thickness: initial; text-decoration-style=
: initial; text-decoration-color: initial;" /><span class=3D"hljs-function"=
 style=3D"box-sizing: border-box; -webkit-font-smoothing: antialiased; line=
-height: 24px; color: #e37d80; font-family: 'Cascadia Mono', Consolas, ui-m=
onospace, Menlo, Monaco, monospace; font-size: 14px; font-style: normal; fo=
nt-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; te=
xt-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width=
: 0px; white-space: pre; background-color: #292929; text-decoration-thickne=
ss: initial; text-decoration-style: initial; text-decoration-color: initial=
;">Summary</span><span style=3D"color: #ffffff; font-family: 'Cascadia Mono=
', Consolas, ui-monospace, Menlo, Monaco, monospace; font-size: 14px; font-=
style: normal; font-variant-ligatures: normal; font-variant-caps: normal; f=
ont-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; tex=
t-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-=
text-stroke-width: 0px; white-space: pre; background-color: #292929; text-d=
ecoration-thickness: initial; text-decoration-style: initial; text-decorati=
on-color: initial; display: inline !important; float: none;">:&nbsp;</span>=
<span class=3D"hljs-function" style=3D"box-sizing: border-box; -webkit-font=
-smoothing: antialiased; line-height: 24px; color: #e37d80; font-family: 'C=
ascadia Mono', Consolas, ui-monospace, Menlo, Monaco, monospace; font-size:=
 14px; font-style: normal; font-variant-ligatures: normal; font-variant-cap=
s: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align=
: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; white-space: pre; background-color: #29=
2929; text-decoration-thickness: initial; text-decoration-style: initial; t=
ext-decoration-color: initial;">There</span><span style=3D"color: #ffffff; =
font-family: 'Cascadia Mono', Consolas, ui-monospace, Menlo, Monaco, monosp=
ace; font-size: 14px; font-style: normal; font-variant-ligatures: normal; f=
ont-variant-caps: normal; font-weight: 400; letter-spacing: normal; orphans=
: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: pre; backgr=
ound-color: #292929; text-decoration-thickness: initial; text-decoration-st=
yle: initial; text-decoration-color: initial; display: inline !important; f=
loat: none;">&nbsp;were&nbsp;4&nbsp;ERROR&nbsp;messages,&nbsp;returning&nbs=
p;a&nbsp;non-zero&nbsp;exit&nbsp;code.</span><br style=3D"box-sizing: borde=
r-box; -webkit-font-smoothing: antialiased; color: #ffffff; font-family: 'C=
ascadia Mono', Consolas, ui-monospace, Menlo, Monaco, monospace; font-size:=
 14px; font-style: normal; font-variant-ligatures: normal; font-variant-cap=
s: normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align=
: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0=
px; -webkit-text-stroke-width: 0px; white-space: pre; background-color: #29=
2929; text-decoration-thickness: initial; text-decoration-style: initial; t=
ext-decoration-color: initial;" /></span></div>
<div>&nbsp;</div>
<div><span data-teams=3D"true">$bitbake -c fetch parsec-tool</span></div>
<div><span data-teams=3D"true">ERROR: parsec-tool-0.7.0-r0 do_fetch: Bitbak=
e Fetcher Error: FetchError('Unable to fetch URL from any source.', 'crate:=
//crates.io/parsec-tool/0.7.0')<br /></span></div>
<div>&nbsp;</div>
<div><span data-teams=3D"true">Please suggest how to resolve this fetch err=
ors.</span><span data-teams=3D"true"></span></div>
<div>&nbsp;</div>
<div>&nbsp;</div>

--y765FAHqeo60bKykSHxJ--

