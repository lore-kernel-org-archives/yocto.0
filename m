Return-Path: <Anders.Montonen@iki.fi>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65AD6C433FE
	for <webhook@archiver.kernel.org>; Sun,  6 Nov 2022 16:48:35 +0000 (UTC)
Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
 by mx.groups.io with SMTP id smtpd.web10.275.1667753306816917212
 for <yocto@lists.yoctoproject.org>;
 Sun, 06 Nov 2022 08:48:28 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kapsi.fi header.s=20161220 header.b=skUcv1zl;
 spf=pass (domain: kapsi.fi, ip: 91.232.154.25, mailfrom: antime@kapsi.fi)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
	s=20161220; h=References:To:Cc:In-Reply-To:Date:Subject:Mime-Version:
	Content-Type:Message-Id:From:Sender:Reply-To:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=6OXrIRyTwz0nAMPjqanuW9WH9v08jYhNQOiFpEy/XY0=; b=skUcv1zlLeDvN0M65YdEp/sDuW
	1uavZpQPWRCb9TJ5Iv6qazkONE1c0MGdifEz49/8okT9C6J3UCz1CU++GegPPn9XHWkOuI21DTEF1
	dHoA3NQ/GYUM95Y+rUlAQdy0xMEw0EuYtqYAkif60Kr+78uP/mC7fVlqP6EpLY+W/1RO2qj1rZAD7
	nyYOx5GnVctb6AxRsQOjyyKAbZDdJioMjsPfXV+/uCO5vDj71oFb1GsZB6fdfLkItnnJHgIcaAdkc
	YGlyqWR9klYm1mTtwaRtZIBCK8/HGd861Bk8IvW7x3RMg0YjmIco36dA64gkBICm1QVH2svjtwD6L
	RhzvBa2A==;
Received: from 89-27-79-167.bb.dnainternet.fi ([89.27.79.167] helo=[192.168.1.137])
	by mail.kapsi.fi with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <Anders.Montonen@iki.fi>)
	id 1oriop-005fq2-VY; Sun, 06 Nov 2022 18:48:24 +0200
From: Anders Montonen <Anders.Montonen@iki.fi>
Message-Id: <0C6FEB0D-931C-4EE1-BA24-3534DB9940EC@iki.fi>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_8999DEF8-F932-4290-80D4-75BE1834FDF0"
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.21\))
Subject: Re: [yocto] undefined reference problem persists
Date: Sun, 6 Nov 2022 18:48:22 +0200
In-Reply-To: <7200a7e4-f302-170b-a0e9-f84867b77773@mistywest.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
To: Mistyron <ron.eggler@mistywest.com>
References: <49ac7ca4-2af5-43e9-d5f8-02bb98ac372a@mistywest.com>
 <68E37127-C80B-4A73-A4F1-AB3CA40A8A48@iki.fi>
 <7200a7e4-f302-170b-a0e9-f84867b77773@mistywest.com>
X-Mailer: Apple Mail (2.3445.104.21)
X-SA-Exim-Connect-IP: 89.27.79.167
X-SA-Exim-Mail-From: Anders.Montonen@iki.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 06 Nov 2022 16:48:35 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58499


--Apple-Mail=_8999DEF8-F932-4290-80D4-75BE1834FDF0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi,

