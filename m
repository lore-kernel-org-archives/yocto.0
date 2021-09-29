Return-Path: <opensource@keylevel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59CA7C433F5
	for <webhook@archiver.kernel.org>; Wed, 29 Sep 2021 09:47:54 +0000 (UTC)
Received: from hs013.4uh.net (hs013.4uh.net [80.68.86.13])
 by mx.groups.io with SMTP id smtpd.web09.6621.1632908872617508154
 for <yocto@lists.yoctoproject.org>;
 Wed, 29 Sep 2021 02:47:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@keylevel.com header.s=default header.b=ipJfzoD9;
 spf=pass (domain: keylevel.com, ip: 80.68.86.13,
 mailfrom: opensource@keylevel.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=keylevel.com; s=default; h=References:To:Cc:In-Reply-To:Date:Subject:
	Mime-Version:Content-Type:Message-Id:From:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=7SK0r6683oUFshzOOihfP/pJWEG1buYybS7N1fZwfUk=; b=ipJfzoD9jp9SXALah7zgMEFq1p
	qA4dBt7tYnsUQcDI1wf3HzIWKUSCVAA/miJubS4IFxajjPe2OskaiZOQnP4WLnE0JJksIponJCVZR
	cXINpe9t63FQTSYspFAKECmYNut0EZoRqjFwwkdd2/McJdbjjMfMHQ4Ud5LVJApoX0N/fXy7PatcB
	M0tz+fHrY+cq5d+yZPUdxYcGN1T8xc2l1nb5Xl7Vkrb3HAe0xFTLKqB9LqTqtjPd/XAjyS45ifjYW
	d4EL4XXahbAa721i5CGfFfGzPfsRNZAHZWq+QxwAX6oeZeIBae3vnQQv+4eoDzlXN19xvr3DXwUaR
	x9EglrBw==;
Received: from durham.keylevel.com ([88.97.77.109]:34537
 helo=smtpclient.apple)
	by hs013.4uh.net with esmtpsa  (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <opensource@keylevel.com>)
	id 1mVWBo-0000la-Cb; Wed, 29 Sep 2021 10:47:47 +0100
From: Chris Tapp <opensource@keylevel.com>
Message-Id: <31E7A0A6-977C-41FA-86D0-5A073DD38B94@keylevel.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_DF250EA2-A69B-416F-957A-1F671D48D853"
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [yocto] Enabling tk for Python tkinter module
Date: Wed, 29 Sep 2021 10:47:47 +0100
In-Reply-To: 
 <CANx9H-D7kB8HHWQOsECKGVUCsC-wpK_OfhOAhPaB5_NCntgrfw@mail.gmail.com>
Cc: yocto@lists.yoctoproject.org
To: Tim Orling <ticotimo@gmail.com>
References: <D8593103-F731-447D-96B1-40DA4BD326AE@keylevel.com>
 <CANx9H-D7kB8HHWQOsECKGVUCsC-wpK_OfhOAhPaB5_NCntgrfw@mail.gmail.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-4UH-MailScanner-Information: Please contact the ISP for more information
X-4UH-MailScanner-ID: 1mVWBo-0000la-Cb
X-4UH-MailScanner: Found to be clean
X-4UH-MailScanner-SpamCheck: 
X-4UH-MailScanner-From: opensource@keylevel.com
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - hs013.4uh.net
X-AntiAbuse: Original Domain - lists.yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: hs013.4uh.net: authenticated_id:
 opensource@keylevel.com
X-Authenticated-Sender: hs013.4uh.net: opensource@keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 29 Sep 2021 09:47:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54909


--Apple-Mail=_DF250EA2-A69B-416F-957A-1F671D48D853
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Hi Tim,

Thanks, that=E2=80=99s got it going. I was close, but didn=E2=80=99t =
quite cast the correct spell ;-)

Next is to work out why the display is black when I create a window...

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!

