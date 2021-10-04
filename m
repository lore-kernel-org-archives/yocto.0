Return-Path: <opensource@keylevel.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28DECC433EF
	for <webhook@archiver.kernel.org>; Mon,  4 Oct 2021 08:21:18 +0000 (UTC)
Received: from hs013.4uh.net (hs013.4uh.net [80.68.86.13])
 by mx.groups.io with SMTP id smtpd.web10.6535.1633335675968500431
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 Oct 2021 01:21:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@keylevel.com header.s=default header.b=GYnDPxnG;
 spf=pass (domain: keylevel.com, ip: 80.68.86.13,
 mailfrom: opensource@keylevel.com)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=keylevel.com; s=default; h=Message-Id:In-Reply-To:To:References:Date:
	Subject:Mime-Version:Content-Type:From:Sender:Reply-To:Cc:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=GH1A/Hcg+BQLYW4sd5mSC5EKzgXE6eHvmP9lrQDQooc=; b=GYnDPxnGa9ZtgATW2TVDhCtfy4
	Do9lnwFIahkodGFXz4GxDWdanDWsUBnd8DXKnYnmoArZHMbTPoCou2iKV9UzrhPksZdNee2bq8tka
	NM2XkfmDnnwQI7NddrzuvOKc9sAUtCb7AxUTyJovqvP8GTMLwNeTv4UmKrLtQixf5wYBWYRzQEZUq
	KqV7H+ujG28o8yj664u4/NPRVg7siGHEiRZIEEwI5tTxsoSvshIJJzmJJY2Gtl7nL71lfH5RPM5WR
	B5bqinPHfhveYoWLvjTFIPo8Jiz+K26Swhtw+4h49w4YNsabYI3YMCeLl83xI3yiBA7QbltNAe3V4
	xDdlOW0g==;
Received: from durham.keylevel.com ([88.97.77.109]:30608
 helo=smtpclient.apple)
	by hs013.4uh.net with esmtpsa  (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <opensource@keylevel.com>)
	id 1mXJDj-0003D8-BK
	for yocto@lists.yoctoproject.org; Mon, 04 Oct 2021 09:21:11 +0100
From: Chris Tapp <opensource@keylevel.com>
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_0DB4F090-A5AE-48BA-B0BA-C965307BFD7F"
Mime-Version: 1.0 (Mac OS X Mail 14.0 \(3654.120.0.1.13\))
Subject: Re: [yocto] Meta-raspberrypi - how to configure device tree for
 MCP251x
Date: Mon, 4 Oct 2021 09:21:10 +0100
References: <16AA05EDD73208C2.24161@lists.yoctoproject.org>
To: yocto@lists.yoctoproject.org
In-Reply-To: <16AA05EDD73208C2.24161@lists.yoctoproject.org>
Message-Id: <15448F47-97A9-4267-9D3B-682D8074D795@keylevel.com>
X-Mailer: Apple Mail (2.3654.120.0.1.13)
X-4UH-MailScanner-Information: Please contact the ISP for more information
X-4UH-MailScanner-ID: 1mXJDj-0003D8-BK
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
 <yocto@lists.yoctoproject.org>; Mon, 04 Oct 2021 08:21:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/54936


--Apple-Mail=_0DB4F090-A5AE-48BA-B0BA-C965307BFD7F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

Sorry, I meant to add that I have tried adding the following to =
local.conf:

RPI_EXTRA_CONFIG =3D ' \n \
    dtparam=3Dspi=3Don \n \
    dtoverlay=3Dmcp2515-can0,oscillator=3D16000000,interrupt=3D25 \n \
    dtoverlay=3Dmcp2515-can1,oscillator=3D16000000,interrupt=3D23 \n \
    '

However, this did not make any difference to the interrupts.

Since then, I have manually changed mcp2515-can1-overlay.dts in the =
kernel build tree (after running bitbake - c do_configure =
virtual/kernel) and rebuilt the kernel / image. This does result in the =
interrupt mapping changing, and both CAN channels then operate =
correctly.