> On 6 Nov 2022, at 18:02, Mistyron <ron.eggler@mistywest.com> wrote:
>=20
> On 11/6/22 02:26, Anders Montonen wrote:
>> On 6 Nov 2022, at 9:45, Mistyron <ron.eggler@mistywest.com> wrote:
>>> Hi,
>>>=20
>>> I'm working with dunfell and want to compile and install the drivers =
for the Laird LWB5+ module (available from =
https://github.com/LairdCP/meta-laird-cp).
>>> I have included the path to the layer in meta-laird-cp-pre-3.4 in my =
`bblayers.conf` and since I need the networkmanager and with information =
from their support team (don't trust the README apparently), I've added =
`lrd-networkmanager-sterling` to the `IMAGE_INSTALL` list in =
`sample-image-cp-lwb5plus.bb`. When I invoke `$ bitbake =
sample-image-cp-lwb5plus`, I keep getting:
>>>=20
>>>     | =
/usr/src/debug/lrd-networkmanager-sterling/10.4.0.10-r0/build/../lrd-netwo=
rk-manager-10.4.0.10/src/nmcli/common.c:904: undefined reference to =
`rl_echo_signal_char'
>>>=20
>>> even though I've added `readline` to the `DEPENDS` list. Why is =
this? I expected the `rl_echo_signal_char` dependency to be resolved, =
any hints?
>> Are you using meta-gplv2? That function doesn=E2=80=99t exist yet in =
the version of readline provided by that layer.
>=20
> I see, yes my project is using "meta-gplv2".
>=20
> Should removal of that layer help, or would you recommend that I =
update the readline version within it to the latest? (and provide an =
upstream patch to: https://github.com/lgirdk/meta-gplv2 =
<https://github.com/lgirdk/meta-gplv2> ?

If your project doesn=E2=80=99t have any special requirements about not =
using (L)GPLv3-licensed packages, then dropping meta-gplv2 is by far the =
best option.
The dependency on readline comes from Networkmanager=E2=80=99s user =
interfaces (nmcli, nmtui). If you can live without them, disabling them =
is also an alternative.

Regards,
Anders=

--Apple-Mail=_8999DEF8-F932-4290-80D4-75BE1834FDF0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Hi,<br class=3D""><div><br class=3D""><blockquote type=3D"cite"=
 class=3D""><div class=3D"">On 6 Nov 2022, at 18:02, Mistyron &lt;<a =
href=3D"mailto:ron.eggler@mistywest.com" =
class=3D"">ron.eggler@mistywest.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">On 11/6/22 02:26, Anders =
Montonen wrote:</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><blockquote type=3D"cite" =
style=3D"font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D"">On 6 Nov 2022, at 9:45, Mistyron =
&lt;<a href=3D"mailto:ron.eggler@mistywest.com" =
class=3D"">ron.eggler@mistywest.com</a>&gt; wrote:<br =
class=3D""><blockquote type=3D"cite" class=3D"">Hi,<br class=3D""><br =
class=3D"">I'm working with dunfell and want to compile and install the =
drivers for the Laird LWB5+ module (available from <a =
href=3D"https://github.com/LairdCP/meta-laird-cp" =
class=3D"">https://github.com/LairdCP/meta-laird-cp</a>).<br class=3D"">I =
have included the path to the layer in meta-laird-cp-pre-3.4 in my =
`bblayers.conf` and since I need the networkmanager and with information =
from their support team (don't trust the README apparently), I've added =
`lrd-networkmanager-sterling` to the `IMAGE_INSTALL` list in =
`sample-image-cp-lwb5plus.bb`. When I invoke `$ bitbake =
sample-image-cp-lwb5plus`, I keep getting:<br class=3D""><br =
class=3D"">&nbsp;&nbsp;&nbsp;&nbsp;| =
/usr/src/debug/lrd-networkmanager-sterling/10.4.0.10-r0/build/../lrd-netwo=
rk-manager-10.4.0.10/src/nmcli/common.c:904: undefined reference to =
`rl_echo_signal_char'<br class=3D""><br class=3D"">even though I've =
added `readline` to the `DEPENDS` list. Why is this? I expected the =
`rl_echo_signal_char` dependency to be resolved, any hints?<br =
class=3D""></blockquote>Are you using meta-gplv2? That function =
doesn=E2=80=99t exist yet in the version of readline provided by that =
layer.<br class=3D""></blockquote><br style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 14px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">I see, yes my project is using "meta-gplv2".</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" class=3D""><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D"">Should removal of that layer =
help, or would you recommend that I update the readline version within =
it to the latest? (and provide an upstream patch to:<span =
class=3D"Apple-converted-space">&nbsp;</span></span><a =
href=3D"https://github.com/lgirdk/meta-gplv2" style=3D"font-family: =
Helvetica; font-size: 14px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px;" =
class=3D"">https://github.com/lgirdk/meta-gplv2</a><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;" class=3D""><span =
class=3D"Apple-converted-space">&nbsp;</span>?</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
14px; font-style: normal; font-variant-caps: normal; font-weight: =
normal; letter-spacing: normal; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none;" =
class=3D""></div></blockquote><div><br class=3D""></div></div>If your =
project doesn=E2=80=99t have any special requirements about not using =
(L)GPLv3-licensed packages, then dropping meta-gplv2 is by far the best =
option.<div class=3D"">The dependency on readline comes from =
Networkmanager=E2=80=99s user interfaces (nmcli, nmtui). If you can live =
without them, disabling them is also an alternative.</div><div =
class=3D""><br class=3D""></div><div class=3D"">Regards,</div><div =
class=3D"">Anders</div></body></html>=

--Apple-Mail=_8999DEF8-F932-4290-80D4-75BE1834FDF0--