> On 29 Sep 2021, at 02:21, Tim Orling <ticotimo@gmail.com> wrote:
>=20
>=20
>=20
> On Tue, Sep 28, 2021 at 2:58 PM Chris Tapp <opensource@keylevel.com =
<mailto:opensource@keylevel.com>> wrote:
> I am trying to get PySimpleGUI running on an RPi4 using =
meta-raspberrypi with hardknott.
>=20
> I have created a recipe for PySimpleGUI and added the following to my =
local.conf:
>=20
> PACKAGECONFIG_pn-python3 =3D =E2=80=9Ctk=E2=80=9D
> IMAGE_INSTALL_append =3D " python3 python3-modules python3-pysimplegui =
tk"
>=20
> However, the tkinter module fails to load, reporting =E2=80=9CNo =
module named _tkinter=E2=80=9D, with a note above saying that Python may =
not be configured for Tk.
>=20
> Looking on the target, /usr/lib/libtk.8.so <http://libtk.8.so/> is =
present.
>=20
> It looks as if there is something else I need to do to get Python to =
build correctly, but I=E2=80=99m out of ideas ;-)
>=20
> You need to add =E2=80=9Ctk=E2=80=9D to the package config for python3
> =
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-devtools/=
python/python3_3.9.6.bb#n110 =
<http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-devtools=
/python/python3_3.9.6.bb#n110>
>=20
> Add the following to your distro|site|local.conf (or a =
python3_%.bbappend)
>=20
> PACKAGECONFIG:append:pn-python3 =3D =E2=80=9C tk=E2=80=9D
>=20
> ( replace : with _ if you are on old release that doesn=E2=80=99t =
support the new override syntax)
>=20
> (This assumes you have meta-oe in your bblayers.conf so you can build =
tk, which it sounds like you do)
>=20
> This is because the _tkinter .so built by python3 is dynamically =
loaded only if present=20
> =
http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-devtools/=
python/python3/python3-manifest.json#n1161 =
<http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-devtools=
/python/python3/python3-manifest.json#n1161>
> =E2=80=94Tim =E2=80=9Cmoto-timo=E2=80=9D Orling
>=20
>=20
> I=E2=80=99ve found a few bits on the internet that seem related, but =
they haven=E2=80=99t helped me get things going:
>  https://www.mail-archive.com/yocto@yoctoproject.org/msg18232.html =
<https://www.mail-archive.com/yocto@yoctoproject.org/msg18232.html>
>  https://www.yoctoproject.org/pipermail/yocto/2014-July/020547.html =
<https://www.yoctoproject.org/pipermail/yocto/2014-July/020547.html>
>=20
> Any pointers on where to look would be appreciated.
>=20
> --
>=20
> Chris Tapp
> opensource@keylevel.com <mailto:opensource@keylevel.com>
> www.keylevel.com <http://www.keylevel.com/>
>=20
>=20
>=20
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#54900): =
https://lists.yoctoproject.org/g/yocto/message/54900 =
<https://lists.yoctoproject.org/g/yocto/message/54900>
> Mute This Topic: https://lists.yoctoproject.org/mt/85935979/3617534 =
<https://lists.yoctoproject.org/mt/85935979/3617534>
> Group Owner: yocto+owner@lists.yoctoproject.org =
<mailto:yocto+owner@lists.yoctoproject.org>
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub =
<https://lists.yoctoproject.org/g/yocto/unsub> [opensource@keylevel.com =
<mailto:opensource@keylevel.com>]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-


--Apple-Mail=_DF250EA2-A69B-416F-957A-1F671D48D853
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" class=3D"">Hi =
Tim,<div class=3D""><br class=3D""></div><div class=3D"">Thanks, =
that=E2=80=99s got it going. I was close, but didn=E2=80=99t quite cast =
the correct spell ;-)</div><div class=3D""><br class=3D""></div><div =
class=3D"">Next is to work out why the display is black when I create a =
window...</div><div class=3D""><br class=3D""><div class=3D"">
<div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; orphans: =
auto; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div style=3D"color: rgb(0, 0, 0); letter-spacing: normal; =
orphans: auto; text-align: start; text-indent: 0px; text-transform: =
none; white-space: normal; widows: auto; word-spacing: 0px; =
-webkit-text-stroke-width: 0px; word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><span class=3D"Apple-style-span" style=3D"border-collapse: =
separate; color: rgb(0, 0, 0); font-family: Helvetica; font-style: =
normal; font-variant: normal; font-weight: normal; letter-spacing: =
normal; line-height: normal; orphans: 2; text-indent: 0px; =
text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; =
border-spacing: 0px; -webkit-text-decorations-in-effect: none; =
-webkit-text-stroke-width: 0px;"><div style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D""><div class=3D"">--</div><div class=3D""><br =
class=3D""></div><div class=3D"">Chris Tapp</div><div class=3D""><a =
href=3D"mailto:opensource@keylevel.com" =
class=3D"">opensource@keylevel.com</a></div><div class=3D""><a =
href=3D"http://www.keylevel.com" class=3D"">www.keylevel.com</a></div><div=
 class=3D""><br class=3D""></div><div class=3D"">----</div><div =
