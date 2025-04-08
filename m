Return-Path: <ccasciato@21sw.us>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AD99C369A4
	for <webhook@archiver.kernel.org>; Tue,  8 Apr 2025 13:19:00 +0000 (UTC)
Subject: Re: [yocto] warn if a variable is not used
To: proffesionaladdress2@duck.com, yocto@lists.yoctoproject.org
From: "Clayton Casciato" <ccasciato@21sw.us>
X-Originating-Location: Denver, Colorado, US (174.29.216.122)
X-Originating-Platform: Linux Chrome 135
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 08 Apr 2025 06:18:54 -0700
References: <DC0C7CC4-DC00-435D-AF68-749C79388DDD.1@smtp-inbound1.duck.com>
In-Reply-To: <DC0C7CC4-DC00-435D-AF68-749C79388DDD.1@smtp-inbound1.duck.com>
Message-ID: <6565.1744118334592061080@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="CNyUbcHhyaUwp1DlzeOT"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Apr 2025 13:19:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65122

--CNyUbcHhyaUwp1DlzeOT
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

In case you weren't aware, you can explicitly set default values:
W ??=3D "x"
A ?=3D "aval"

https://docs.yoctoproject.org/bitbake/2.0/bitbake-user-manual/bitbake-user-=
manual-metadata.html#setting-a-default-value

--

Variables can be queried as to how they are set:
$ bitbake-getvar --recipe rpi-u-boot-scr MY_VARIABLE

--

Also note:

>=20
> The scripts are executed by /bin/sh , which may not be a bash shell but
> might be something such as dash.
>=20

https://docs.yoctoproject.org/bitbake/2.0/bitbake-user-manual/bitbake-user-=
manual-metadata.html#shell-functions

--CNyUbcHhyaUwp1DlzeOT
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>
<div style=3D"font-family: arial, helvetica, sans-serif; font-size: 12pt; c=
olor: #000000;">
<div><span style=3D"color: #333333; font-family: system-ui, 'Segoe UI', Rob=
oto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, '=
Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'=
;">In case you weren't aware, you can explicitly set default values:</span>=
</div>
</div>
</div>
<div><span style=3D"font-family: 'courier new', courier;">W ??=3D "x"</span=
></div>
<div><span style=3D"font-family: 'courier new', courier;">A ?=3D "aval"</sp=
an></div>
<div>&nbsp;</div>
<div>https://docs.yoctoproject.org/bitbake/2.0/bitbake-user-manual/bitbake-=
user-manual-metadata.html#setting-a-default-value</div>
<div>&nbsp;</div>
<div>--</div>
<div>&nbsp;</div>
<div>Variables can be queried as to how they are set:</div>
<div><span style=3D"font-family: 'courier new', courier;">$ bitbake-getvar =
--recipe rpi-u-boot-scr MY_VARIABLE</span></div>
<div>&nbsp;</div>
<div>--</div>
<div>&nbsp;</div>
<div><span style=3D"font-family: arial, helvetica, sans-serif;">Also note:<=
/span></div>
<blockquote>
<div><span style=3D"font-family: arial, helvetica, sans-serif;"><span style=
=3D"color: #333333; font-family: Verdana, Sans, sans-serif; font-size: 16px=
; font-style: normal; font-variant-ligatures: normal; font-variant-caps: no=
rmal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: sta=
rt; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -=
webkit-text-stroke-width: 0px; white-space: normal; background-color: #fcfc=
fc; text-decoration-thickness: initial; text-decoration-style: initial; tex=
t-decoration-color: initial; display: inline !important; float: none;">The =
scripts are executed by<span>&nbsp;</span></span><code class=3D"docutils li=
teral notranslate" style=3D"box-sizing: border-box; font-family: SFMono-Reg=
ular, Menlo, Monaco, Consolas, 'Liberation Mono', 'Courier New', Courier, m=
onospace; font-size: 13.6px; white-space: normal; max-width: 100%; backgrou=
nd-image: inherit; background-position: inherit; background-size: inherit; =
background-repeat: inherit; background-attachment: inherit; background-orig=
in: inherit; background-clip: inherit; background-color: #fcfcfc; border: n=
one; padding: unset; color: #333333; overflow-x: auto; font-style: normal; =
font-variant-ligatures: normal; font-variant-caps: normal; font-weight: 400=
; letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-wid=
th: 0px; text-decoration-thickness: initial; text-decoration-style: initial=
; text-decoration-color: initial;"><span class=3D"pre" style=3D"box-sizing:=
 border-box; font-size: medium; font-family: Courier, monospace;">/bin/sh</=
span></code><span style=3D"color: #333333; font-family: Verdana, Sans, sans=
-serif; font-size: 16px; font-style: normal; font-variant-ligatures: normal=
; font-variant-caps: normal; font-weight: 400; letter-spacing: normal; orph=
ans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: =
2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-space: normal; =
background-color: #fcfcfc; text-decoration-thickness: initial; text-decorat=
ion-style: initial; text-decoration-color: initial; display: inline !import=
ant; float: none;">, which may not be a bash shell but might be something s=
uch as<span>&nbsp;</span></span><code class=3D"docutils literal notranslate=
" style=3D"box-sizing: border-box; font-family: SFMono-Regular, Menlo, Mona=
co, Consolas, 'Liberation Mono', 'Courier New', Courier, monospace; font-si=
ze: 13.6px; white-space: normal; max-width: 100%; background-image: inherit=
; background-position: inherit; background-size: inherit; background-repeat=
: inherit; background-attachment: inherit; background-origin: inherit; back=
ground-clip: inherit; background-color: #fcfcfc; border: none; padding: uns=
et; color: #333333; overflow-x: auto; font-style: normal; font-variant-liga=
tures: normal; font-variant-caps: normal; font-weight: 400; letter-spacing:=
 normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: n=
one; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; text-dec=
oration-thickness: initial; text-decoration-style: initial; text-decoration=
-color: initial;"><span class=3D"pre" style=3D"box-sizing: border-box; font=
-size: medium; font-family: Courier, monospace;">dash</span></code><span st=
yle=3D"color: #333333; font-family: Verdana, Sans, sans-serif; font-size: 1=
6px; font-style: normal; font-variant-ligatures: normal; font-variant-caps:=
 normal; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: =
start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px=
; -webkit-text-stroke-width: 0px; white-space: normal; background-color: #f=
cfcfc; text-decoration-thickness: initial; text-decoration-style: initial; =
text-decoration-color: initial; display: inline !important; float: none;">.=
</span></span></div>
</blockquote>
<div>https://docs.yoctoproject.org/bitbake/2.0/bitbake-user-manual/bitbake-=
user-manual-metadata.html#shell-functions</div>

--CNyUbcHhyaUwp1DlzeOT--

