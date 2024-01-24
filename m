Return-Path: <colin.mcinnes@vecima.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 45B1FC46CD2
	for <webhook@archiver.kernel.org>; Wed, 24 Jan 2024 18:45:20 +0000 (UTC)
Subject: INCOMPATIBLE_LICENSE_EXCEPTIONS not working in kirkstone
To: yocto@lists.yoctoproject.org
From: colin.mcinnes@vecima.com
X-Originating-Location: Yorkton, Saskatchewan, CA (69.11.36.209)
X-Originating-Platform: Linux Chrome 120
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 24 Jan 2024 10:45:15 -0800
Message-ID: <bqM9.1706121915380083681.SlAF@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="JLhAVtAakulYqKzkXfB1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 24 Jan 2024 18:45:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62266

--JLhAVtAakulYqKzkXfB1
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm trying to add gdb to a kirkstone image for debugging, and have GPLv3.0 =
set as incompatible in my .conf

INCOMPATIBLE_LICENSE =3D "GPL-3.0-only LGPL-3.0-only AGPL-3.0-only"

in the same file I also have gdb listed as an exception:

INCOMPATIBLE_LICENSE_EXCEPTIONS +=3D "gdb"

Despite this, builds keep failing due to the following error:

ERROR: Nothing PROVIDES 'gdb'
gdb was skipped: it has incompatible license(s): GPL-3.0-only LGPL-3.0-only

How to I correctly exempt gdb from the incompatible licenses? I also tried =
WHITELIST_GPL-3.0 but bitbake identifies that as an out of date override.

--JLhAVtAakulYqKzkXfB1
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-variant-position: i=
nherit; font-stretch: inherit; font-size: 12pt; line-height: inherit; font-=
family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica,=
 sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feat=
ure-settings: inherit; font-variation-settings: inherit; margin: 0px; paddi=
ng: 0px; vertical-align: baseline; color: black;">I'm trying to add gdb to =
a kirkstone image for debugging, and have GPLv3.0 set as incompatible in my=
 .conf</div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-variant-position: i=
nherit; font-stretch: inherit; font-size: 12pt; line-height: inherit; font-=
family: Aptos, Aptos_EmbeddedFont, Aptos_MSFontService, Calibri, Helvetica,=
 sans-serif; font-optical-sizing: inherit; font-kerning: inherit; font-feat=