class=3D"">You can tell you're getting older when your car insurance =
gets real cheap!</div></div></span></div></div></div></div>
</div>
<div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On 29 Sep 2021, at 02:21, Tim Orling &lt;<a =
href=3D"mailto:ticotimo@gmail.com" class=3D"">ticotimo@gmail.com</a>&gt; =
wrote:</div><br class=3D"Apple-interchange-newline"><div class=3D""><meta =
charset=3D"UTF-8" class=3D""><div style=3D"caret-color: rgb(0, 0, 0); =
font-family: HelveticaNeue; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><br =
class=3D"Apple-interchange-newline"><br class=3D""><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Sep =
28, 2021 at 2:58 PM Chris Tapp &lt;<a =
href=3D"mailto:opensource@keylevel.com" =
class=3D"">opensource@keylevel.com</a>&gt; wrote:<br =
class=3D""></div><blockquote class=3D"gmail_quote" style=3D"margin: 0px =
0px 0px 0.8ex; border-left-width: 1px; border-left-style: solid; =
padding-left: 1ex; border-left-color: rgb(204, 204, 204);">I am trying =
to get PySimpleGUI running on an RPi4 using meta-raspberrypi with =
hardknott.<br class=3D""><br class=3D"">I have created a recipe for =
PySimpleGUI and added the following to my local.conf:<br class=3D""><br =
class=3D"">PACKAGECONFIG_pn-python3 =3D =E2=80=9Ctk=E2=80=9D<br =
class=3D"">IMAGE_INSTALL_append =3D " python3 python3-modules =
python3-pysimplegui tk"<br class=3D""><br class=3D"">However, the =
tkinter module fails to load, reporting =E2=80=9CNo module named =
_tkinter=E2=80=9D, with a note above saying that Python may not be =
configured for Tk.<br class=3D""><br class=3D"">Looking on the target, =
/usr/lib/<a href=3D"http://libtk.8.so/" rel=3D"noreferrer" =
target=3D"_blank" class=3D"">libtk.8.so</a><span =
class=3D"Apple-converted-space">&nbsp;</span>is present.<br class=3D""><br=
 class=3D"">It looks as if there is something else I need to do to get =
Python to build correctly, but I=E2=80=99m out of ideas ;-)<br =
class=3D""></blockquote><div dir=3D"auto" class=3D""><br =
class=3D""></div><div dir=3D"auto" class=3D"">You need to add =E2=80=9Ctk=E2=
=80=9D to the package config for python3</div><div dir=3D"auto" =
class=3D""><div class=3D""><a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-d=
evtools/python/python3_3.9.6.bb#n110" =
class=3D"">http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipe=
s-devtools/python/python3_3.9.6.bb#n110</a></div><div dir=3D"auto" =
class=3D""><br class=3D""></div><div dir=3D"auto" class=3D"">Add the =
following to your distro|site|local.conf (or a =
python3_%.bbappend)</div><div dir=3D"auto" class=3D""><br =
class=3D""></div><div dir=3D"auto" =
class=3D"">PACKAGECONFIG:append:pn-python3 =3D =E2=80=9C tk=E2=80=9D</div>=
<div dir=3D"auto" class=3D""><br class=3D""></div><div dir=3D"auto" =
class=3D"">( replace : with _ if you are on old release that doesn=E2=80=99=
t support the new override syntax)</div><br class=3D""></div><div =
dir=3D"auto" class=3D"">(This assumes you have meta-oe in your =
bblayers.conf so you can build tk, which it sounds like you =
do)</div><div dir=3D"auto" class=3D""><br class=3D""></div><div =
dir=3D"auto" class=3D"">This is because the _tkinter .so built by =
python3 is dynamically loaded only if present&nbsp;</div><div dir=3D"auto"=
 class=3D""><div class=3D""><a =
href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-d=
evtools/python/python3/python3-manifest.json#n1161" =
class=3D"">http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipe=
s-devtools/python/python3/python3-manifest.json#n1161</a></div><br =
class=3D""></div><div dir=3D"auto" class=3D"">=E2=80=94Tim =
=E2=80=9Cmoto-timo=E2=80=9D Orling</div><div dir=3D"auto" class=3D""><br =
class=3D""></div><blockquote class=3D"gmail_quote" style=3D"margin: 0px =
0px 0px 0.8ex; border-left-width: 1px; border-left-style: solid; =
padding-left: 1ex; border-left-color: rgb(204, 204, 204);"><br =
class=3D"">I=E2=80=99ve found a few bits on the internet that seem =
related, but they haven=E2=80=99t helped me get things going:<br =
class=3D"">&nbsp;<a =
href=3D"https://www.mail-archive.com/yocto@yoctoproject.org/msg18232.html"=
 rel=3D"noreferrer" target=3D"_blank" =
