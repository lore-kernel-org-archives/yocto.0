Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.24])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.9764.1792584091948386609
 for <yocto@lists.yoctoproject.org>;
 Wed, 21 Oct 2026 05:01:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@kapsi.fi header.s=20161220 header.b=biUHMBok;
 spf=pass (domain: kapsi.fi, ip: 91.232.154.24, mailfrom: antime@kapsi.fi)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=kapsi.fi;
	s=20161220; h=Message-Id:In-Reply-To:To:References:Date:Subject:Mime-Version:
	Content-Type:From:Sender:Reply-To:Cc:Content-Transfer-Encoding:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
	List-Post:List-Owner:List-Archive;
	bh=xSIZcDwANPNYc+XGX46IZa2fuFsYuILOj9e05p0YIHg=; b=biUHMBokmrpA1PJYpRL3X+3MM0
	SfMAp5XtcHzB49c2S8NtqIgHM2MeMsM+F3p4MepRwU6bTSrToeloShXMqyZxWTCmtS7CMg68W0hQ2
	STM2SI3U/BvgKZq04uG5MTkaWApUQU7nLzlkqmxMQ0HB6yvqhJ3uQ2OpIWm+GiVYuIJwZzK65rSTz
	ewD/dmcsxlwsTfiUjSFCciPB/1cs177uwaqmzSVNA3WhKLPbqp/WgOsIpUua6SPKZ2F1oZGgyCQK2
	XNmU2CNMHCwkssRpHOGrg/7iz0YRe2ENDm9SRK5ae0YLeeJcFMp6s7TMrcOqILCORvf/lA3eZEspo
	8gLXQM8w==;
Received: from 62-78-237-218.bb.dnainternet.fi ([62.78.237.218] helo=smtpclient.apple)
	by mail.kapsi.fi with esmtpsa (Exim 4.96)
	(envelope-from <Anders.Montonen@iki.fi>)
		id 1xJV0V-00FlFP-0C
	for yocto@lists.yoctoproject.org;
	Wed, 21 Oct 2026 15:01:29 +0300
From: Anders Montonen <Anders.Montonen@iki.fi>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_15F7557E-C1E7-4411-8B2D-BAF7A7D8CB0B"
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.700.51.1.1\))
Subject: Re: [yocto] SPDX 3 generation broken in Scarthgap?
Date: Wed, 21 Oct 2026 15:01:12 +0300
References: <C31FFA20-728D-442B-9229-10914FD47639@iki.fi>
 <DM9VF9OJMDIB.1KZKR8SY4Q9NP@smile.fr>
To: yocto@lists.yoctoproject.org
In-Reply-To: <DM9VF9OJMDIB.1KZKR8SY4Q9NP@smile.fr>
Message-Id: <2EEE7A6A-9A4F-40D4-983B-911F65FD959C@iki.fi>
X-Mailer: Apple Mail (2.3864.700.51.1.1)
X-Rspam-Score: -1.6 (-)
X-Rspam-Report: Action: no action
 Symbol: RCVD_TLS_ALL(0.00)
 Symbol: FROM_HAS_DN(0.00)
 Symbol: FROM_EQ_ENVFROM(0.00)
 Symbol: BAYES_HAM(-3.00)
 Symbol: LOCAL_OUTBOUND(0.00)
 Symbol: TO_DN_NONE(0.00)
 Symbol: TO_MATCH_ENVRCPT_ALL(0.00)
 Symbol: MIME_GOOD(-0.10)
 Symbol: MV_CASE(0.50)
 Symbol: SUBJECT_ENDS_QUESTION(1.00)
 Symbol: MID_RHS_MATCH_FROM(0.00)
 Symbol: RCVD_VIA_SMTP_AUTH(0.00)
 Symbol: ARC_NA(0.00)
 Symbol: ASN(0.00)
 Symbol: RCVD_COUNT_ONE(0.00)
 Symbol: MIME_TRACE(0.00)
 Symbol: RCPT_COUNT_ONE(0.00)
 X-Symbol: RCVD_TLS_ALL(0.00); All hops used encrypted transports
 X-Symbol: FROM_HAS_DN(0.00); From header has a display name
 X-Symbol: FROM_EQ_ENVFROM(0.00); From address is the same as the envelope
 X-Symbol: BAYES_HAM(-3.00); Message probably ham, probability:  [100.00%]
 X-Symbol: LOCAL_OUTBOUND(0.00); Mail from local to external domain
 X-Symbol: TO_DN_NONE(0.00); None of the recipients have display names
 X-Symbol: TO_MATCH_ENVRCPT_ALL(0.00); All of the recipients match the envelope
 X-Symbol: MIME_GOOD(-0.10); Known content-type [multipart/alternative, text/plain]
 X-Symbol: MV_CASE(0.50); Mime-Version .vs. MIME-Version
 X-Symbol: SUBJECT_ENDS_QUESTION(1.00); Subject ends with a question mark
 X-Symbol: MID_RHS_MATCH_FROM(0.00); Message-ID RHS matches From domain
 X-Symbol: RCVD_VIA_SMTP_AUTH(0.00); Authenticated hand-off was seen in Received headers
 X-Symbol: ARC_NA(0.00); ARC signature absent
 X-Symbol: ASN(0.00) [asn:16086, ipnet:62.78.128.0/17, country:FI]
 X-Symbol: RCVD_COUNT_ONE(0.00); Message has one Received header [1]
 X-Symbol: MIME_TRACE(0.00) [0:+, 1:+, 2:~]
 X-Symbol: RCPT_COUNT_ONE(0.00); One recipient [1]
 Message-ID: 2EEE7A6A-9A4F-40D4-983B-911F65FD959C@iki.fi
 X-Milter-Del: X-Spam
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <yocto@lists.yoctoproject.org>; Wed, 21 Oct 2026 12:01:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66774