ure-settings: inherit; font-variation-settings: inherit; margin: 0px; paddi=
ng: 0px; vertical-align: baseline; color: black;">&nbsp;</div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-variant-position: i=
nherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-=
family: 'Segoe UI', 'Segoe UI Web (West European)', 'Segoe UI', -apple-syst=
em, BlinkMacSystemFont, Roboto, 'Helvetica Neue', sans-serif; font-optical-=
sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; fon=
t-variation-settings: inherit; margin: 0px; padding: 0px; vertical-align: b=
aseline; color: #242424;"><span style=3D"border: 0px; font-style: inherit; =
font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-si=
ze: 12pt; line-height: inherit; font-family: Aptos, Aptos_EmbeddedFont, Apt=
os_MSFontService, Calibri, Helvetica, sans-serif; font-optical-sizing: inhe=
rit; font-kerning: inherit; font-feature-settings: inherit; font-variation-=
settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline; col=
or: black;">INCOMPATIBLE_LICENSE =3D "GPL-3.0-only LGPL-3.0-only AGPL-3.0-o=
nly"</span></div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-variant-position: i=
nherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-=
family: 'Segoe UI', 'Segoe UI Web (West European)', 'Segoe UI', -apple-syst=
em, BlinkMacSystemFont, Roboto, 'Helvetica Neue', sans-serif; font-optical-=
sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; fon=
t-variation-settings: inherit; margin: 0px; padding: 0px; vertical-align: b=
aseline; color: #242424;"><span style=3D"border: 0px; font-style: inherit; =
font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-si=
ze: 12pt; line-height: inherit; font-family: Aptos, Aptos_EmbeddedFont, Apt=
os_MSFontService, Calibri, Helvetica, sans-serif; font-optical-sizing: inhe=
rit; font-kerning: inherit; font-feature-settings: inherit; font-variation-=
settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline; col=
or: black;">&nbsp;</span></div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-variant-position: i=
nherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-=
family: 'Segoe UI', 'Segoe UI Web (West European)', 'Segoe UI', -apple-syst=
em, BlinkMacSystemFont, Roboto, 'Helvetica Neue', sans-serif; font-optical-=
sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; fon=
t-variation-settings: inherit; margin: 0px; padding: 0px; vertical-align: b=
aseline; color: #242424;"><span style=3D"border: 0px; font-style: inherit; =
font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-si=
ze: 12pt; line-height: inherit; font-family: Aptos, Aptos_EmbeddedFont, Apt=
os_MSFontService, Calibri, Helvetica, sans-serif; font-optical-sizing: inhe=
rit; font-kerning: inherit; font-feature-settings: inherit; font-variation-=
settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline; col=
or: black;">in the same file I also have gdb listed as an exception:</span>=
</div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-variant-position: i=
nherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-=
family: 'Segoe UI', 'Segoe UI Web (West European)', 'Segoe UI', -apple-syst=
em, BlinkMacSystemFont, Roboto, 'Helvetica Neue', sans-serif; font-optical-=
sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; fon=
t-variation-settings: inherit; margin: 0px; padding: 0px; vertical-align: b=
aseline; color: #242424;"><span style=3D"border: 0px; font-style: inherit; =
font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-si=
ze: 12pt; line-height: inherit; font-family: Aptos, Aptos_EmbeddedFont, Apt=
os_MSFontService, Calibri, Helvetica, sans-serif; font-optical-sizing: inhe=
rit; font-kerning: inherit; font-feature-settings: inherit; font-variation-=
settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline; col=
or: black;">&nbsp;</span></div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-variant-position: i=
nherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-=
family: 'Segoe UI', 'Segoe UI Web (West European)', 'Segoe UI', -apple-syst=
em, BlinkMacSystemFont, Roboto, 'Helvetica Neue', sans-serif; font-optical-=
sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; fon=
t-variation-settings: inherit; margin: 0px; padding: 0px; vertical-align: b=
aseline; color: #242424;"><span style=3D"border: 0px; font-style: inherit; =
font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-si=
ze: 12pt; line-height: inherit; font-family: Aptos, Aptos_EmbeddedFont, Apt=
os_MSFontService, Calibri, Helvetica, sans-serif; font-optical-sizing: inhe=
rit; font-kerning: inherit; font-feature-settings: inherit; font-variation-=
settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline; col=
or: black;">INCOMPATIBLE_LICENSE_EXCEPTIONS +=3D "gdb"</span></div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-variant-position: i=
nherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-=
family: 'Segoe UI', 'Segoe UI Web (West European)', 'Segoe UI', -apple-syst=
em, BlinkMacSystemFont, Roboto, 'Helvetica Neue', sans-serif; font-optical-=
sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; fon=
t-variation-settings: inherit; margin: 0px; padding: 0px; vertical-align: b=
aseline; color: #242424;"><span style=3D"border: 0px; font-style: inherit; =
font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-si=
ze: 12pt; line-height: inherit; font-family: Aptos, Aptos_EmbeddedFont, Apt=
os_MSFontService, Calibri, Helvetica, sans-serif; font-optical-sizing: inhe=
rit; font-kerning: inherit; font-feature-settings: inherit; font-variation-=
settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline; col=
or: black;">&nbsp;</span></div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-variant-position: i=
nherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-=
family: 'Segoe UI', 'Segoe UI Web (West European)', 'Segoe UI', -apple-syst=
em, BlinkMacSystemFont, Roboto, 'Helvetica Neue', sans-serif; font-optical-=
sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; fon=
t-variation-settings: inherit; margin: 0px; padding: 0px; vertical-align: b=
aseline; color: #242424;"><span style=3D"border: 0px; font-style: inherit; =
font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-si=
ze: 12pt; line-height: inherit; font-family: Aptos, Aptos_EmbeddedFont, Apt=
os_MSFontService, Calibri, Helvetica, sans-serif; font-optical-sizing: inhe=
rit; font-kerning: inherit; font-feature-settings: inherit; font-variation-=
settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline; col=
or: black;">Despite this, builds keep failing due to the following error:</=
span></div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-variant-position: i=
nherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-=
family: 'Segoe UI', 'Segoe UI Web (West European)', 'Segoe UI', -apple-syst=
em, BlinkMacSystemFont, Roboto, 'Helvetica Neue', sans-serif; font-optical-=
sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; fon=
t-variation-settings: inherit; margin: 0px; padding: 0px; vertical-align: b=
aseline; color: #242424;"><span style=3D"border: 0px; font-style: inherit; =
font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-si=
ze: 12pt; line-height: inherit; font-family: Aptos, Aptos_EmbeddedFont, Apt=
os_MSFontService, Calibri, Helvetica, sans-serif; font-optical-sizing: inhe=
rit; font-kerning: inherit; font-feature-settings: inherit; font-variation-=
settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline; col=
or: black;">&nbsp;</span></div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-variant-position: i=
nherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-=
family: 'Segoe UI', 'Segoe UI Web (West European)', 'Segoe UI', -apple-syst=
em, BlinkMacSystemFont, Roboto, 'Helvetica Neue', sans-serif; font-optical-=
sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; fon=
t-variation-settings: inherit; margin: 0px; padding: 0px; vertical-align: b=
aseline; color: #242424;"><span style=3D"border: 0px; font-style: inherit; =
font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-si=
ze: 12pt; line-height: inherit; font-family: Aptos, Aptos_EmbeddedFont, Apt=
os_MSFontService, Calibri, Helvetica, sans-serif; font-optical-sizing: inhe=
rit; font-kerning: inherit; font-feature-settings: inherit; font-variation-=
settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline; col=
or: black;">ERROR: Nothing PROVIDES 'gdb'</span></div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-variant-position: i=
nherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-=
family: 'Segoe UI', 'Segoe UI Web (West European)', 'Segoe UI', -apple-syst=
em, BlinkMacSystemFont, Roboto, 'Helvetica Neue', sans-serif; font-optical-=
sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; fon=
t-variation-settings: inherit; margin: 0px; padding: 0px; vertical-align: b=
aseline; color: #242424;"><span style=3D"border: 0px; font-style: inherit; =
font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-si=
ze: 12pt; line-height: inherit; font-family: Aptos, Aptos_EmbeddedFont, Apt=
os_MSFontService, Calibri, Helvetica, sans-serif; font-optical-sizing: inhe=
rit; font-kerning: inherit; font-feature-settings: inherit; font-variation-=
settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline; col=
or: black;">gdb was skipped: it has incompatible license(s): GPL-3.0-only L=
GPL-3.0-only</span></div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-variant-position: i=
nherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-=
family: 'Segoe UI', 'Segoe UI Web (West European)', 'Segoe UI', -apple-syst=
em, BlinkMacSystemFont, Roboto, 'Helvetica Neue', sans-serif; font-optical-=
sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; fon=
t-variation-settings: inherit; margin: 0px; padding: 0px; vertical-align: b=
aseline; color: #242424;"><span style=3D"border: 0px; font-style: inherit; =
font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-si=
ze: 12pt; line-height: inherit; font-family: Aptos, Aptos_EmbeddedFont, Apt=
os_MSFontService, Calibri, Helvetica, sans-serif; font-optical-sizing: inhe=
rit; font-kerning: inherit; font-feature-settings: inherit; font-variation-=
settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline; col=
or: black;">&nbsp;</span></div>
<div style=3D"border: 0px; font-variant-numeric: inherit; font-variant-east=
-asian: inherit; font-variant-alternates: inherit; font-variant-position: i=
nherit; font-stretch: inherit; font-size: 15px; line-height: inherit; font-=
family: 'Segoe UI', 'Segoe UI Web (West European)', 'Segoe UI', -apple-syst=
em, BlinkMacSystemFont, Roboto, 'Helvetica Neue', sans-serif; font-optical-=
sizing: inherit; font-kerning: inherit; font-feature-settings: inherit; fon=
t-variation-settings: inherit; margin: 0px; padding: 0px; vertical-align: b=
aseline; color: #242424;"><span style=3D"border: 0px; font-style: inherit; =
font-variant: inherit; font-weight: inherit; font-stretch: inherit; font-si=
ze: 12pt; line-height: inherit; font-family: Aptos, Aptos_EmbeddedFont, Apt=
os_MSFontService, Calibri, Helvetica, sans-serif; font-optical-sizing: inhe=
rit; font-kerning: inherit; font-feature-settings: inherit; font-variation-=
settings: inherit; margin: 0px; padding: 0px; vertical-align: baseline; col=
or: black;">How to I correctly exempt gdb from the incompatible licenses? I=
 also tried WHITELIST_GPL-3.0 but bitbake identifies that as an out of date=
 override.</span></div>

--JLhAVtAakulYqKzkXfB1--