Does anyone know why RPI_EXTRA_CONFIG doesn=E2=80=99t appear to be =
taking effect?

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!

> On 1 Oct 2021, at 22:38, Chris Tapp <opensource@keylevel.com> wrote:
>=20
> I am having trouble getting the Waveshare 2-CH CAN HAT working with an =
RPI4. Channel 0 does not come up, channel 1 does, but it will only send =
one message (eventually reporting "write: No buffer space available=E2=80=9D=
) and not receive anything.
>=20
> Looking at the mcp2515-can0-overlay.dts and mcp2515-can1-overlay.dts =
device tree files in =
/tmp/work-shared/raspberrypi4/kernel-source/arch/arm/boot/dts/overlays/, =
it looks as if the interrupts are not mapped as required for the board.
>=20
>       DTS               HAT
> CAN0  brcm,pins =3D <25>  PIN23
> CAN1  brcm,pins =3D <25>  PIN25
>=20
> This doesn=E2=80=99t look right, and seems consistent with the =
behaviour I am seeing.
>=20
> I would also like to check the device chip select signals, but I can't =
see how (if) they are mapped in the dts files.
>=20
> How can I override these settings when I build the image?
>=20
> --
>=20
> Chris Tapp
> opensource@keylevel.com <mailto:opensource@keylevel.com>
> www.keylevel.com
>=20
>=20
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#54927): =
https://lists.yoctoproject.org/g/yocto/message/54927
> Mute This Topic: https://lists.yoctoproject.org/mt/86011706/3617534
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub =
[opensource@keylevel.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20


--Apple-Mail=_0DB4F090-A5AE-48BA-B0BA-C965307BFD7F
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html; =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; line-break: after-white-space;" =
class=3D"">Sorry, I meant to add that I have tried adding the following =
to local.conf:<div class=3D""><br class=3D""></div><div class=3D""><div =
class=3D""><font face=3D"Courier New" class=3D"">RPI_EXTRA_CONFIG =3D ' =
\n \</font></div><div class=3D""><font face=3D"Courier New" =
class=3D"">&nbsp; &nbsp; dtparam=3Dspi=3Don \n \</font></div><div =
class=3D""><font face=3D"Courier New" class=3D"">&nbsp; &nbsp; =
dtoverlay=3Dmcp2515-can0,oscillator=3D16000000,interrupt=3D25 \n =
\</font></div><div class=3D""><font face=3D"Courier New" class=3D"">&nbsp;=
 &nbsp; dtoverlay=3Dmcp2515-can1,oscillator=3D16000000,interrupt=3D23 \n =
\</font></div><div class=3D""><font face=3D"Courier New" class=3D"">&nbsp;=
 &nbsp; '</font></div></div><div class=3D""><br class=3D""></div><div =
class=3D"">However, this did not make any difference to the =
interrupts.</div><div class=3D""><br class=3D""></div><div =
class=3D"">Since then, I have manually changed mcp2515-can1-overlay.dts =
in the kernel build tree (after running bitbake - c do_configure =
virtual/kernel) and rebuilt the kernel / image. This does result in the =
interrupt mapping changing, and both CAN channels then operate =
correctly.</div><div class=3D""><br class=3D""></div><div class=3D"">Does =
anyone know why RPI_EXTRA_CONFIG doesn=E2=80=99t appear to be taking =
effect?</div><div class=3D""><br class=3D""><div class=3D"">
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
separate; font-family: Helvetica; font-variant-ligatures: normal; =
font-variant-east-asian: normal; font-variant-position: normal; =
line-height: normal; border-spacing: 0px; =
-webkit-text-decorations-in-effect: none;"><div style=3D"word-wrap: =
break-word; -webkit-nbsp-mode: space; -webkit-line-break: =
after-white-space;" class=3D""><div class=3D"">--</div><div class=3D""><br=
 class=3D""></div><div class=3D"">Chris Tapp</div><div class=3D""><a =
href=3D"mailto:opensource@keylevel.com" =
class=3D"">opensource@keylevel.com</a></div><div class=3D""><a =
href=3D"http://www.keylevel.com" class=3D"">www.keylevel.com</a></div><div=
 class=3D""><br class=3D""></div><div class=3D"">----</div><div =
class=3D"">You can tell you're getting older when your car insurance =
gets real cheap!</div></div></span></div></div></div></div>
</div>
<div><br class=3D""><blockquote type=3D"cite" class=3D""><div =
class=3D"">On 1 Oct 2021, at 22:38, Chris Tapp &lt;<a =
href=3D"mailto:opensource@keylevel.com" =
class=3D"">opensource@keylevel.com</a>&gt; wrote:</div><br =
class=3D"Apple-interchange-newline"><div class=3D""><meta =
http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dutf-8" =
class=3D""><div style=3D"word-wrap: break-word; -webkit-nbsp-mode: =
space; line-break: after-white-space;" class=3D"">I am having trouble =
getting the Waveshare 2-CH CAN HAT working with an RPI4. Channel 0 does =
not come up, channel 1 does, but it will only&nbsp;send one message =
(eventually reporting "write: No buffer space available=E2=80=9D) and =
not receive anything.<br class=3D""><br class=3D"">Looking at the =
mcp2515-can0-overlay.dts and mcp2515-can1-overlay.dts device tree files =
in =
/tmp/work-shared/raspberrypi4/kernel-source/arch/arm/boot/dts/overlays/, =
it looks as if the interrupts are not mapped as required for the =
board.<br class=3D""><br class=3D""><font face=3D"Courier New" =
class=3D"">&nbsp; &nbsp; &nbsp; DTS &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; HAT<br class=3D"">CAN0 &nbsp;brcm,pins =3D &lt;25&gt; =
&nbsp;PIN23<br class=3D"">CAN1 &nbsp;brcm,pins =3D &lt;25&gt; =
&nbsp;PIN25<br class=3D""></font><br class=3D"">This doesn=E2=80=99t =
look right, and seems consistent with the behaviour I am seeing.<br =
class=3D""><br class=3D"">I would also like to check the device chip =
select signals, but I can't see how (if) they are mapped in the dts =
files.<br class=3D""><br class=3D"">How can I override these settings =
when I build the image?<br class=3D""><div class=3D""><br =
class=3D"webkit-block-placeholder"></div><div class=3D"">--<br =
class=3D""><br class=3D"">Chris Tapp<br class=3D""><a =
href=3D"mailto:opensource@keylevel.com" =
class=3D"">opensource@keylevel.com</a><br class=3D""><a =
href=3D"http://www.keylevel.com" class=3D"">www.keylevel.com</a><br =
class=3D""><br class=3D""></div></div><br =
class=3D"">-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br =
class=3D"">Links: You receive all messages sent to this group.<br =
class=3D"">View/Reply Online (#54927): <a =
href=3D"https://lists.yoctoproject.org/g/yocto/message/54927" =
class=3D"">https://lists.yoctoproject.org/g/yocto/message/54927</a><br =
class=3D"">Mute This Topic: <a =
href=3D"https://lists.yoctoproject.org/mt/86011706/3617534" =
class=3D"">https://lists.yoctoproject.org/mt/86011706/3617534</a><br =
class=3D"">Group Owner: <a =
href=3D"mailto:yocto+owner@lists.yoctoproject.org" =
class=3D"">yocto+owner@lists.yoctoproject.org</a><br =
class=3D"">Unsubscribe: <a =
href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
class=3D"">https://lists.yoctoproject.org/g/yocto/unsub</a> [<a =
href=3D"mailto:opensource@keylevel.com" =
class=3D"">opensource@keylevel.com</a>]<br =
class=3D"">-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br class=3D""><br=
 class=3D""></div></blockquote></div><br class=3D""></div></body></html>=

--Apple-Mail=_0DB4F090-A5AE-48BA-B0BA-C965307BFD7F--