--Apple-Mail=_15F7557E-C1E7-4411-8B2D-BAF7A7D8CB0B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi,

> On 20. Oct 2026, at 21.18, Yoann Congal <yoann.congal@smile.fr> wrote:
>=20
> Hello,
>=20
> On Tue Oct 20, 2026 at 7:08 PM CEST, Anders Montonen via =
lists.yoctoproject.org <http://lists.yoctoproject.org/> wrote:
>> 1. Clone the scarthgap branch of the poky repository (HEAD and 5.0.20 =
seems to work identically)
>> 2. Run "source oe-init-build-env"
>> 3. Add the lines listed in the documentation to local.conf:
>> 	INHERIT_DISTRO:remove =3D "create-spdx"
>> 	INHERIT_DISTRO:append =3D " create-spdx-3.0=E2=80=9D
>> 4. Run =E2=80=9Cbitbake -k core-image-minimal=E2=80=9D
>=20
> This is the SPDX30Check.test_core_image_minimal testcase that runs as
> part of the regular oe-selftest builds: eg:
> =
https://autobuilder.yoctoproject.org/valkyrie/?#/builders/48/builds/4875/s=
teps/18/logs/stdio (line 1764)
>=20
> But the test does not use INHERIT_DISTRO but :
> INHERIT:remove =3D "create-spdx"
> INHERIT +=3D "create-spdx-3.0"
>=20
> I think this is an issue because the poky DISTRO adds create-spdx to
> INHERIT (not INHERIT_DISTRO) in poky.conf. This means that in your
> config you have both create-spdx and create-spdx-3.0 in INHERIT, and
> that would explain the below issue.
>=20
> Does changing to INHERIT modification fixes you issue?

That did the trick, thank you. I see that there=E2=80=99s a difference =
in the documentation between the =E2=80=9CCreating a Software Bill of =
Materials=E2=80=9D chapter in the development tasks manual, and the =
documentation for the create-spdx class. The development tasks manual =
uses =E2=80=9CINHERIT_DISTRO=E2=80=9D, while the class documentation =
just uses =E2=80=9CINHERIT=E2=80=9D.

Regards,
Anders Montonen=