class=3D"">https://www.mail-archive.com/yocto@yoctoproject.org/msg18232.ht=
ml</a><br class=3D"">&nbsp;<a =
href=3D"https://www.yoctoproject.org/pipermail/yocto/2014-July/020547.html=
" rel=3D"noreferrer" target=3D"_blank" =
class=3D"">https://www.yoctoproject.org/pipermail/yocto/2014-July/020547.h=
tml</a><br class=3D""><br class=3D"">Any pointers on where to look would =
be appreciated.<br class=3D""><br class=3D"">--<br class=3D""><br =
class=3D"">Chris Tapp<br class=3D""><a =
href=3D"mailto:opensource@keylevel.com" target=3D"_blank" =
class=3D"">opensource@keylevel.com</a><br class=3D""><a =
href=3D"http://www.keylevel.com/" rel=3D"noreferrer" target=3D"_blank" =
class=3D"">www.keylevel.com</a><br class=3D""><br class=3D""><br =
class=3D""><br class=3D""><br class=3D""></blockquote></div></div><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: HelveticaNeue; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
HelveticaNeue; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" =
class=3D"">-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-</span><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: HelveticaNeue; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
HelveticaNeue; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">Links: You =
receive all messages sent to this group.</span><br style=3D"caret-color: =
rgb(0, 0, 0); font-family: HelveticaNeue; font-size: 12px; font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: HelveticaNeue; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">View/Reply Online (#54900):<span =
class=3D"Apple-converted-space">&nbsp;</span></span><a =
href=3D"https://lists.yoctoproject.org/g/yocto/message/54900" =
style=3D"font-family: HelveticaNeue; font-size: 12px; font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/g/yocto/message/54900</a><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: HelveticaNeue; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
HelveticaNeue; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">Mute This =
Topic:<span class=3D"Apple-converted-space">&nbsp;</span></span><a =
href=3D"https://lists.yoctoproject.org/mt/85935979/3617534" =
style=3D"font-family: HelveticaNeue; font-size: 12px; font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/mt/85935979/3617534</a><br =
style=3D"caret-color: rgb(0, 0, 0); font-family: HelveticaNeue; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
HelveticaNeue; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D"">Group =
Owner:<span class=3D"Apple-converted-space">&nbsp;</span></span><a =
href=3D"mailto:yocto+owner@lists.yoctoproject.org" style=3D"font-family: =
HelveticaNeue; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px;" =
class=3D"">yocto+owner@lists.yoctoproject.org</a><br style=3D"caret-color:=
 rgb(0, 0, 0); font-family: HelveticaNeue; font-size: 12px; font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; text-align: start; text-indent: 0px; text-transform: none; =
white-space: normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none;" class=3D""><span style=3D"caret-color: rgb(0, 0, =
0); font-family: HelveticaNeue; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">Unsubscribe:<span =
class=3D"Apple-converted-space">&nbsp;</span></span><a =
href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
style=3D"font-family: HelveticaNeue; font-size: 12px; font-style: =
normal; font-variant-caps: normal; font-weight: normal; letter-spacing: =
normal; orphans: auto; text-align: start; text-indent: 0px; =
text-transform: none; white-space: normal; widows: auto; word-spacing: =
0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px;" =
class=3D"">https://lists.yoctoproject.org/g/yocto/unsub</a><span =
style=3D"caret-color: rgb(0, 0, 0); font-family: HelveticaNeue; =
font-size: 12px; font-style: normal; font-variant-caps: normal; =
font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" class=3D""><span =
class=3D"Apple-converted-space">&nbsp;</span>[</span><a =
href=3D"mailto:opensource@keylevel.com" style=3D"font-family: =
HelveticaNeue; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; orphans: auto; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; widows: auto; word-spacing: 0px; -webkit-text-size-adjust: auto; =
-webkit-text-stroke-width: 0px;" =
class=3D"">opensource@keylevel.com</a><span style=3D"caret-color: rgb(0, =
0, 0); font-family: HelveticaNeue; font-size: 12px; font-style: normal; =
font-variant-caps: normal; font-weight: normal; letter-spacing: normal; =
text-align: start; text-indent: 0px; text-transform: none; white-space: =
normal; word-spacing: 0px; -webkit-text-stroke-width: 0px; =
text-decoration: none; float: none; display: inline !important;" =
class=3D"">]</span><br style=3D"caret-color: rgb(0, 0, 0); font-family: =
HelveticaNeue; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none;" class=3D""><span style=3D"caret-color: rgb(0, 0, 0); font-family: =
HelveticaNeue; font-size: 12px; font-style: normal; font-variant-caps: =
normal; font-weight: normal; letter-spacing: normal; text-align: start; =
text-indent: 0px; text-transform: none; white-space: normal; =
word-spacing: 0px; -webkit-text-stroke-width: 0px; text-decoration: =
none; float: none; display: inline !important;" =
class=3D"">-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-</span></div></blo=
ckquote></div><br class=3D""></div></body></html>=

--Apple-Mail=_DF250EA2-A69B-416F-957A-1F671D48D853--