--Apple-Mail=_15F7557E-C1E7-4411-8B2D-BAF7A7D8CB0B
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html aria-label=3D"message body"><head><meta http-equiv=3D"content-type" =
content=3D"text/html; charset=3Dutf-8"></head><body =
style=3D"overflow-wrap: break-word; -webkit-nbsp-mode: space; =
line-break: after-white-space;">Hi,<br =
id=3D"lineBreakAtBeginningOfMessage"><div><br><blockquote =
type=3D"cite"><div>On 20. Oct 2026, at 21.18, Yoann Congal =
&lt;yoann.congal@smile.fr&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div><meta charset=3D"UTF-8"><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;">Hello,</span><br style=3D"caret-color: =
rgb(0, 0, 0); font-family: Helvetica; font-size: 12px; font-style: =
normal; font-variant-caps: normal; font-weight: 400; letter-spacing: =
normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration-line: none; =
text-decoration-thickness: auto; text-decoration-style: solid;"><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration-line: none; =
text-decoration-thickness: auto; text-decoration-style: solid;"><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;">On Tue Oct 20, 2026 at 7:08 PM CEST, Anders =
Montonen via<span class=3D"Apple-converted-space">&nbsp;</span></span><a =
href=3D"http://lists.yoctoproject.org/" style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: 2; =
word-spacing: 0px; -webkit-text-stroke-width: =
0px;">lists.yoctoproject.org</a><span style=3D"caret-color: rgb(0, 0, =
0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: 2; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;"><span =
class=3D"Apple-converted-space">&nbsp;</span>wrote:</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration-line: none; =
text-decoration-thickness: auto; text-decoration-style: =
solid;"><blockquote type=3D"cite" style=3D"font-family: Helvetica; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; widows: 2; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration-line: =
none; text-decoration-thickness: auto; text-decoration-style: solid;">1. =
Clone the scarthgap branch of the poky repository (HEAD and 5.0.20 seems =
to work identically)<br>2. Run "source oe-init-build-env"<br>3. Add the =
lines listed in the documentation to local.conf:<br><span =
class=3D"Apple-tab-span" style=3D"white-space: pre;">	=
</span>INHERIT_DISTRO:remove =3D "create-spdx"<br><span =
class=3D"Apple-tab-span" style=3D"white-space: pre;">	=
</span>INHERIT_DISTRO:append =3D " create-spdx-3.0=E2=80=9D<br>4. Run =
=E2=80=9Cbitbake -k core-image-minimal=E2=80=9D<br></blockquote><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration-line: none; =
text-decoration-thickness: auto; text-decoration-style: solid;"><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;">This is the =
SPDX30Check.test_core_image_minimal testcase that runs as</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration-line: none; =
text-decoration-thickness: auto; text-decoration-style: solid;"><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;">part of the regular oe-selftest builds: =
eg:</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; orphans: 2; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration-line: none; text-decoration-thickness: auto; =
text-decoration-style: solid;"><a =
href=3D"https://autobuilder.yoctoproject.org/valkyrie/?#/builders/48/build=
s/4875/steps/18/logs/stdio" style=3D"font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: =
0px;">https://autobuilder.yoctoproject.org/valkyrie/?#/builders/48/builds/=
4875/steps/18/logs/stdio</a><span style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: 2; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;"><span =
class=3D"Apple-converted-space">&nbsp;</span>(line 1764)</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration-line: none; =
text-decoration-thickness: auto; text-decoration-style: solid;"><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration-line: none; =
text-decoration-thickness: auto; text-decoration-style: solid;"><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;">But the test does not use INHERIT_DISTRO =
but :</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; orphans: 2; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration-line: none; text-decoration-thickness: auto; =
text-decoration-style: solid;"><span style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: 2; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;">INHERIT:remove =3D "create-spdx"</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration-line: none; =
text-decoration-thickness: auto; text-decoration-style: solid;"><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;">INHERIT +=3D "create-spdx-3.0"</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration-line: none; =
text-decoration-thickness: auto; text-decoration-style: solid;"><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration-line: none; =
text-decoration-thickness: auto; text-decoration-style: solid;"><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;">I think this is an issue because the poky =
DISTRO adds create-spdx to</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: 2; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration-line: none; =
text-decoration-thickness: auto; text-decoration-style: solid;"><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;">INHERIT (not INHERIT_DISTRO) in poky.conf. =
This means that in your</span><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: 2; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration-line: none; =
text-decoration-thickness: auto; text-decoration-style: solid;"><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;">config you have both create-spdx and =
create-spdx-3.0 in INHERIT, and</span><br style=3D"caret-color: rgb(0, =
0, 0); font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: 2; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration-line: none; =
text-decoration-thickness: auto; text-decoration-style: solid;"><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;">that would explain the below =
issue.</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
Helvetica; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: 400; letter-spacing: normal; orphans: 2; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration-line: none; text-decoration-thickness: auto; =
text-decoration-style: solid;"><br style=3D"caret-color: rgb(0, 0, 0); =
font-family: Helvetica; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: 400; letter-spacing: normal; =
orphans: 2; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration-line: none; =
text-decoration-thickness: auto; text-decoration-style: solid;"><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: Helvetica; font-size: =
12px; font-style: normal; font-variant-caps: normal; font-weight: 400; =
letter-spacing: normal; orphans: 2; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; text-decoration: none; float: none; =
display: inline !important;">Does changing to INHERIT modification fixes =
you issue?</span></div></blockquote><br></div><div>That did the trick, =
thank you. I see that there=E2=80=99s a difference in the documentation =
between the =E2=80=9CCreating a Software Bill of Materials=E2=80=9D =
chapter in the development tasks manual, and the documentation for the =
create-spdx class. The development tasks manual uses =
=E2=80=9CINHERIT_DISTRO=E2=80=9D, while the class documentation just =
uses =E2=80=9CINHERIT=E2=80=9D.</div><div><br></div><div>Regards,</div><di=
v>Anders Montonen</div></body></html>=

--Apple-Mail=_15F7557E-C1E7-4411-8B2D-BAF7A7D8CB0B--
